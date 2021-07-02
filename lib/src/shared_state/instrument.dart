
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:motivewave/src/service/connection_id.dart';
import 'package:motivewave/src/shared_state/exchange.dart';
import 'package:motivewave/src/shared_state/instrument_info.dart';
import 'package:motivewave/src/shared_state/workspace.dart';
import 'package:motivewave/src/util/csv.dart';
import 'package:motivewave/src/util/enums.dart';
import 'package:motivewave/src/util/symbol_util.dart';
import 'package:motivewave/src/util/util.dart';
import 'package:motivewave/src/util/extensions.dart';

class Instrument {
  String _symbol, _exchange;
  String underlying, currency, displayMask, title, description, notes,
         sectorId, industryGroupId, tradingHoursID;
  DateTime expires;
  InstrumentType type;
  OptionType optionType;
  double minTick, pointValue, displayMultiplier, strikePrice;

  String _key;
  int _places = -1000; // keeps track of the number of decimal places so we don't have to compute it each time
  final ConnectionID _connectionID;

  Instrument(this._symbol, this._exchange, this.type, this._connectionID, {this.underlying, this.currency, this.expires, this.minTick, this.pointValue
             , this.displayMultiplier, this.displayMask, this.title, this.notes, this.description});

  String get symbol => _symbol;
  set symbol(String sym) { _symbol = sym.toUpperCase(); _key = null; }

  String get exchange => _exchange;
  set exchange(String e) { _exchange = e.toUpperCase(); _key = null; }

  bool get expired => expires == null ? false : now() > expires.millisecondsSinceEpoch;
  int get expiresMillis => expires == null ? 0 : expires.millisecondsSinceEpoch;

  ServiceType get service => _connectionID?.type;

  ConnectionID get connectionID => _connectionID;

  String get key {
    if (_key != null) return _key;
    _key = genKey(symbol, exchange, service);
    return _key;
  }

  double calcPnL(double rawMove, double qty)
  {
    if (qty == 0) return 0;
    rawMove = round(rawMove);
    double pnl = rawMove * qty;
    // For some reason IB seems to set the PLDivisor for stocks on some accounts
    // Ignore pl divisor/point value in these cases

    if (type == InstrumentType.STOCK) return pnl;
    if (type == InstrumentType.OPTION) {
      // Hack: Stock Options come in groups of 100 shares so multiply the pnl by 100
      int size = 100;
      //if (getContractSize() > 0) size = getContractSize();
      pnl *= size;
      // For future options (at least), need to consider the point value
      if (pointValue > 0) {
        pnl = (rawMove*pointValue) * qty;
      }
    }
    else if (pointValue > 0) {
      pnl = (rawMove*pointValue) * qty;
    }
    return pnl;
  }

  double round(double price)
  {
    return (price/minTick).round() * minTick;
  }

  String formatPrice(double price)
  {
    // Check for a custom format
    double tick = minTick;
    if (_places == -1000 ) _places = getDecimalPlaces(tick);
    int p = _places;

    if (displayMultiplier != null) {
      if (displayMultiplier > 0.0000001) {
        price *= displayMultiplier;
      }
      if (displayMultiplier > 0.000001) {
        if (displayMultiplier >= 10000)  p -= 4;
        else if (displayMultiplier >= 1000) p -= 3;
        else if (displayMultiplier >= 100) p -= 2;
        else if (displayMultiplier >= 10) p -= 1;
      }
    }

    // Round the price to the tick
    price = (price/tick).round() * tick;

    if (tick == 0.015625 || tick == 0.03125 || tick == 0.0078125) {
      // Format in 32s
      double number = price.floorToDouble();
      int fraction = (320 * (price - number)).round();
      if (price < 0) {
        number = price.ceilToDouble();
        fraction = (320 * (number - price)).round();
      }
      String append = "";
      if (fraction < 10) append = "00";
      else if (fraction < 100) append = "0";
      if (price < 0 && number == 0) return "-0'" + append + fraction.toString();
      return number.round().toString() + "'" + append + fraction.toString();
    }
    else if (tick == 0.125) {
      double number = price < 0 ? price.ceilToDouble() : price.floorToDouble();
      double fraction = price < 0 ? number - price : price - number;
      if (price < 0 && number == 0) return "-0 " + (fraction*8.0).round().toString() + "/8";
      return number.round().toString() + " " + (fraction*8.0).round().toString() + "/8";
    }
    else if (tick == 0.0078125) {
      double number = price < 0 ? price.ceilToDouble() : price.floorToDouble();
      double fraction = price < 0 ? number - price : price - number;
      if (price < 0 && number == 0) return "-0 " + (fraction*128.0).round().toString() + "/8";
      return number.round().toString() + " " + (fraction*128.0).round().toString() + "/8";
    }
    else if (tick == 0.00390625) {
      double number = price < 0 ? price.ceilToDouble() : price.floorToDouble();
      double fraction = price < 0 ? number - price : price - number;
      if (price < 0 && number == 0) return "-0 " + (fraction*256.0).round().toString() + "/8";
      return number.round().toString() + " " + (fraction*256.0).round().toString() + "/8";
    }
    return price.toStringAsFixed(p);
  }

