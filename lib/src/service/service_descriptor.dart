import 'package:flutter/cupertino.dart';
import 'package:motivewave/src/shared_state/exchange.dart';
import 'package:motivewave/src/shared_state/instrument.dart';
import 'package:motivewave/src/shared_state/instrument_info.dart';
import 'package:motivewave/src/shared_state/watchlist.dart';
import 'package:motivewave/src/util/util.dart';

import '../util/enums.dart';

class ServiceDescriptor {

  ServiceDescriptor(this.type, this.label, {this.help, this.disclaimer, this.demoUrl, this.liveUrl});
  
  ServiceType type;
  String? demoUrl, liveUrl;
  String? label, help, disclaimer;

  bool get supportsFullSearch => true;
  bool get supportsSearchDescription => true;
  bool get supportsSearchExchange => true;
  bool get supportsSearchType => true;
  bool get supportsOrders => true;
  bool get supportsCurrency => true;
  bool get supportsExchange => true;
  List<String> get chartInstruments => ["AAPL", "MSFT", "IBM", "AXP", "F", "GE", "HPQ", "GOOGL", "ORCL", "INTC", "AMZN", "EBAY", "C"];
  List<InstrumentType> get supportedTypes => [InstrumentType.STOCK, InstrumentType.INDEX];
  bool supports(InstrumentType type) {
    var types = supportedTypes;
    if (types == null) return false;
    for(var t in types) {
      if (t == type) return true;
    }
    return false;
  }
  bool get supportsConnection => true;
  bool get requiresAuthentication => false;
  bool get supportsUsername => false;
  bool get supportsPassword => false;
  bool get supportsApiKey => false;
  bool get apiKeyRequired => true;
  bool get supportsAPISecret => false;
  bool get supportsConnectionChoice => false;

  // Labels for the login screen
  String get loginHeader => "A password is required to access your account.  Please enter your password in the field below and press the <b>Connect</b> button.";
  String get apiKeyLabel => "API Key";
  String get apiSecretLabel => "API Secret";
  String get usernameLabel => "User Id";
  String get passwordLabel => "Password";
  String get connectionLabel => "Connection";

  List<NVP> get connections => []; // Demo, Live etc

  List<TIF> get supportedTIFs => [TIF.DAY, TIF.GTC];
  bool get supportsOSO => false; // One Submits other, parent child orders
  bool get supportsOCO => false; // One Cancels Other
  bool get supportsBalances => false; // typical in Crypto Brokers

  bool supportsLevel1(Instrument instr) => true; // Do we need this?
  bool supportsLevel2(Instrument instr) => false;
  bool supportsMBO(Instrument instr) => false;
  bool supportsL2MarketMakers(Instrument instr) => false;

  bool supportsTickHistory(Instrument instr) => false;

  List<int> supportedBarSizes(Instrument instr) => [1,5,30,1440];

  List<Exchange> get exchanges => [];
  List<InstrumentInfo> get defaultInstruments => [];
  List<InstrumentInfo> get suggestions => [];
  List<WatchList> get watchlists => [];

  @protected
  WatchList createFuturesWL(String name, List<InstrumentInfo> symbols, FuturesCategory category)
  {
    List<String> baseSet = [];
    List<String> list = [];
    for(var sym in symbols) {
      if (sym.underlying == null) continue;
      if (sym.category != category) continue;
      if (baseSet.contains(sym.underlying)) continue; // Just add the first symbol
      baseSet.add(sym.underlying!);
      list.add(Instrument.genKey(sym.symbol, sym.exchange, sym.serviceType));
    }
    return WatchList.simple(name, list);
  }
}