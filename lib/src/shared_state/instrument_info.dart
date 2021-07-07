
import 'package:intl/intl.dart';
import 'package:motivewave/src/service/connection_id.dart';
import 'package:motivewave/src/service/service.dart';
import 'package:motivewave/src/service/service_home.dart';
import 'package:motivewave/src/shared_state/instrument.dart';
import 'package:motivewave/src/util/enums.dart';
import 'package:motivewave/src/util/util.dart';

class InstrumentInfo
{
  String symbol;
  String? underlying, exchange, title, description, currency="USD", letter, displayMask, sectorId, industryGroupId, _key;
  DateTime? expires;
  double minTick, displayMultiplier=0, pointValue=0, strikePrice=0, priceMagnifier=0;
  ServiceType? serviceType;
  InstrumentType type;
  FuturesCategory? category;
  Instrument? _instr;
  ConnectionID? connectionID;

  InstrumentInfo({this.underlying, required this.symbol, this.exchange, this.title, this.description, this.currency, this.letter, this.displayMask,
    this.sectorId, this.industryGroupId, this.expires, this.minTick=0.01, this.displayMultiplier=0, this.pointValue=0, this.strikePrice=0,
    this.serviceType, required this.type, this.category});

  InstrumentInfo.future(this.serviceType, this.underlying, this.letter, this.symbol, this.exchange, this.expires, this.title,
      this.minTick, this.pointValue, this.displayMultiplier, this.category, this.currency) : type = InstrumentType.FUTURE;
  InstrumentInfo.indicator(this.symbol, this.title, this.currency, this.exchange, this.minTick) : type = InstrumentType.INDICATOR;

  // TODO:
  /*
  if (base.startsWith("/")) base = Util.stripLeading(base, '/');
  // Expiry date should be eod regular hours
  var th = TradingHours.get(SymbolUtil.getFutureTradingHours(base, srvc));
  if (th != null && expires != null) {
    long e = th.getEndOfDay(expires.getTime(), true);
    expires = new Date(e);
  }*/

  bool get expired => expires != null && expires!.isBefore(DateTime.now());

  int get expiresMillis => expires == null ? 0 : expires!.millisecondsSinceEpoch;

  String get key {
    if (_key == null) _key = Instrument.genKey(symbol, exchange, serviceType);
    return _key??"";
  }


  @override
  String toString()
  {
    return (underlying ?? "")  + " " + symbol + " " +(exchange ?? "") + " " + DateFormat('MM/dd/yyyy').format(expires) + " " + (title??"") +
        " min tick: " + minTick.toString() + " point value: " + pointValue.toString();
  }

  void updateOrCreate([ConnectionID? cid])
  {
    var instr = _resolve(cid);
    if (instr != null) {
      bool modified = false;
      if (!empty(exchange) && exchange != instr.exchange) { instr.exchange = exchange; modified = true; }
      if (!empty(type) && type != instr.type) { instr.type = type; modified = true; }
      if (!empty(underlying) && underlying != instr.underlying) { instr.underlying = underlying; modified = true; }
      if (!empty(currency) && currency != instr.currency) { instr.currency = currency; modified = true; }
      if (!empty(expires) && expires != instr.expires) { instr.expires = expires; modified = true; }
      if (!empty(minTick) && minTick != instr.minTick) { instr.minTick = minTick; modified = true; }
      if (!empty(pointValue) && pointValue != instr.pointValue) { instr.pointValue = pointValue; modified = true; }
      if (!empty(displayMultiplier) && displayMultiplier != instr.displayMultiplier) { instr.displayMultiplier = displayMultiplier; modified = true; }
      if (!empty(displayMask) && displayMask != instr.displayMask) { instr.displayMask = displayMask; modified = true; }
      if (!empty(description) && description != instr.description) { instr.description = description; modified = true; }
      if (instr.letter != letter) { instr.letter = letter; modified = true; }
      if (instr.category != category) { instr.category = category; modified = true; }

      if (!modified) return;
      var instruments = ServiceHome.workspace?.instruments;
      if (instruments == null) return;
      instruments.update(instr);
      return;
    }
    toInstrument(cid);
  }

  Instrument? _resolve([ConnectionID? cid])
  {
    var instruments = ServiceHome.workspace?.instruments;
    if (instruments == null) return null;
    return instruments.findByKey(Instrument.genKey(symbol, exchange, cid == null ? serviceType : cid.type));
  }

  Instrument toInstrument([ConnectionID? cid])
  {
    if (cid == null) {
      for(var s in ServiceHome.services) {
        if (s.type.isCompatible(serviceType)) {
          cid = s.info.connectionID;
          break;
        }
      }
    }
    if (_instr != null && cid != null && _instr!.connectionID == cid) return _instr!;
    _instr = _resolve(cid);
    if (_instr != null) return _instr!;
    _instr = Instrument(symbol, exchange, type, cid!, underlying: underlying, currency: currency, expires: expires, minTick: minTick,
                       pointValue: pointValue, title: title, displayMultiplier: displayMultiplier, displayMask: displayMask, description: description);
    var instruments = ServiceHome.workspace?.instruments;
    if (instruments != null) instruments.add(_instr);
    return _instr!;
  }

  double round(double price) => (price/minTick).round() * minTick;

}