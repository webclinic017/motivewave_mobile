
// Utility method to convert a string to an enum
import 'package:motivewave/src/util/util.dart';

T? toEnum<T>(String? val, List<T> values, [T? def])
{
  if (val == null) return def;
  for(var d in values) {
    if (d != null && d.asString() == val) return d;
  }
  return def;

}

extension StringToEnum on String {
  T? toEnum<T>(List<T> list) {
    for(var d in list) {
      if (d != null && d.asString() == this) return d;
    }
    return null;
  }
}

// Utility method to convert an enum to a string
extension EnumAsString on Object {
  String asString() => toString().split('.').last;
}
// Service Types
enum ServiceType {
  CQG,
  RITHMIC,
  GOOGLE,
  BARCHART
}

extension ServiceTypeExt on ServiceType {
  bool isSymbolUnique() => [ServiceType.CQG].contains(this);
  bool isCQG() => [ServiceType.CQG].contains(this);
  bool isRithmic() => [ServiceType.RITHMIC].contains(this);
  bool is2DigitYear() => [ServiceType.CQG].contains(this);
  bool isCompatible(ServiceType type) {
    if (type == this) return true;
    if (isCQG() && type.isCQG()) return true;
    return isRithmic() && type.isRithmic();
  }
}

enum FuturesCategory {
  CURRENCY, ENERGY, FINANCIAL, GRAIN, INDEX, MEAT, METAL, SOFT, EUREX
}

enum InstrumentType {
  STOCK,
  FUTURE,
  INDEX,
  INDICATOR,
  FOREX,
  OPTION,
  CURRENCY_OPTION,
  FUTURE_OPTION,
  INDEX_OPTION,
  CRYPTO_CURRENCY,
  CUSTOM,
  CUSTOM_CONTINUOUS
  // TODO: add others
}

InstrumentType? fromShortCode(String code)
{
  if (code == null) return null;
  code = code.trim();
  switch(code) {
    case "S": return InstrumentType.STOCK;
    case "F": return InstrumentType.FUTURE;
    case "I": return InstrumentType.INDEX;
    case "IND": return InstrumentType.INDICATOR;
    case "FX": return InstrumentType.FOREX;
    case "O": return InstrumentType.OPTION;
    case "CO": return InstrumentType.CURRENCY_OPTION;
    case "FO": return InstrumentType.FUTURE_OPTION;
    case "IO": return InstrumentType.INDEX_OPTION;
    case "CC": return InstrumentType.CRYPTO_CURRENCY;
    case "CUST": return InstrumentType.CUSTOM;
    case "CCF": return InstrumentType.CUSTOM_CONTINUOUS;
  }
  return null;
}

extension InstrumentTypeExt on InstrumentType {
  bool hasUnderlying() => of(this, [InstrumentType.FUTURE, InstrumentType.OPTION, InstrumentType.CURRENCY_OPTION
    , InstrumentType.FUTURE_OPTION, InstrumentType.INDEX_OPTION, InstrumentType.CUSTOM_CONTINUOUS]);
  String? get shortCode {
    switch(this) {
      case InstrumentType.STOCK: return "S";
      case InstrumentType.FUTURE: return "F";
      case InstrumentType.INDEX: return "I";
      case InstrumentType.INDICATOR: return "IND";
      case InstrumentType.FOREX: return "FX";
      case InstrumentType.OPTION: return "O";
      case InstrumentType.CURRENCY_OPTION: return "CO";
      case InstrumentType.FUTURE_OPTION: return "FO";
      case InstrumentType.INDEX_OPTION: return "IO";
      case InstrumentType.CRYPTO_CURRENCY: return "CC";
      case InstrumentType.CUSTOM: return "CUST";
      case InstrumentType.CUSTOM_CONTINUOUS: return "CCF";
    }
    return null;
  }
}

enum TIF {
  DAY, // Day
  GTC, // Good Till Cancel
  GTD, // Good till Date
  IOC, // Immediate or Cancel
  FOK  // Fill or Kill
}

enum OptionType {
  PUT, CALL
}

enum SymMonth {
  JAN, FEB, MAR, APR, MAY, JUNE, JULY, AUG, SEPT, OCT, NOV, DEC
}

extension SymMonthCode on SymMonth {
  String get code {
    switch(this) {
      case SymMonth.JAN: return "F";
      case SymMonth.FEB: return "G";
      case SymMonth.MAR: return "H";
      case SymMonth.APR: return "J";
      case SymMonth.MAY: return "K";
      case SymMonth.JUNE: return "M";
      case SymMonth.JULY: return "N";
      case SymMonth.AUG: return "Q";
      case SymMonth.SEPT: return "U";
      case SymMonth.OCT: return "V";
      case SymMonth.NOV: return "X";
      case SymMonth.DEC: return "Z";
    }
    return "";
  }
}

enum BarSizeType {
  LINEAR, TICK, VOLUME, RANGE, RENKO, HRENKO, PF, REVERSAL
}

enum BarInterval {
  MONTH, WEEK, DAY, MINUTE, SECOND, MILLISECOND
}

enum WatchListView {
  CARD, TABLE
}