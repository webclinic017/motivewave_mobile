import 'dart:async';
import 'dart:io';
import 'dart:isolate';

import 'package:fixnum/fixnum.dart';
import 'package:intl/intl.dart';
import 'package:intl/locale.dart';
import 'package:motivewave/src/common/version.dart';
import 'package:motivewave/src/cqg/WebAPI/webapi_1.pb.dart';
import 'package:motivewave/src/service/ConnectResult.dart';
import 'package:motivewave/src/service/service.dart';
import 'package:motivewave/src/service/service_home.dart';
import 'package:motivewave/src/shared_state/account.dart' as mw;
import 'package:motivewave/src/shared_state/balance.dart' as mw;
import 'package:motivewave/src/shared_state/credentials.dart';
import 'package:motivewave/src/shared_state/instrument.dart';
import 'package:motivewave/src/shared_state/instrument_info.dart';
import 'package:motivewave/src/shared_state/market_data.dart';
import 'package:motivewave/src/shared_state/ticker.dart';
import 'package:motivewave/src/util/enums.dart';
import 'package:motivewave/src/util/symbol_util.dart';
import 'package:motivewave/src/util/util.dart';
import 'package:web_socket_channel/io.dart';

class CQGService extends Service {
  static const String UAT_HOST_URI = "wss://uatapi.cqg.com:443";
  static const String DEMO_HOST_URI = "wss://demoapi.cqg.com:443";
  static const String LIVE_HOST_URI = "wss://api.cqg.com:443";
  static const int DOM_INC=10;
  static const String CLIENT_ID = "MotiveWaveWAPI";
  static const String AMP_DEMO_CLIENT_ID = "AMPConnect";

  static const int LOOKUP_TIMEOUT = 30000;
  static const int HIST_TIMEOUT = 120000;

  // Spawn the isolate to manage the CQG Web Socket
  Future<void> startIsolate() async
  {
    if (out != null) return; // already spawned
    out = await spawnIsolate(cqgIsolate, onMessage);
  }
}

void cqgIsolate(SendPort out)
{
  var input = ReceivePort();
  out.send(input.sendPort);
  var proxy = CQGProxy(out);
  input.listen((data) {
    if (!(data is SrvcMessage)) return;
    SrvcMessage msg = data;
    print("cqgIsolate() message: ${msg.type}");
    switch(msg.type) {
      case SrvcMsgType.SERVICE_TYPE: proxy.srvcType = msg.params; break;
      case SrvcMsgType.CONNECT: proxy.connect(msg.params); break;
      case SrvcMsgType.ACCOUNTS: proxy.requestAccounts(); break;
      case SrvcMsgType.BALANCES: proxy.requestBalances(); break;
      case SrvcMsgType.SUBSCRIBE: proxy.subscribe(msg.params[0], msg.params[1], msg.params[2], msg.params[3]); break;
      case SrvcMsgType.RETURN_INSTR:
        String symbol = msg.params[0];
        //String exch = msg.params[1]; // not needed for CQG
        InstrumentInfo instr = msg.params[2];
        var future = proxy.req2Instr[symbol];
        if (future != null) future.complete(instr);
        else log.warning("request not found for: $symbol");
        break;


    }
  });
}

class CQGProxy
{
  static const String UAT_HOST_URI = "wss://uatapi.cqg.com:443";
  static const String DEMO_HOST_URI = "wss://demoapi.cqg.com:443";
  static const String LIVE_HOST_URI = "wss://api.cqg.com:443";
  static const int DOM_INC=10;
  static const String CLIENT_ID = "MotiveWaveWAPI";
  static const String AMP_DEMO_CLIENT_ID = "AMPConnect";

  var clientId = CLIENT_ID; // TODO: add switch for AMP
  IOWebSocketChannel channel;
  Credentials credentials;
  SendPort out;
  bool connected = false;
  int reqCounter = 0;
  int baseTime;
  Map<int, ContractMetadata> id2Contract = {};
  Map<String, ContractMetadata> symbol2Contract = {};
  Map<int, InstrumentInfo> id2Instr = {};
  Map<String, LastData> symbol2Last = {};
  List<String> badSymbols = [];
  Map<int, Completer<InformationReport>> req2InfoRpt = {};
  Map<String, Completer<InstrumentInfo>> req2Instr = {};
  ServiceType srvcType;

  int nextReqId() { return ++reqCounter; }

