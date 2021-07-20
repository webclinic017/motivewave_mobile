import 'dart:async';
import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:motivewave/src/screens/login_screen.dart';
import 'package:motivewave/src/service/ConnectResult.dart';
import 'package:motivewave/src/service/connection_info.dart';
import 'package:motivewave/src/service/service_descriptor.dart';
import 'package:motivewave/src/service/service_home.dart';
import 'package:motivewave/src/service/service_info.dart';
import 'package:motivewave/src/shared_state/instrument.dart';
import 'package:motivewave/src/shared_state/instrument_info.dart';
import 'package:motivewave/src/shared_state/market_data.dart';
import 'package:motivewave/src/shared_state/ticker.dart';
import 'package:motivewave/src/shared_state/account.dart';
import 'package:motivewave/src/shared_state/balance.dart';
import 'package:motivewave/src/shared_state/bar.dart';
import 'package:motivewave/src/shared_state/credentials.dart';
import 'package:motivewave/src/shared_state/data_request.dart';
import 'package:motivewave/src/shared_state/depth_book.dart';
import 'package:motivewave/src/shared_state/order.dart';
import 'package:motivewave/src/shared_state/tick.dart';
import 'package:motivewave/src/shared_state/workspace.dart';
import 'package:motivewave/src/util/enums.dart';
import 'package:motivewave/src/util/util.dart';

class Service {
  final ServiceInfo info;
  final ServiceDescriptor descriptor;
  final Workspace workspace;
  Map<String, Account> accountMap = {};
  List<Account> accounts = [];
  bool connected = false;
  Map<Ticker, DepthBook> bookMap = {};
  List<Ticker> level1List = [];
  List<Ticker> level2List = [];
  SendPort? out;

  int _pendingUpdates=0;
  List<Ticker> _level1BeforeUpdate = [];
  List<Ticker> _level2BeforeUpdate = [];

  Service(this.workspace, this.info, this.descriptor);

  ServiceType get type => descriptor.type;

  void connect(BuildContext ctx) async
  {
    if (descriptor.requiresAuthentication) {
      Future.microtask(() =>
        Navigator.pushReplacement(ctx, MaterialPageRoute(builder: (context) => LoginScreen(this))));
    }
    else {
      connected = false;
      var res = await doConnect(Credentials());
      if (res.success) {
        onConnected();
      }
      else {
        print("not connected! ${res.message}");
      }
    }
  }

  var loginCompleter = Completer<ConnectResult>();
  var searchCompleter = Completer<List<InstrumentInfo>>();

  Future<void> startIsolate() async => { };

  void onMessage(dynamic msg)
  {
    if (!(msg is ResultMessage)) {
      print("service::onMessage() not a result message! $msg");
      return;
    }
    var p = msg.params;

    //print("service::onMessage() ${msg.type} ${msg.params}");
    switch(msg.type) {
      case SrvcResultType.CONNECTED:
        loginCompleter.complete(ConnectResult(true)); break;
      case SrvcResultType.CONNECT_FAILED:
        loginCompleter.complete(ConnectResult(false, p)); break;
      case SrvcResultType.ACCOUNTS:
        List<Account> accounts = msg.params;
        for(var acct in accounts) acct.conn = info.connectionID;
        ServiceHome.accounts.update(msg.params, info.connectionID);
        break;
      case SrvcResultType.BALANCES:
        List<Balance> balances = msg.params;
        for(var bal in balances) bal.conn = info.connectionID;
        ServiceHome.balances.update(balances, info.connectionID);
        break;
      case SrvcResultType.REQUEST_INSTR: // Request to resolve an instrument
        String symbol = msg.params;
        //String exch = p.length > 1 ? p[1] : null;
        String key = Instrument.genKey(symbol, null, type);
        var instr = workspace.instruments.findByKey(key);
        send(SrvcMsgType.RETURN_INSTR, [symbol, null, instr?.toInfo()]);
        break;
      case SrvcResultType.UPDATE_INSTR: // Request to resolve an instrument
        InstrumentInfo? info = msg.params;
        if (info != null) info.updateOrCreate(info.connectionID);
        break;
      case SrvcResultType.MARKET_DATA:
        onMarketData(p);
        break;
      case SrvcResultType.SEARCH_RESULT:
        print("completing search result: ");
        searchCompleter.complete(p);
        break;
    }
  }

  void onMarketData(MarketData md)
  {
    var tkr = workspace.tickers.byKey(md.key);
    if (tkr == null) {
      log.warning("onMarketData() ticker not found! ${md.key}");
      return;
    }
    md.consume(tkr);
  }

  @override
  Future<ConnectResult> doConnect(Credentials c) async
  {
    loginCompleter = Completer<ConnectResult>();
    await startIsolate();
    send(SrvcMsgType.SERVICE_TYPE, type);
    send(SrvcMsgType.CONNECT, c);
    return loginCompleter.future;
  }

  void onConnected()
  {
    connected = true;
    subscribeAll();
    reqAccounts();
    reqBalances();
    reqOrders();
    reqPositions();
    reqTradeHistory();
  }

  Future<List<InstrumentInfo>> search(String? symbol, String? description,
      InstrumentType? type, String? currency, String? exchange)  async
  {
    var instruments = <InstrumentInfo>[];
    if (symbol != null) symbol = symbol.toUpperCase();

    for(var instr in workspace.instruments.all) {
      if (instr.expired) continue;
      if (type != null && instr.type != type) continue;
      if (!empty(exchange) && exchange != instr.exchange) continue;
      if (!empty(symbol) && !instr.symbol.startsWith(symbol!)) continue;
      if (!empty(description)) {

      }
      instruments.add(instr.toInfo());
    }

    if (!empty(symbol) || !empty(description) || !empty(exchange)) {
      var result = await _doSearch(symbol, description, type, currency, exchange);
      for (var i in result) {
        if (!instruments.contains(i)) {
          instruments.add(i);
        }
      }
    }
    // Sort by symbol
    instruments.sort((i1, i2) => i1.symbol.compareTo(i2.symbol));
    return instruments;
  }