  static String genKey(String symbol, String exchange, ServiceType service)
  {
    String k = SymbolUtil.replaceBadCharacters(symbol);
    if (service != null && !service.isSymbolUnique()) {
      String e = SymbolUtil.replaceBadCharacters(exchange);
      if (e != "") k += "." + e;
    }
    k = k.toUpperCase();
    if (service != null) k += "." + service.asString();
    return k;
  }
}

class Instruments extends ChangeNotifier with CSV
{
  Workspace _workspace;
  var _all = <Instrument>[];
  var _symbolMap = <String, List<Instrument>>{};
  var _symbolExchangeMap = <String, List<Instrument>>{}; // symbol:exchange
  var _keyMap = <String, Instrument>{};
  bool _unsavedChanges = false;

  Instruments(this._workspace);

  List<Instrument> get all => List.unmodifiable(_all);

  Future<void> save() async
  {
    var f = await _workspace.getConfigFile("instruments.csv");
    if (!_unsavedChanges && f.existsSync()) return;

    var out = f.openWrite();
    var vmap = <String, String>{};
    int counter = 1;
    _all.forEach((instr) {
      counter = map(instr.exchange, vmap, counter);
      counter = map(instr.currency, vmap, counter);
      counter = map(toStr(instr._connectionID), vmap, counter);
      counter = map(encode(instr.minTick), vmap, counter);
      counter = map(encode(instr.pointValue), vmap, counter);
      //counter = map(instr.flagId, map, counter);
    });

    writeMap(out, vmap);
    print("writing instruments: ${_all.length}");
    for(var instr in _all) {
      toCSV(instr, vmap, out);
    }
    await out.flush();
    await out.close();
    _unsavedChanges = false;
  }

  Future<void> load() async
  {
    _all = [];
    _symbolMap = {};
    _symbolExchangeMap = {};
    _keyMap = {};
    _unsavedChanges = false;
    var f = await _workspace.getConfigFile("instruments.csv");
    if (!f.existsSync()) return;

    var map = <String, String>{};
    bool first = true;
    await f.forEachLine((csv) {
      if (first) { map = readMap(csv); first = false; }
      else _add(_fromCSV(csv, map));
    });
    notifyListeners();
  }

  Instrument _fromCSV(String csv, Map<String, String> map)
  {
    List<String> tok = parse(csv);
    if (empty(tok)) return null;
    var conn = ConnectionID.getByID(str(tok[43], map));
    var instr = Instrument(tok[5], str(tok[6], map), fromShortCode(tok[4]), conn);

    instr.underlying = tok[1];
    instr.currency = str(tok[8], map);
    instr.expires = date(tok[15]);
    instr.title = tok[16];
    instr.description = tok[17];
    instr.sectorId = tok[19];
    instr.industryGroupId = tok[20];
    //instr.setTimeZone(tz(tok.get(22)));
    //instr.setTradingHoursID(tok.get(21));
    instr.minTick = toDouble(str(tok[23], map));
    instr.pointValue = toDouble(str(tok[30], map));
    instr.displayMultiplier = toDouble(tok[31]);
    instr.strikePrice = toDouble(tok[33]);
    String opt = tok[34];
    if (opt == "C") instr.optionType = OptionType.CALL;
    else if (opt == "P") instr.optionType = OptionType.PUT;

    if (tok.length > 67) instr.notes = tok[67];

    if (instr.type == InstrumentType.FUTURE && instr.expires == null) {
      instr.expires = SymbolUtil.getExpiryDate(instr.underlying, instr.symbol, instr.service);
    }

    return instr;
  }

  void update(Instrument instr)
  {
    if (instr == null || !_keyMap.containsKey(instr.key)) return;
    _unsavedChanges = true;
  }

  void remove(Instrument instr)
  {
    if (instr == null || !_keyMap.containsKey(instr.key)) return;
    _keyMap.remove(instr.key);

    var list = _symbolMap[instr.symbol];
    if (list != null) list.remove(instr);

    var symExch = instr.symbol + ":" + instr.exchange;
    list = _symbolExchangeMap[symExch];
    if (list != null) list.remove(instr);

    _all.remove(instr);
    _unsavedChanges = true;
  }

  void addAll(List<Instrument> instruments)
  {
    for(var instr in instruments) _add(instr);
    _unsavedChanges = true;
    notifyListeners();
  }

  void add(Instrument instr)
  {
    if (!_add(instr)) {
      if (instr != null) log.warning("Instruments::add() instrument already exists: ${instr.key}");
      return;
    }
    _unsavedChanges = true;
    notifyListeners();
  }

  bool _add(Instrument instr)
  {
    if (instr == null || _keyMap.containsKey(instr.key)) return false;
    _keyMap[instr.key] = instr;

    var list = _symbolMap[instr.symbol];
    if (list == null) _symbolMap[instr.symbol] = [instr];
    else list.add(instr);

    var symExch = instr.symbol + ":" + instr.exchange;
    list = _symbolExchangeMap[symExch];
    if (list == null) _symbolExchangeMap[symExch] = [instr];
    else list.add(instr);

    _all.add(instr);
    return true;
  }