  CQGProxy(this.out)
  {
    SymbolUtil.init();
  }

  void connect(Credentials c) async
  {
    print("connect: ${c.username} ${c.password}");

    var url = LIVE_HOST_URI;
    if (c.connection == "DEMO") url = DEMO_HOST_URI;
    else if (c.connection == "UAT") url = UAT_HOST_URI;

    channel = IOWebSocketChannel.connect(url);

    // Send the logon message
    var logon = Logon(userName: c.username,
      password: c.password,
      clientAppId: clientId,
      clientVersion: "1.0",
      maxCollapsingLevel: RealTimeCollapsing_Level.NONE.value,
      dropConcurrentSession: true,
      protocolVersionMajor: ProtocolVersionMajor.PROTOCOL_VERSION_MAJOR.value,
      protocolVersionMinor: ProtocolVersionMinor.PROTOCOL_VERSION_MINOR.value,
    );
    sendMsg(ClientMsg(logon: logon));

    connected = false;
    listen();
  }

  void requestAccounts() async
  {
    int reqId = nextReqId();
    log.info("CQGService::loadAccounts() loading accounts");
    sendMsg(ClientMsg(informationRequest: [InformationRequest(id: reqId, subscribe: true, accountsRequest: AccountsRequest())]));
  }

  void requestBalances() async
  {
    // Load Balances
    int reqId = nextReqId();
    var msg = ClientMsg(informationRequest: [InformationRequest(id: reqId, subscribe: true, lastStatementBalancesRequest: LastStatementBalancesRequest())]);
    sendMsg(msg);
  }

  void subscribe(List<InstrumentInfo> l1Added, List<InstrumentInfo> l1Removed, List<InstrumentInfo> l2Added, List<InstrumentInfo> l2Removed) async
  {
    var msg = ClientMsg();
    for(var tkr in l1Added) {
      if (l2Added.contains(tkr)) continue; // handled by subscribe l2 below
      await updateSubscription(tkr, MarketDataSubscription_Level.TRADES_BBA_VOLUMES.value, msg);
    }
    for(var tkr in l1Removed) {
      l2Removed.remove(tkr);
      await updateSubscription(tkr, MarketDataSubscription_Level.NONE.value, msg);
    }
    for(var tkr in l2Added) {
      await updateSubscription(tkr, MarketDataSubscription_Level.TRADES_BBA_DOM.value, msg);
    }
    for(var tkr in l2Removed) {
      await updateSubscription(tkr, MarketDataSubscription_Level.TRADES_BBA_VOLUMES.value, msg);
    }
    sendMsg(msg);
  }

  Future<void> updateSubscription(InstrumentInfo instr, int level, ClientMsg msg) async
  {
    String symbol = instr.symbol.toUpperCase();
    var contract = await resolveContract(symbol);
    if (contract == null) {
      log.warning("CQGService::updateSubscription() contract not found: " + symbol);
      return;
    }
    updateInformation(instr); // Make sure the min tick, point value and expiry date are correct
    if (instr.expired) {
      log.warning("CQGProxy::updateSubscription() instrument is expired: ${instr.symbol}");
      return;
    }

    // Make sure this ticker is registered.
    // If the ticker gets deleted, it may not be removed from this map.
    id2Instr[contract.contractId] = instr;
    msg.marketDataSubscription.add(MarketDataSubscription(contractId: contract.contractId, level: level, includePastQuotes: true, includeDiscretionaryQuotes: true));
  }