  Future<List<InstrumentInfo>> _doSearch(String? symbol, String? description,
      InstrumentType? type, String? currency, String? exchange)  async
  {
    searchCompleter = Completer<List<InstrumentInfo>>();
    send(SrvcMsgType.SEARCH, [symbol, description, type, currency, exchange]);
    return searchCompleter.future.timeout(Duration(milliseconds: 5000));
  }

  void reqAccounts() { send(SrvcMsgType.ACCOUNTS); }
  void reqBalances() { send(SrvcMsgType.BALANCES); }
  void reqOrders() { send(SrvcMsgType.ORDERS); }
  void reqPositions() { send(SrvcMsgType.POSITIONS); }
  void reqTradeHistory() { send(SrvcMsgType.TRADES); }

  void placeOCO(List<Order> orders) {}
  void placeOrder(Order order) {}
  void modifyOrder(Order order) {}
  void cancelOrder(Order order) {}

  void send(SrvcMsgType type, [dynamic params])
  {
    if (out == null) return;
    print("sending message: $type $params");
    out!.send(SrvcMessage(type, params));
  }

  List<Bar> getHistoricalBars(DataRequest req, DateTime start, DateTime end) => [];
  List<Tick> getTicks(DataRequest req, DateTime start, DateTime end) => [];

  void subscribeL1(Ticker tkr)
  {
    if (!level1List.contains(tkr)) level1List.add(tkr);
  }

  void unsubscribeL1(Ticker tkr) => level1List.remove(tkr);

  void subscribeL2(Ticker tkr)
  {
    if (!level2List.contains(tkr)) level2List.add(tkr);
  }

  void unsubscribeL2(Ticker tkr) => level2List.remove(tkr);

  void beginUpdate()
  {
    _pendingUpdates++;
    if (_pendingUpdates == 1) {
      // Keeps track of changes since the update began
      _level1BeforeUpdate = [...level1List];
      _level2BeforeUpdate = [...level2List];
    }
  }

  void endUpdate()
  {
    _pendingUpdates--;
    if (_pendingUpdates > 0) return;
    _pendingUpdates = 0;
    if (!connected) { print("endUpdate::not connected!"); return; }

    // Determine what has changed
    var level1 = [...level1List];
    var prevLevel1 = [..._level1BeforeUpdate];
    var level2 = [...level2List];
    var prevLevel2 = [..._level2BeforeUpdate];

    // Is this sort necessary?  Removing for now
    /*level1.sort();
    prevLevel1.sort();
    level2.sort();
    prevLevel2.sort(); */

    var l1Added = <Ticker>[];
    for(var tkr in level1) {
      if (!prevLevel1.contains(tkr)) l1Added.add(tkr);
    }
    var l1Removed = <Ticker>[];
    for(var tkr in prevLevel1) {
      if (!level1.contains(tkr)) l1Removed.add(tkr);
    }
    var l2Added = <Ticker>[];
    for(var ticker in level2) {
      if (!prevLevel2.contains(ticker)) l2Added.add(ticker);
    }
    var l2Removed = <Ticker>[];
    for(var ticker in prevLevel2) {
      if (!level2.contains(ticker)) l2Removed.add(ticker);
    }

    // Do we need to make any changes?
    if (l1Added.isEmpty && l1Removed.isEmpty && l2Added.isEmpty && l2Removed.isEmpty) return;

    _subscribe(l1Added, l1Removed, l2Added, l2Removed);
  }

  bool get pendingUpdate => _pendingUpdates > 0;

  void subscribeAll()
  {
    if (pendingUpdate) return;
    _subscribe(level1List, [], level2List, []);
  }

  void _subscribe(List<Ticker> l1Added, List<Ticker> l1Removed, List<Ticker> l2Added, List<Ticker> l2Removed)
  {
    // Convert Ticker to InstrumentInfo
    send(SrvcMsgType.SUBSCRIBE, [_toInfoList(l1Added), _toInfoList(l1Removed), _toInfoList(l2Added), _toInfoList(l2Removed)]);
  }

  List<InstrumentInfo> _toInfoList(List<Ticker> tickers)
  {
    var infos = <InstrumentInfo>[];
    for(var tkr in tickers) infos.add(tkr.instrument.toInfo());
    return infos;
  }
}

enum SrvcMsgType {
  CONNECT, DISCONNECT, SUBSCRIBE, ACCOUNTS, BALANCES, POSITIONS, ORDERS, TRADES, HIST_BARS, TICKS, SEARCH,
  PLACE_ORDER, PLACE_OCO, MODIFY_ORDER, CANCEL_ORDER, RETURN_INSTR, SERVICE_TYPE
}

enum SrvcResultType {
  CONNECTED, CONNECT_FAILED, ACCOUNTS, BALANCES, REQUEST_INSTR, UPDATE_INSTR, MARKET_DATA, SEARCH_RESULT
}

class SrvcMessage {
  final SrvcMsgType type;
  final dynamic params;

  SrvcMessage(this.type, [this.params]);
}

class ResultMessage {
  final SrvcResultType type;
  final dynamic params;

  ResultMessage(this.type, [this.params]);
}

// Used to keep track of the last values reported for an instrument
// These can fill in quote information and help to determine if a trade was at the ask price
class LastData
{
  double price=0, bid=0, bidSize=0, ask=0, askSize=0, volume=0;
  int ts=0;
}