  Instrument findByKey(String key) => _keyMap[key];

  Instrument find(String symbol, [String exchange])
  {
    List<Instrument> list;
    if (!empty(exchange)) list = _symbolExchangeMap[symbol +":" + exchange];
    else list = _symbolMap[symbol];
    if (list == null || list.length == 0) return null;
    return list[0];
  }


  void toCSV(Instrument instr, Map<String, String> map, IOSink out)
  {
    String opt;
    if (instr.optionType == OptionType.CALL) opt = "C";
    else if (instr.optionType == OptionType.PUT) opt = "P";
    String title = instr.title;
    String desc = instr.description;
    if (desc == title) desc = null;
    String und = instr.underlying;
    if (!instr.type.hasUnderlying()) und = null; // 9/18/2018 Underlying is relevant for indices with TrueData.  Its not clear where underlying is applicable so only do stocks/FX for now

    csv(out, [/*instr.id*/ null , und, /*baseSymbol*/null, /*productCode*/ null, instr.type == null ? "" : instr.type.shortCode,
        instr.symbol, str(instr.exchange, map), /*primaryExchange */ null,
        str(instr.currency, map), /*instr.symbolDisplay*/ null, /*instr.symbolData*/ null, /*instr.symbolDir*/ null,
        /*instr.historicalSymbol*/ null, /*instr.historicalExchange*/ null, /*instr.serviceId*/ null, instr.expires,
        title, desc, /*sdesc*/ null, instr.sectorId, instr.industryGroupId, instr.tradingHoursID, /*instr.timeZone*/ null,
        str(encode(instr.minTick), map), /*instr.tickOverride*/ null, /*str(encode(instr.pointSize), map)*/ null,
        /*instr.priceMagnifier*/ null, /*instr.plDivisor*/ null, /*instr.contractSize*/null, /*instr.contractValue*/null,
        str(encode(instr.pointValue), map), instr.displayMultiplier, instr.displayMask,
        instr.strikePrice, opt, /*instr.extendedData*/ null, /*instr.showExtendedData*/ null, /*instr.localDataOnly*/ null, /*instr.intradayData*/ null,
        /*instr.useDefaultCommission*/null, /*instr.baseCost*/null, /*instr.unitCost*/ null, /*instr.unitSize*/ null,
        str(toStr(instr._connectionID), map),
        /*str(instr.realTimeSource == null ? "" : instr.realTimeSource.getPersistString(), map)*/ null,
        /*str(instr.historicalSource == null ? "" : instr.historicalSource.getPersistString(), map)*/ null,
        /*str(instr.newsSource == null ? "" : instr.newsSource.getPersistString(), map)*/ null,
        /*instr.getServiceMap() == null ? "" : instr.getServiceMapConfig()*/ null,
        /*instr.isCustom() ? instr.getCustomDefinition() : ""*/null, /*instr.useContinuousData*/null, /*instr.flagId*/null,
        /*roll == null ? null : roll.getRollMethod()*/null, /*roll == null ? null : roll.getAdjustMethod()*/null,
        /*instr.backFillEnabled*/null, /*instr.resolved*/null, /*MWSettings.isDev() ? instr.commonSymbol : ""*/null,
        /*MWSettings.isDev() ? instr.altCommonSymbol : ""*/null,
        /*instr.useContinuousIntraday*/null, /*roll == null ? null : roll.getDays()*/null, /*instr.contractNumber*/null,
        /*roll == null ? null : roll.isBusinessDays()*/null, /*roll == null ? null : roll.getDOM()*/null,
        /*roll == null ? null : roll.getDOW()*/null, /*roll == null ? null : roll.getWOM()*/null,
        /*bs == null ? null : bs.getTz()*/null, /*bs == null ? null : bs.getMethod()*/null,
        /*bs == null ? null : bs.getStartTime()*/null,
        instr.notes]
    );
  }

  Map<String, String> createMap(List<Instrument> instruments)
  {
    Map<String, String> _map = {};
    int counter = 1;
    for(var instr in instruments) {
      counter = map(instr.exchange, _map, counter);
      //counter = map(instr.primaryExchange, map, counter);
      counter = map(instr.currency, _map, counter);
      counter = map(instr._connectionID == null ? "" : instr._connectionID.toString(), _map, counter);
      //counter = map(instr.realTimeSource == null ? "" : instr.realTimeSource.getPersistString(), map, counter);
      //counter = map(instr.historicalSource == null ? "" : instr.historicalSource.getPersistString(), map, counter);
      //counter = map(instr.newsSource == null ? "" : instr.newsSource.getPersistString(), map, counter);
      counter = map(encode(instr.minTick), _map, counter);
      //counter = map(encode(instr.pointSize), map, counter);
      //counter = map(instr.flagId, map, counter);
    }
    return _map;
  }

}