  InstrumentInfo toInfo(ContractMetadata c)
  {
    if (c == null) return null;
    String fullSym = c.contractSymbol;
    String grp = c.instrumentGroupName;
    String sym = fullSym.substring(fullSym.lastIndexOf('.')+1);
    String underlying = grp.substring(grp.lastIndexOf('.')+1);
    String desc = c.description;
    String exch = SymbolUtil.resolveCQGExchange(underlying);

    var type = InstrumentType.FUTURE;
    if (fullSym.startsWith("S.")) type = InstrumentType.STOCK;
    if (fullSym.startsWith("X.")) type = InstrumentType.FOREX;
    if (fullSym.startsWith("C.") || fullSym.startsWith("P.")) type = InstrumentType.FUTURE_OPTION;

    var info = InstrumentInfo(symbol: sym, type: type, exchange: exch, currency: c.currency,
      serviceType: srvcType, underlying: underlying, description: c.description, minTick: c.tickSize,);
    if (type == InstrumentType.FOREX) {
    }
    else if (type == InstrumentType.FUTURE) {
      if (c.hasLastTradingDate()) info.expires = DateTime.fromMicrosecondsSinceEpoch(baseTime + c.lastTradingDate.toInt(), isUtc: true);
      if (c.tickSize > 0) info.pointValue = roundDouble(c.tickValue/c.tickSize, 4);
    }
    /*else if (type == InstrumentType.FUTURE_OPTION) {
      info.optionType = fullSym.startsWith("C.") ? Enums.OptionType.CALL : Enums.OptionType.PUT);
      if (contract.getLastTradingDate() != 0) instr.setExpiryDate(new Date(baseTime + contract.getLastTradingDate()));
      if (contract.getTickSize() > 0) instr.setPointValue(Util.roundDouble(contract.getTickValue()/contract.getTickSize(), 4));
      // Get the strike price, this is a hack
      if (desc.lastIndexOf(" at ") > 0) {
        String strikeTxt = Util.trim(desc.substring(desc.lastIndexOf(" at ") + 4));
        if (Util.isAllDigits(strikeTxt)) {
          float strike = convertPrice(Util.toInt(strikeTxt), contract, instr);
          instr.setStrikePrice((double)strike);
          //System.out.println(instr.getStrikePrice());
        }
      }
    }*/
    return info;
  }

  void updateInformation(InstrumentInfo instr) async
  {
    String symbol = instr.symbol;
    var contract = await resolveContract(symbol);
    if (contract == null) {
      log.warning("CQGService::updateInformation() contract not found: " + symbol);
      return;
    }

    // Double check to make sure that the values set locally are correct
    bool modified=false;
    if (!empty(contract.description) && contract.description != instr.description) {
      instr.description = contract.description;
      modified=true;
    }
    if (!empty(contract.currency) && contract.currency != instr.currency) {
      instr.currency = contract.currency;
      modified=true;
    }
    if (contract.tickSize > 0) {
      double pv = roundDouble(contract.tickValue/contract.tickSize, 4);
      if (pv != instr.pointValue && instr.type != InstrumentType.FOREX) {
        log.warning("CQGService::updateInformation() $symbol updating point value: ${instr.pointValue} to: $pv");
        instr.pointValue = pv;
        modified=true;
      }
      if (contract.tickSize != instr.minTick) {
        log.warning("CQGService::updateInformation() $symbol updating tick size: ${instr.minTick} to: ${contract.tickSize}");
        instr.minTick = contract.tickSize;
        modified=true;
      }
    }
    if (contract.hasLastTradingDate()) {
      int expires = baseTime + contract.lastTradingDate.toInt();
      if (instr.expiresMillis != expires) {
        String exp1 = formatMMDDYYYY(instr.expires);
        String exp2 = formatMMDDYYYY(DateTime(expires));
        if (exp1 != exp2) {
          log.warning("CQGService::updateInformation() $symbol expiry date: $exp1 to: $exp2");
          instr.expires = DateTime(expires);
          modified = true;
        }
      }
    }

    if (modified) {
      // Tell the main thread that the information was updated
      send(SrvcResultType.UPDATE_INSTR, instr);
    }
  }

  Future<InstrumentInfo> resolveInstr(ContractMetadata c) async
  {
    if (c == null) return null;
    var instr = id2Instr[c.contractId];
    if (instr != null) return instr;
    // Check with main thread to see if it exists
    String fullSym = c.contractSymbol;
    String sym = fullSym.substring(fullSym.lastIndexOf('.')+1);
    var sync = Completer<InstrumentInfo>();
    req2Instr[sym] = sync;
    send(SrvcResultType.REQUEST_INSTR, sym);
    try {
      instr = await sync.future.timeout(Duration(milliseconds: CQGService.LOOKUP_TIMEOUT));
      if (sync.isCompleted && instr != null) {
        id2Instr[c.contractId] = instr;
        return instr;
      }
    }
    catch(te) {
      log.warning("resolveInstr() $sym timeout occurred");
      return null;
    }

    // if it does not exist, create it from the contract and tell the main thread to add it to the Instruments
    instr = toInfo(c);
    id2Instr[c.contractId] = instr;
    // Inform the main thread about a missing instrument
    send(SrvcResultType.UPDATE_INSTR, instr);
    return instr;
  }

  void _register(ContractMetadata c)
  {
    if (c == null) return;
    id2Contract[c.contractId] = c;
    String fullSym = c.contractSymbol;
    String sym = fullSym.substring(fullSym.lastIndexOf('.')+1);
    symbol2Contract[sym] = c;
  }

  // checks the local map and requests the contract data from the server if not found
  Future<ContractMetadata> resolveContract(String symbol) async
  {
    var c = symbol2Contract[symbol];
    if (c != null) return c;

    // Is this a "bad" symbol
    if (badSymbols.contains(symbol)) return null;
    int reqId = nextReqId();
    var sync = Completer<InformationReport>();
    req2InfoRpt[reqId] = sync;
    sendMsg(ClientMsg(informationRequest: [InformationRequest(id: reqId, symbolResolutionRequest: SymbolResolutionRequest(symbol: symbol))]));
    try {
      var rpt = await sync.future.timeout(Duration(milliseconds: CQGService.LOOKUP_TIMEOUT));
      if (sync.isCompleted && rpt.hasContractMetadataReport()) {
        _register(rpt.contractMetadataReport.contractMetadata);
      }
    }
    catch(te) {
      log.warning("getContract() $symbol timeout occurred");
      return null;
    }

    c = symbol2Contract[symbol];
    if (c == null) {
      if (!badSymbols.contains(symbol)) badSymbols.add(symbol); // Bad symbol?
    }
    return c;
  }

  void send(SrvcResultType type, [dynamic value])
  {
    if (out == null) return;
    out.send(ResultMessage(type, value));
  }

  void sendMsg(ClientMsg msg)
  {
    if (channel == null) return;
    channel.sink.add(msg.writeToBuffer());
  }

  void listen() async
  {
    await for (var val in channel.stream) {
      var msg = ServerMsg.fromBuffer(val);
      print(msg.writeToJson());
      if (msg.hasLogonResult()) {
        var base = DateFormat("yyyy-MM-dd'T'HH:mm:ss").parse(msg.logonResult.baseTime, true);
        baseTime = base.millisecondsSinceEpoch;
        if (msg.logonResult.resultCode == LogonResult_ResultCode.SUCCESS.value) {
          connected = true;
          send(SrvcResultType.CONNECTED);
        }
        else {
          channel.sink.close(WebSocketStatus.normalClosure);
          send(SrvcResultType.CONNECT_FAILED, msg.logonResult.textMessage);
          break; // End loop
        }
      }
      if (msg.hasPing()) { // Heartbeat
        print("sending pong");
        sendMsg(ClientMsg(pong: Pong(pingUtcTime: msg.ping.pingUtcTime, token: msg.ping.token, pongUtcTime: Int64(now()))));
      }
      if (msg.informationReport.length > 0) {
        for(var rpt in msg.informationReport) onInfoReport(rpt);
      }
      if (msg.realTimeMarketData != null) {
        for(var rpt in msg.realTimeMarketData) {
          onMarketData(rpt);
        }
      }
    }
  }

  void onMarketData(RealTimeMarketData rpt)
  {
    if (!connected) return;
    var contract = id2Contract[rpt.contractId];
    var instr = id2Instr[rpt.contractId];
    if (contract == null || instr == null) {
      log.warning("info for contract not found! ${contract.contractSymbol}");
      return;
    }

    var quotes = <MarketData>[];
    var key = instr.key;
    var last = symbol2Last[key];
    if (last == null) last = symbol2Last[key] = LastData();
    int received = now();
    int lastTs = received;
    double bid = last.bid, bidSize = last.bidSize, ask = last.ask, askSize = last.askSize;
    var bidPrices = <double>[], bidSizes = <double>[], askPrices = <double>[], askSizes = <double>[];
    double high, low, open, settle, prevClose, dayVolume;

    for(var q in rpt.quote) {
      int t = q.quoteUtcTime.toInt();
      if (t > 0) lastTs = baseTime + t;
      var price = convertPrice(q.scaledPrice, contract, instr);
      var vol = q.scaledVolume.toDouble();

      if (q.type == Quote_Type.TRADE.value) {
        var cond = q.salesCondition;
        bool atAsk = price >= ask;
        if (q.hasSalesCondition() && (cond == Quote_SalesCondition.BUY_SIDE_AGGRESSOR.value || cond == Quote_SalesCondition.SELL_SIDE_AGGRESSOR.value)) {
          atAsk = cond == Quote_SalesCondition.BUY_SIDE_AGGRESSOR.value;
        }
        post(TimeAndSaleUpdate(lastTs, price, vol, bid: bid, bidSize: bidSize, ask: ask, askSize: askSize, atAsk: atAsk, received: received, key: key));
      }
      else if (q.type == Quote_Type.BESTBID.value) {
        if (price != 0) bid = price;
        if (vol > 0) bidSize = vol;
      }
      else if (q.type == Quote_Type.BESTASK.value) {
        if (price != 0) ask = price;
        if (vol > 0) askSize = vol;
      }
      else if (q.type == Quote_Type.BID.value) { // TODO: this is for the DOM

      }
      else if (q.type == Quote_Type.ASK.value) { // TODO: this is for the DOM

      }
      else if (q.type == Quote_Type.SETTLEMENT.value) {
        settle = price;
      }

      if (q.indicator.length > 0) {
        for(var ind in q.indicator) {
          if (ind == Quote_Indicator.HIGH.value) high = price;
          if (ind == Quote_Indicator.LOW.value) low = price;
          if (ind == Quote_Indicator.OPEN.value) open = price;
        }
      }
    }

    if (bid != null || ask != null || bidSize != null || askSize != null) {
      post(BidAskUpdate(bid: bid, bidSize: bidSize, ask: ask, askSize: askSize, received: received, key: key));
    }

    // Save these for the next market data update
    last.bid = bid;
    last.bidSize = bidSize;
    last.ask = ask;
    last.askSize = askSize;

    if (rpt.isSnapshot) {
      for (var mv in rpt.marketValues) {
        high = convertPrice(mv.scaledHighPrice, contract, instr);
        low = convertPrice(mv.scaledLowPrice, contract, instr);
        open = convertPrice(mv.scaledOpenPrice, contract, instr);
        prevClose = convertPrice(mv.scaledYesterdayClose, contract, instr);
        settle = convertPrice(mv.scaledSettlement, contract, instr);
        if (settle == 0) settle = convertPrice(mv.scaledYesterdaySettlement, contract, instr);
        dayVolume = mv.scaledTotalVolume.toDouble();
      }
    }

    if (high != null || low != null || open != null || settle != null || dayVolume != null || prevClose != null) {
      post(SummaryUpdate(high: high, low: low, open: open, settle: settle, dayVolume: dayVolume, prevClose: prevClose, received: received, key: key));
    }
  }

  void post(MarketData md)
  {
    send(SrvcResultType.MARKET_DATA, md);
  }

  double convertPrice(int price, ContractMetadata c, InstrumentInfo instr)
  {
    double p = price*c.correctPriceScale;
    if (instr.priceMagnifier > 0) p *= instr.priceMagnifier;
    return instr.round(p);
  }

  void onInfoReport(InformationReport rpt) {

    if (rpt.statusCode != InformationReport_StatusCode.SUCCESS.value) {
      error(rpt.id, rpt.statusCode, rpt.textMessage);
    }

    if (rpt.hasAccountsReport() && rpt.accountsReport.brokerage.isNotEmpty) {
      List<mw.Account> accounts = [];
      for(var broker in rpt.accountsReport.brokerage) {
        for(var sales in broker.salesSeries) {
          for(var acct in sales.account) {
            accounts.add(mw.Account(id: acct.accountId.toString(), name: acct.name, broker: broker.name));
          }
        }
      }
      send(SrvcResultType.ACCOUNTS, accounts);
    }
    if (rpt.hasLastStatementBalancesReport() && rpt.lastStatementBalancesReport.balance.isNotEmpty) {
      List<mw.Balance> balances = [];
      for(var bal in rpt.lastStatementBalancesReport.balance) {
        var balance = mw.Balance(bal.accountId.toString(), bal.currency);
        balance.available = bal.balance;
        balance.totalValue = bal.totalValue;
        balance.openTradeEquity = bal.ote;
        balance.initialMargin = bal.initialMargin;
        balances.add(balance);
      }
      send(SrvcResultType.BALANCES, balances);
    }

    var c = req2InfoRpt[rpt.id];
    if (c != null) {
      c.complete(rpt);
    }
  }

  void error(int reqId, int code, String msg)
  {
    log.warning("CQGService::error reqId: $reqId code: $code message: $msg");
  }

}
