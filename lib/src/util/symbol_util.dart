
import 'package:motivewave/src/service/service_home.dart';
import 'package:motivewave/src/shared_state/instrument_info.dart';
import 'package:motivewave/src/shared_state/instrument.dart';
import 'package:motivewave/src/util/enums.dart';
import 'package:motivewave/src/util/holidays.dart';
import 'package:motivewave/src/util/trading_hours.dart';
import 'package:motivewave/src/util/util.dart';

typedef DateTime ExpBuilder(int year, int month);

class SymbolUtil {

  static Map<String, SymbolGenerator> _generators={};
  static Map<String, SymbolGenerator> _rithmicGenerators={};
  static Map<String, SymbolGenerator> _cqgGenerators={};
  static Map<String, SymbolGenerator> _bcGenerators={};
  static Map<String, List<String>> _activeContracts = {};
  static bool _initialized=false;


  static List<SymMonth> quarterlyMonths() { return [SymMonth.MAR, SymMonth.JUNE, SymMonth.SEPT, SymMonth.DEC ]; }
  static List<SymMonth> allMonths() { return [SymMonth.JAN, SymMonth.FEB, SymMonth.MAR, SymMonth.APR, SymMonth.MAY, SymMonth.JUNE, SymMonth.JULY, SymMonth.AUG, SymMonth.SEPT, SymMonth.OCT, SymMonth.NOV, SymMonth.DEC ]; }

  static String replaceBadCharacters(String? src)
  {
    if (src == null || src == "") return "";
    src = src.replaceAll("/", "");
    src = src.replaceAll("\\", "");
    src = src.replaceAll(":", "");
    //src = Util.replace(src, "+", "");
    //src = Util.replace(src, "@", "");
    //src = Util.replace(src, "#", "");
    src = src.replaceAll("*", "");
    src = src.replaceAll("^", "");
    src = src.replaceAll("%", "");
    //src = Util.replace(src, "$", ""); // This is used in some services to denote an index
    src = src.replaceAll("!", "");
    src = src.replaceAll("=", "");
    src = src.replaceAll("~", "");
    src = src.replaceAll("'", "");
    src = src.replaceAll("`", "");
    src = src.replaceAll("(", "");
    src = src.replaceAll(")", "");
    src = src.replaceAll(".", "_"); // Not sure if this is a good idea, '.' is used to separate symbols in MWInstrument.getKey() replacing with "_" for now
    return src;
  }

  static String convertFXSymbolToBase(String symbol)
  {
    if (symbol == null || symbol == "") return symbol;
    String origSymbol = symbol;
    symbol = symbol.replaceAll("^", "");
    symbol = symbol.replaceAll("O.COMP", "");
    symbol = symbol.replaceAll(".OANDA", "");
    symbol = symbol.replaceAll(".IDEALPRO", "");
    symbol = symbol.replaceAll(".SMART", "");
    symbol = symbol.replaceAll(".FXCM", "");
    symbol = symbol.replaceAll(".GAIN", "");
    symbol = symbol.replaceAll("@FXCM", "");
    symbol = symbol.replaceAll("@GAIN", "");
    symbol = symbol.replaceAll(" A0-FX", "");
    symbol = symbol.replaceAll("=", "");
    symbol = symbol.replaceAll("FX\$", "");
    symbol = symbol.replaceAll(".", "");
    symbol = symbol.replaceAll("/", "");
    symbol = symbol.replaceAll("X:", "");

    if (symbol.length > 6 && symbol.startsWith("DI")) {
      // CQG FOREX symbols start with "DI"
      return symbol.substring(2);
    }

    if (symbol.length == 3) {
      if (["EUR", "AUD", "GBP", "NZD"].contains(symbol.toUpperCase())) return symbol + "USD";
      return "USD" + symbol;
    }
    if (symbol.length != 6) return origSymbol;
    return symbol;
  }

  static bool isContinuousInstr(Instrument instr)
  {
    if (instr == null) return false;
    if (instr.type != InstrumentType.FUTURE) return false;
    return isContinuous(instr.symbol, instr.service);
  }

  static bool isContinuous(String symbol, [ServiceType? service])
  {
    /*
    if (service != null) {
      switch(service) {
        case ServiceType.BARCHART: return symbol.endsWith("Y00") || symbol.endsWith("*0")  || symbol.endsWith("*1")  || symbol.endsWith("*2")  || symbol.endsWith("*3")  || symbol.endsWith("*4") || symbol.endsWith("*5") || symbol.endsWith("*6");
        case TRADE_STATION: return symbol.startsWith("@");
      }
    }*/
    // TODO: add other symbols
    return symbol.startsWith("@");
  }

  static bool is2Year(String? symbol)
  {
    if (symbol == null || symbol.length < 4) return false;
    if (isDigit(symbol, symbol.length-1) && isDigit(symbol, symbol.length-2) &&
        !isDigit(symbol, symbol.length-3)) return true;
    return false;
  }

  static String to1Year(String symbol)
  {
    if (!is2Year(symbol)) return symbol;
    return symbol.substring(0, symbol.length-2) + symbol.substring(symbol.length-1);
  }

  static String to2Year(String symbol)
  {
    if (is2Year(symbol)) return symbol;
    int thisYear = DateTime.now().year;
    int decade = (thisYear/10).round()*10;
    int century = (thisYear/100).round()*100;
    int year = decade + int.parse(symbol.substring(symbol.length-1));
    if (year - thisYear > 6) year -= 10;
    else if (thisYear - year > 2) year += 10;
    return symbol.substring(0, symbol.length-1) + (year - century).toString();
  }

  static String convertExchange(String exch, String primaryExchange, InstrumentType type, ServiceType from, ServiceType to)
  {
    /*if (to == ServiceType.OANDAV20) return "OANDA";
    if (to == ServiceType.TRADE_STATION && type == InstrumentType.CASH) return "FOREX";
    if (to == ServiceType.FOREX) return "GAIN";
    if (to == ServiceType.FXCM) return "FXCM"; */

    if (to != null && (to.isRithmic() || to.isCQG()) && compareIgnoreCase(exch, "GLOBEX")) return "CME";

    // What about when the exchange is SMART (IB)?  In this case there is not enough information...

    return exch;
  }

  static Instrument getNextContract(Instrument instr)
  {
    if (instr.type != InstrumentType.FUTURE || isContinuousInstr(instr)) return instr;
    String? base = instr.underlying;
    DateTime? expires = instr.expires;
    if (base == null || expires == null) return instr;

    // No later contracts in the workspace, need to generate one.
    int year = expires.year;
    List<InstrumentInfo> fcs = [];
    var srvc = instr.service;
    if (srvc.isCQG()) {
      fcs.addAll(_generateCQGSymbols(base, year));
      fcs.addAll(_generateCQGSymbols(base, year+1));
    }
    else if (srvc.isRithmic()) {
      fcs.addAll(_generateRithmicSymbols(base, year));
      fcs.addAll(_generateRithmicSymbols(base, year+1));
    }
    else if (srvc == ServiceType.BARCHART) {
      fcs.addAll(_generateBCSymbols(base, year));
      fcs.addAll(_generateBCSymbols(base, year+1));
    }
    else {
      fcs.addAll(_generateSymbols(_generators, base, year, srvc));
      fcs.addAll(_generateSymbols(_generators, base, year+1, srvc));
    }

    InstrumentInfo? next;
    List<String>? letters = _activeContracts[base];
    if (letters == null) return instr;
    for (int i = 0; i < fcs.length - 1; i++) {
      var fc = fcs[i];
      if (fc.symbol == instr.symbol) { // Found matching contract
        next = fcs[++i];
        if (!empty(letters)) {
          while (!letters.contains(next!.letter)) {
            i++;
            if (i >= fcs.length) {
              next = null;
              break;
            }
            next = fcs[i];
          }
        }
        break;
      }
    }
    if (next == null) {
      log.warning("SymbolUtil::getNextContract() next not found! ${instr.symbol}");
      return instr;
    }

    return next.toInstrument(instr.connectionID);
  }

  static String extractCurrency(String symbol)
  {
    String base = convertFXSymbolToBase(symbol);
    String currency = base.substring(3);
    if (base.indexOf('/') > 0) currency = base.substring(base.indexOf('/') + 1);
    currency = currency.toUpperCase();
    // Check exceptions to the 3 character rule..
    if (["USDT", "USDC", "USDB"].contains(currency)) return currency;

    if (currency.length > 3) {
      int i = symbol.indexOf('/') + 1;
      if (i <= 0) i = 3;
      currency = symbol.substring(i, i + 3);
    }
    return currency;
  }

  static String getUnderlying(String symbol)
  {
    if (empty(symbol) || symbol.length <= 3) return symbol;
    symbol = stripLeading(symbol, "@");
    if (symbol.endsWith("#")) {
      symbol = stripTrailing(symbol, "#");
      return symbol;
    }

    if (!isDigit(symbol[symbol.length-1])) return symbol;

    bool d2 = is2Year(symbol);
    if (d2 && symbol.length == 6) return symbol.substring(0,3);
    else if (!d2 && symbol.length == 5) return symbol.substring(0,3);
    if (symbol.length < 3) return symbol;
    return symbol.substring(0, 2);
  }

  static String getBaseSymbol(String? underlying, String symbol, InstrumentType type, ServiceType from)
  {
    String base = getUnderlying(underlying == null || underlying == "" ? symbol : underlying);
    if (!empty(base) && (base.startsWith("@") || base.startsWith("/")) && base.length > 2) {
      base = base.substring(1, 3);
    }

    if (from.isCQG()) base = convertCQGtoCommon(base);
    return base;
  }

  static DateTime? getExpiryDate(String? underlying, String symbol, ServiceType src)
  {
    underlying = getUnderlying(underlying == null ? symbol : underlying);
    SymbolGenerator? gen;
    if (src.isCQG()) gen=_cqgGenerators[underlying];
    else if (src.isRithmic()) gen=_rithmicGenerators[underlying];
    else if (src == ServiceType.BARCHART) gen=_bcGenerators[underlying];
    else gen=_generators[underlying];

    if (gen == null) {
      log.info("getExpireDate() no generator found for: $underlying $symbol $src");
      return null;
    }
    int year = DateTime.now().year;
    for(int i = 0; i < 10; i++) {
      for(var c in gen.generateSymbols(year, src)) {
        if (c.symbol == symbol) return c.expires;
      }
      year++;
    }
    log.info("getExpireDate() no contract found for: $underlying $symbol $src");
    return null;
  }

  static String convertCQGtoCommon(String base)
  {
    switch(base) {
      case "DA6": return "6A";
      case "BP6": return "6B";
      case "CA6": return "6C";
      case "EU6": return "6E";
      case "JY6": return "6J";
      case "BR6": return "6L";
      case "NE6": return "6N";
      case "SF6": return "6S";
      case "EP": return "ES";
      case "GLE": return "LE";
      case "SIE": return "SI";
      case "MQC": return "QC";
      case "CPE": return "HG";
      case "GCE": return "GC";
      case "ENQ": return "NQ";
      case "YDD": return "DD";
      case "SPA": return "SP";
      case "ZCE": return "ZC";
      case "ZLE": return "ZL";
      case "ZME": return "ZM";
      case "ZOE": return "ZO";
      case "ZRE": return "ZR";
      case "ZSE": return "ZS";
      case "XB": return "XB"; // Should this be XK?
      case "ZWA": return "ZW";
      case "KWE": return "KW";
      case "CCE": return "CC";
      case "CTE": return "CT";
      case "KCE": return "KC";
      case "OJE": return "OJ";
      case "SBE": return "SB";
      case "DXE": return "DX";
      case "USA": return "ZB";
      case "ULA": return "UB";
      case "FVA": return "ZF";
      case "TYA": return "ZN";
      case "TUA": return "ZT";
      case "CLE": return "CL";
      case "QO": return "BB";
      case "NQM": return "QM";
      case "HOE": return "HO";
      case "NGE": return "NG";
      case "TFE": return "TF";
      case "RTY": return "QR"; // Russell Index
      case "TNA": return "TN";
      case "EMD": return "EW";
    }
    return base;
  }

  static String convertCommonToCQG(String base)
  {
    switch(base) {
      case "6A": case "A6": case "AD": return "DA6";
      case "6B": case "B6": case "BP": return "BP6";
      case "6C": case "C6": case "D6": return "CA6";
      case "6E": case "E6": return "EU6";
      case "6J": case "J6": return "JY6";
      case "6L": return "BR6";
      case "6N": case "N6": return "NE6";
      case "6S": case "S6": return "SF6";
      case "ES": return "EP";
      case "LE": return "GLE";
      case "SI": return "SIE";
      case "QC": return "MQC";
      case "HG": return "CPE";
      case "GC": return "GCE";
      case "NQ": return "ENQ";
      case "DD": return "YDD";
      case "SP": return "SPA";
      case "ZC": return "ZCE";
      case "ZL": return "ZLE";
      case "ZM": return "ZME";
      case "ZO": return "ZOE";
      case "ZR": return "ZRE";
      case "ZS": return "ZSE";
      case "XB": return "XB"; // Should this be XK?
      case "ZW": return "ZWA";
      case "CC": return "CCE";
      case "CT": return "CTE";
      case "KC": return "KCE";
      case "OJ": return "OJE";
      case "SB": return "SBE";
      case "DX": return "DXE";
      case "ZB": return "USA";
      case "UB": case "UD": return "ULA";
      case "ZF": return "FVA";
      case "ZN": return "TYA";
      case "ZT": return "TUA";
      case "CL": return "CLE";
      case "BB": return "QO";
      case "QM": return "NMQ";
      case "HO": return "HOE";
      case "NG": return "NGE";
      case "TF": case "QR": return "RTY"; // Russell Index old mapping
      case "KW": return "KWE";
      case "EW": return "EMD";
      case "TN": return "TNA";
    }
    return base;
  }

  static String? getFutureTradingHours(String base, ServiceType? srvc)
  {
    if (empty(base)) return null;
    if (base.indexOf('#') > 0) {
      base = base.substring(0, base.indexOf('#')).toUpperCase().trim();
    }
    // Many IQFeed forward contracts look like this: @XX# or +XX#
    if (base.indexOf('@') == 0) {
      base = base.replaceAll("@", "");
      base = base.replaceAll("#", "");
    }
    else if (base.indexOf('+') == 0) {
      base = base.replaceAll("+", "");
      base = base.replaceAll("#", "");
    }

    if (srvc != null && srvc.isCQG()) base = convertCQGtoCommon(base);

    if (empty(base)) return null;

    switch(base.toUpperCase().trim()) {
      case "BB": return TradingHours.BRENT_CRUDE;

      case "CL": case "QM": case "BZ": case "R2": case "REB": case "QE": case "NG": case "HP":
      case "QG": case "NP": case "PPM": case "PPD": case "HO": case "QL": case "RBE": return TradingHours.CME_ENERGY;

      case "DD": case "DJ": case "ZD": case "RX": case "MNX": case "YM": case "MYM": case "NQ": case "MNQ": case "ES": case "MES":
      case "RTY": case "M2K": case "QR": case "EMD": case "SMC": case "ND": case "NK": case "NIY": return TradingHours.CME_EQUITY;

      case "6A": case "A6": case "6B": case "B6": case "ACD": case "AJY": case "ANE": case "6C": case "C6":
      case "CJY": case "6D": case "D6": case "6E": case "E7": case "EAD": case "ECD": case "ENK": case "PJY":
      case "PSF": case "6J": case "J6": case "NOK": case "SEK": case "CAD": case "6S": case "S6": case "E6":
      case "M6": case "6M": case "6N": case "N6": case "6T": case "T6":
      case "AUD": case "CHF": case "BRE": case "EUR": case "GBP": case "JPY": case "MXP": case "NZD": case "RUR": return TradingHours.CME_CURRENCY;

      case "ZN": case "GTB": case "ZT": case "Z3N": case "OSS": case "ZQ": case "ZB":
      case "ZF": case "SA": return TradingHours.CME_INTEREST;

      case "GC": case "QO": case "SI": case "6Q": case "QI": case "PL": case "PA": case "HG":
      case "QC": case "HRC": case "PLE": case "PAE": case "MQO": return TradingHours.CME_METALS;

      case "ZL": case "ZC": case "ZM": case "ZO": case "ZR": case "ZS": case "XC":
      case "XK": return TradingHours.CME_AGRICULTURE;

      case "ZW": case "XW": case "KW":  return TradingHours.CME_WHEAT;

      case "OJ": return TradingHours.ICE_FCOJ_A;
      case "SB": return TradingHours.ICE_SUGAR11;
      case "KC": return TradingHours.ICE_COFFEE;
      case "CC": return TradingHours.ICE_COCOA;
      case "CT": return TradingHours.ICE_COTTON2;
      case "TF": return TradingHours.ICE_RUSSELL;
      case "DX": return TradingHours.ICE_CURRENCY;
    }
    return null;
  }

  static String convertSymbolInstr(Instrument instr, ServiceType from, ServiceType to)
  {
    //if (from == null) return instr.symbol;
    return convertSymbol(instr.underlying, instr.symbol, instr.type, instr.expires, from, to);
  }


  static String convertSymbol(String? underlying, String symbol, InstrumentType type, DateTime? expDate, ServiceType from, ServiceType to)
  {
    //if (from == null || to == null) return symbol;

    if (type == InstrumentType.FOREX) {
      // convert to a common base symbol, then to the target service
      String origSymbol = symbol;
      symbol = convertFXSymbolToBase(symbol);

      if (symbol.length != 6) return origSymbol; // expecting a six character symbol
      /*if (to.isIB()) return symbol.substring(0, 3) + "." + symbol.substring(3);
      if (to.isFXCM() || to == Enums.ServiceType.FOREX || to == Enums.ServiceType.OANDA || to == Enums.ServiceType.OANDAV20 || to == ServiceType.TRADEKING) return symbol.substring(0, 3) + "/" + symbol.substring(3);
      if (to == ServiceType.IQFEED) return symbol + ".FXCM"; // not sure this is correct in all cases
      if (to == ServiceType.BARCHART) return "^" + symbol;
      if (to == ServiceType.ESIGNAL) {
        if (symbol.startsWith("USD") || symbol.endsWith("USD")) {
          // USD pairs remove the "USD"
          symbol = Util.replace(symbol, "USD", "");
        }
        return symbol + " A0-FX";
      }*/
      if (to == ServiceType.GOOGLE) return symbol;
      if (to.isCQG()) return "DI" + symbol;
      /*if (to == ServiceType.METASTOCK) {
        if (symbol.startsWith("USD")) return symbol.substring(3) + "=";
        return symbol + "=";
      }
      if (to == ServiceType.TRADE_STATION) return symbol;
      if (to == ServiceType.MONEYNET) return "X:" + symbol; */
      return origSymbol;
    }

    String base = getBaseSymbol(underlying, symbol, type, from);
    //c2DigitYear=false;
    if (expDate != null && type == InstrumentType.FUTURE) {
      if (to.isRithmic()) {
        return base + getMonthCode(symbol, base, expDate) + getYearStr(expDate.year, false);
      }
      if (to.isCQG()) {
        return convertCommonToCQG(base) + getMonthCode(symbol, base, expDate) + getYearStr(expDate.year, true);
      }
    }

    return symbol;
  }

  static String getMonthCode(String symbol, String base, DateTime d)
  {
    if (empty(symbol)) return convertFutureMonth(base, d);
    // Month code should be the letter just before the year
    for(int i = symbol.length-1; i > 0; i--) {
      if (!isLetter(symbol, i)) continue;
      return symbol[i];
    }
    return convertFutureMonth(base, d);
  }

  static String getYearStr(int year, bool digit2)
  {
    String y= (digit2 ? year % 100 : year % 10).toString() + "";
    if (digit2 && y.length == 1) y = "0" + y;
    return y;
  }

  static String convertFutureMonth(String base, DateTime exp) { return exp == null ? "" : convertFutureMonthInt(base, exp.month); }

  static String convertFutureMonthInt(String base, int month)
  {
    // Some symbols (such as CL) have the symbols offset.
    if (base == "CL") {
      month++;
      if (month > 11) month -= 11;
    }

    switch (month) {
    case 0: return "F";
    case 1: return "G";
    case 2: return "H";
    case 3: return "J";
    case 4: return "K";
    case 5: return "M";
    case 6: return "N";
    case 7: return "Q";
    case 8: return "U";
    case 9: return "V";
    case 10: return "X";
    case 11: return "Z";
    }
    return "";
  }

  static String convertFutureDate(String base, DateTime d)
  {
    // Get the month code
    String mc = convertFutureMonth(base, d);
    return mc + (d.year%10).toString();
  }

  static String convertFutureDateM1(String base, DateTime d)
  {
    // Get the month code
    String mc = convertFutureMonthInt(base, d.month+1);
    // convert year
    return (d.year%10).toString()+mc;
  }

  static double getFOREXMinTick(String symbol)
  {
    // Normalize the symbol
    String _symbol=symbol;
    symbol=symbol.trim();
    symbol=symbol.replaceAll("=R", "");
    symbol=symbol.replaceAll("^", "");
    symbol=symbol.replaceAll("+", "");
    symbol=symbol.replaceAll("/", "");
    symbol=symbol.replaceAll("=", "");

    if (symbol.startsWith("DR")) symbol = symbol.substring(2);

    if (symbol.indexOf(' ') > 0) symbol=symbol.substring(0, symbol.indexOf(' '));
    if (symbol.indexOf('@') > 0) symbol=symbol.substring(0, symbol.indexOf('@'));
    // IQFeed post-fixes currencies with .FXCM, .ABBA etc to identify the source of data
    // BarChart sometimes postfixes with .A, .B etc example: USDCAD.G
    if (symbol.indexOf('.') > 0 && symbol.length >= 8) symbol=symbol.substring(0, symbol.lastIndexOf('.'));
    symbol=symbol.replaceAll(".", "");  // IB contains a . separator ie: XXX.XXX

    if (symbol.length == 3) symbol="USD" + symbol;

    if (symbol.length != 6) {
      log.warning("SymbolUtil::getFOREXMinTick() invalid symbol: " + _symbol + " sym<" + symbol + ">");
      return 0.00001;
    }

    if (["USDHKD", "USDZAR", "USDSGD", "USDTRY", "USDCZK", "GBPHKD", "GBPZAR", "GBPSGD", "GBPTRY",
         "GBPCZK", "CADHKD", "CADZAR", "CADSGD", "CADTRY", "CADCZK", "AUDHKD", "AUDZAR", "AUDSGD", "AUDTRY", "AUDCZK",
         "EURHKD", "EURZAR", "EURSGD", "EURTRY", "EURCZK", "CHFHKD", "CHFZAR"].contains(symbol)) return 0.000001;
    if (["USDHUF", "USDCNY", "EURHUF", "GBPHUF", "CADHUF", "AUDHUF", "TRYJPY"].contains(symbol)) return 0.0001;
    if (["USDJPY", "EURJPY", "GBPJPY", "CADJPY", "AUDJPY", "USDTHB", "USDINR", "HKDJPY", "ZARJPY",
         "SGDJPY", "SEKJPY", "NZDJPY", "CHFJPY"].contains(symbol)) return 0.001;
    if (["XAGJPY", "XAUJPY"].contains(symbol)) return 0.1;
    if (["XAUXAG", "XAUUSD", "XAUAUD", "XAUGBP", "XAUEUR", "XAUCAD", "XAUHKD", "XAUNZD", "XAUSGD", "XAUCHF"].contains(symbol)) return 0.001;

    return 0.00001;
  }

  static double getFOREXPointSize(String symbol)
  {
    return getFOREXMinTick(symbol) * 10;
  }

  static double getCryptoMinTick(String symbol)
  {
    symbol = symbol.trim();
    symbol = symbol.replaceAll("/", "");
    symbol = symbol.replaceAll("^", "");
    if (empty(symbol)) return 0.01;

    switch(symbol) {
      case "BTCUSD": case "BTCEUR": case "BTCGBP": case "BTCJPY": case "BTCCAD": case "BTCAUD": return 0.01;
      case "BTGUSD": case "BT2USD":
      case "BCHUSD": case "BCHEUR": case "BCHGBP": case "BCHJPY": case "BCHCAD": case "BCHAUD": return 0.01;
      case "BTGBTC": case "BT2BTC": case "ETHBTC": case "LTCBTC": case "XMRBTC": case "ZECBTC": case "DASHBTC": return 0.00001;
      case "BCHBTC": return 0.0001;
      case "XRPBTC": case "XLMBTC": case "WAVESBTC": case "OMGBTC": case "ETPBTC": case "NXTBTC": case "DATBTC": case "STXBTC": case "XEMBTC": case "XVGBTC": return 0.00000001;
      case "USDTBTC": return 0.000000001;
      case "NEOBTC": case "SANBTC": case "ETCBTC": case "LSKBTC": case "REPBTC": return 0.000001;
      case "IOTBTC": case "EOSBTC": case "STRATBTC": case "CVCBTC": return 0.0000001;
      case "ETHUSD": case "ETHEUR": case "ETHGBP": case "ETHJPY": case "ETHCAD": case "ETHAUD": return 0.01;
      case "LTCUSD": case "LTCEUR": case "LTCCAD": case "LTCAUD": return 0.01;
      case "XMRUSD": case "XMREUR": case "XMRGBP": return 0.01;
      case "ZECUSD": case "ZECEUR": return 0.01;
      case "DASHUSD": case "DASHEUR": case "DASHGBP": return 0.01;
      case "XRPUSD": case "XRPEUR": case "IOTUSD": case "USDTUSD": case "CVCUSD": return 0.0001;
      case "NEOUSD": case "WAVESUSD": case "OMGUSD": case "EOSUSD": case "ETPUSD": case "SANUSD": case "STRATUSD": case "ETCUSD": return 0.01;
      case "XLMUSD": case "NXTUSD": case "DATUSD": case "STXUSD": case "EXMUSD": case "REPUSD": return 0.0001;
      case "LSKUSD": return 0.01;
      case "XVGUSD": return 0.000001;
      case "PTOYBTC": return 0.00000001;
    }
    log.warning("SymbolUtil::getCryptoMinTick() unmapped symbol: " + symbol);
    return 0.01;
  }

  static String? getCryptoDesc(String symbol)
  {
    symbol = symbol.trim();
    symbol = symbol.replaceAll("/", "");
    symbol = symbol.replaceAll("^", "");
    if (empty(symbol)) return null;

    switch(symbol) {
      case "BTCUSD": return "Bitcoin/US Dollar";
      case "BTCEUR": return "Bitcoin/European Euro";
      case "BTCGBP": return "Bitcoin/British Pound";
      case "BTCJPY": return "Bitcoin/Japanese Yen";
      case "BTCCAD": return "Bitcoin/Canadian Dollar";
      case "BTCAUD": return "Bitcoin/Australian Dollar";

      case "BTGUSD": return "Bitcoin Gold/US Dollar";
      case "BTGBTC": return "Bitcoin Gold/Bitcoin";
      case "BT2USD": return "Bitcoin SegWit2X/US Dollar";
      case "BT2BTC": return "Bitcoin SegWit2X/Bitcoin";

      case "BCHUSD": return "Bitcoin Cash/US Dollar";
      case "BCHEUR": return "Bitcoin Cash/European Euro";
      case "BCHGBP": return "Bitcoin Cash/British Pound";
      case "BCHJPY": return "Bitcoin Cash/Japanese Yen";
      case "BCHCAD": return "Bitcoin Cash/Canadian Dollar";
      case "BCHAUD": return "Bitcoin Cash/Australian Dollar";
      case "BCHBTC": return "Bitcoin Cash/Bitcoin";

      case "ETHUSD": return "Etherium/US Dollar";
      case "ETHEUR": return "Etherium/European Euro";
      case "ETHGBP": return "Etherium/British Pound";
      case "ETHJPY": return "Etherium/Japanese Yen";
      case "ETHCAD": return "Etherium/Canadian Dollar";
      case "ETHAUD": return "Etherium/Australian Dollar";
      case "ETHBTC": return "Etherium/Bitcoin";

      case "LTCUSD": return "Litecoin/US Dollar";
      case "LTCEUR": return "Litecoin/European Euro";
      case "LTCCAD": return "Litecoin/Canadian Dollar";
      case "LTCAUD": return "Litecoin/Australian Dollar";
      case "LTCBTC": return "Litecoin/Bitcoin";

      case "XMRUSD": return "Monero/US Dollar";
      case "XMREUR": return "Monero/European Euro";
      case "XMRGBP": return "Monero/British Pound";
      case "XMRBTC": return "Monero/Bitcoin";

      case "ZECUSD": return "ZCash/US Dollar";
      case "ZECEUR": return "ZCash/European Euro";
      case "ZECBTC": return "ZCash/Bitcoin";

      case "DASHUSD": return "DigitalCash/US Dollar";
      case "DASHEUR": return "DigitalCash/European Euro";
      case "DASHGBP": return "DigitalCash/British Pound";
      case "DASHBTC": return "DigitalCash/Bitcoin";

      case "XRPUSD": return "Ripple/US Dollar";
      case "XRPEUR": return "Ripple/European Euro";
      case "XRPBTC": return "Ripple/Bitcoin";

      case "NEOUSD": return "NEO/US Dollar";
      case "NEOBTC": return "NEO/Bitcoin";
      case "IOTUSD": return "IOTA/US Dollar";
      case "IOTBTC": return "IOTA/Bitcoin";
      case "XLMUSD": return "Stellar/US Dollar";
      case "XLMBTC": return "Stellar/Bitcoin";
      case "WAVESUSD": return "Waves/US Dollar";
      case "WAVESBTC": return "Waves/Bitcoin";
      case "OMGUSD": return "OmiseGo/US Dollar";
      case "OMGBTC": return "OmiseGo/Bitcoin";
      case "EOSUSD": return "EOS/US Dollar";
      case "EOSBTC": return "EOS/Bitcoin";
      case "ETPUSD": return "Metaverse/US Dollar";
      case "ETPBTC": return "Metaverse/Bitcoin";
      case "SANUSD": return "Santiment/US Dollar";
      case "SANBTC": return "Santiment/Bitcoin";
      case "USDTUSD": return "Tether/US Dollar";
      case "USDTBTC": return "Tether/Bitcoin";
      case "NXTUSD": return "Nxt/US Dollar";
      case "NXTBTC": return "Nxt/Bitcoin";
      case "DATUSD": return "Datum/US Dollar";
      case "DATBTC": return "Datum/Bitcoin";
      case "STXUSD": return "Stox/US Dollar";
      case "STXBTC": return "Stox/Bitcoin";
      case "STRATUSD": return "Stratis/US Dollar";
      case "STRATBTC": return "Stratis/Bitcoin";
      case "XEMUSD": return "NEM/US Dollar";
      case "XEM/BTC": return "NEM/Bitcoin";
      case "ETCUSD": return "Ethereum Classic/US Dollar";
      case "ETCBTC": return "Ethereum Classic/Bitcoin";
      case "LSKUSD": return "Lisk/US Dollar";
      case "LSKBTC": return "Lisk/Bitcoin";
      case "CVCUSD": return "Civic/US Dollar";
      case "CVCBTC": return "Civic/Bitcoin";
      case "REPBTC": return "Augur/Bitcoin";
      case "REPUSD": return "Augur/US Dollar";
      case "XVGBTC": return "Verge/Bitcoin";
      case "XVGUSD": return "Verge/US Dollar";
      case "PTOYBTC": return "Patientory/Bitcoin";
    }

    return null;
  }

  static String? resolveCQGExchange(String underlying)
  {
    var gen =_cqgGenerators[underlying];
    return gen == null ? null : gen.exchange;
  }

  static List<InstrumentInfo> generateCQG()
  {
    var now = DateTime.now();
    int year=now.year;
    List<InstrumentInfo> symbols= [];
    for (String base in _cqgGenerators.keys) {
      symbols.addAll(_generateCQGSymbols(base, year-1));
      symbols.addAll(_generateCQGSymbols(base, year));
      symbols.addAll(_generateCQGSymbols(base, year + 1));
      symbols.addAll(_generateCQGSymbols(base, year + 2));
      symbols.addAll(_generateCQGSymbols(base, year + 3));
    }

      // Remove any expired symbols
    for (var f in [...symbols]) {
      if (f.expires != null && f.expires!.isBefore(now)) symbols.remove(f);
    }
    return symbols;
  }

  static List<InstrumentInfo> generateRithmic()
  {
    var now = DateTime.now();
    int year=now.year;
    List<InstrumentInfo> symbols= [];
    for (String base in _rithmicGenerators.keys) {
      symbols.addAll(_generateRithmicSymbols(base, year-1));
      symbols.addAll(_generateRithmicSymbols(base, year));
      symbols.addAll(_generateRithmicSymbols(base, year + 1));
      symbols.addAll(_generateRithmicSymbols(base, year + 2));
      symbols.addAll(_generateRithmicSymbols(base, year + 3));
    }

    // Remove any expired symbols
    for (var f in [...symbols]) {
      if (f.expires != null && f.expires!.isBefore(now)) symbols.remove(f);
    }
    return symbols;
  }

  static List<InstrumentInfo> _generateCQGSymbols(String base, int year) { return _generateSymbols(_cqgGenerators, base, year, ServiceType.CQG); }

  static List<InstrumentInfo> _generateRithmicSymbols(String base, int year) { return _generateSymbols(_rithmicGenerators, base, year, ServiceType.RITHMIC); }

  static List<InstrumentInfo> _generateBCSymbols(String base, int year) { return _generateSymbols(_bcGenerators, base, year, ServiceType.BARCHART); }

  static List<InstrumentInfo> _generateSymbols(Map<String, SymbolGenerator> genMap, String base, int year, ServiceType srvc)
  {
    var gen=genMap[base];
    if (gen == null) {
      log.severe("SymbolUtil::generateSymbols() unknown base code: $base");
      log.severe("${StackTrace.current}");
      return [];
    }
    return gen.generateSymbols(year, srvc);
  }

  // Week/Day of month
  static ExpBuilder DOW(int week, int dow, [int daysBefore=0])
  {
    return (year, month) {
      var cal = DateTime(year, month);
      var d1 = Duration(days: 1);
      while(cal.weekday != dow) {
        cal = cal.add(d1);
      }

      var d7 = Duration(days: 7);
      int c = 1;
      while(c < week) {
        cal = cal.add(d7);
        c++;
      }
      if (daysBefore > 0) {
        // subtract days before
        var d1 = Duration(days: 1);
        while (daysBefore > 0) {
          cal.subtract(d1);
          daysBefore--;
        }
      }
      return cal;
    };
  }

  // Business Days before end of month
  static ExpBuilder EOM(int days) => (year, month) => getBusinessDaysBeforeEOM(year, month, days);
  // Business Days before start of month
  static ExpBuilder BSOM(int days) => (year, month) => getBusinessDaysBeforeEOM(year, month-1, days-1);
  // Business Days before start of 2 months ago
  static ExpBuilder BSOM2(int days) => (year, month) => getBusinessDaysBeforeEOM(year, month-2, days-1);
  // Business Days before day of month
  static ExpBuilder BDEOM(int dom, int days) => (year, month) => getBusinessDaysBeforeDOM(year, month, dom, days);
  // Business Days before day of month on the prior month
  static ExpBuilder BDBDPM(int dom, int days) => (year, month) => getBusinessDaysBeforeDOM(year, month-1, dom, days);
  // Business day of month
  static ExpBuilder BDOM(int days) => (year, month) => getBusinessDayOfMonth(year, month, days);
  // Last Day of Week for the month (Business Day)
  static ExpBuilder LDOW(int dow) => (year, month) => getLastDOW(year, month, dow);

  static DateTime getBusinessDaysBeforeEOM(int year, int month, int days)
  {
    var cal = DateTime(year, month+1);
    var d = Duration(days: 1);
    cal = cal.subtract(d);
    int c = 0;
    while (c < days) {
      if (!Holidays.isWeekendOrHoliday(cal)) c++;
      cal = cal.subtract(d);
    }
    return cal;
  }

  static DateTime getBusinessDaysBeforeDOM(int year, int month, int dom, int days)
  {
    var cal = DateTime(year, month, dom);
    var d = Duration(days: 1);
    int c = 0;
    while (c < days) {
      if (!Holidays.isWeekendOrHoliday(cal)) c++;
      cal = cal.subtract(d);
    }
    return cal;
  }

  static DateTime getBusinessDayOfMonth(int year, int month, int days)
  {
    var cal = DateTime(year, month);
    var d = Duration(days: 1);
    int c = 0;
    while (c < days) {
      cal = cal.add(d);
      if (Holidays.isWeekendOrHoliday(cal)) continue;
      c++;
    }
    return cal;
  }

  static DateTime getLastDOW(int year, int month, int dow)
  {
    var cal = DateTime(year, month+1);
    var d = Duration(days: 1);
    int c = 0;
    while (c < 14) {
      c++;
      cal = cal.subtract(d);
      if (Holidays.isWeekendOrHoliday(cal)) continue;
      if (cal.weekday == dow) return cal;
    }
    return cal; // This should not happen
  }

  static void currency(String base, String exch, double mt, double dm, double pv, String desc, ExpBuilder exp, String? bc, String? rithmic, String? cqg)
  {
    gen(base, bc, rithmic, cqg, exch, mt, dm, pv, desc, FuturesCategory.CURRENCY, exp, quarterlyMonths());
  }

  static void equity(String base, String exch, double mt, double pv, String desc, String? bc, String? rithmic, String? cqg)
  {
    gen(base, bc, rithmic, cqg, exch, mt, 1, pv, desc, FuturesCategory.INDEX, DOW(3, 5), quarterlyMonths());
  }

  static void energy(String base, String exch, double mt, double pv, String desc, ExpBuilder exp, String? bc, String? rithmic, String? cqg)
  {
    gen(base, bc, rithmic, cqg, exch, mt, 1, pv, desc, FuturesCategory.ENERGY, exp, allMonths());
  }

  static void treasury(String base, String exch, double mt, double pv, String desc, ExpBuilder exp, String? bc, String? rithmic, String? cqg)
  {
    gen(base, bc, rithmic, cqg, exch, mt, 1, pv, desc, FuturesCategory.FINANCIAL, exp, quarterlyMonths());
  }

  static void gen(String base, String? bc, String? rithmic, String? cqg, String exch, double mt, double dm, double pv, String desc, FuturesCategory cat, ExpBuilder exp, List<SymMonth> codes)
  {
    var gen = SymbolGenerator(null, base, exch, mt, dm, pv, desc, cat, exp, codes);
    _generators[gen.base] = gen;
    if (bc != null && bc != "") _bcGenerators[bc] = SymbolGenerator.clone(gen, service: ServiceType.BARCHART, base: bc);
    if (rithmic != null && rithmic != "") _rithmicGenerators[rithmic] = SymbolGenerator.clone(gen, service: ServiceType.RITHMIC, base: rithmic);
    if (cqg != null && cqg != "") _cqgGenerators[cqg] = SymbolGenerator.clone(gen, service: ServiceType.CQG, base: cqg);
  }

  static void active(List<String> baseSymbols, List<String> contractLetters)
  {
    for(var base in baseSymbols) _activeContracts[base] = contractLetters;
  }

  // Register the generators
  static init() {
    if (_initialized) return;
    _initialized = true;

    int WEDNESDAY=3, THURSDAY=4, FRIDAY=5;
    // Currencies
    currency("6A", "CME", 0.00005, 1, 100000.0, "Australian Dollar", DOW(3, WEDNESDAY, 2), "AD", "6A", "DA6");
    currency("6B", "CME", 0.0001, 1, 62500, "British Pound", DOW(3, WEDNESDAY, 2), "BP", "6B", "BP6");
    currency("6C", "CME",  0.00005, 1, 100000.0, "Canadian Dollar", DOW(3, WEDNESDAY, 2), "D6", "6C", "CA6");
    currency("6E", "CME",  0.00005, 1, 125000, "Euro FX", DOW(3, WEDNESDAY, 2), "E6", "6E", "EU6");
    currency("6J", "CME",  0.0000005, 100, 12500000, "Japenese Yen", DOW(3, WEDNESDAY, 2), "J6", "6J", "JY6");
    currency("6L", "CME",  0.00005, 1, 100000, "Brazilian Real", DOW(3, WEDNESDAY, 2), "L6", "6L", "BR6");
    currency("6M", "CME",  0.00001, 1, 500000.00, "Mexican Peso", DOW(3, WEDNESDAY, 2), "M6", "6M", "MX6");
    currency("6N", "CME",  0.0001, 1, 100000, "New Zealand Dollar", DOW(3, WEDNESDAY, 2), "N6", "6N", "NE6");
    currency("6S", "CME",  0.0001, 1, 125000, "Swiss Franc", DOW(3, WEDNESDAY, 2), "S6", "6S", "SF6");

    currency("M6A", "CME", 0.0001, 1, 10000, "E-Micro AUD/USD", DOW(3, WEDNESDAY, 2), "MG", "M6A", "M6A");
    currency("M6B", "CME", 0.0001, 1, 6250, "E-Micro GBP/USD", DOW(3, WEDNESDAY, 2), "MB", "M6B", "M6B");
    currency("M6C", "CME", 0.0001, 1, 10000, "E-Micro USD/CAD", DOW(3, WEDNESDAY, 2), "WK", "M6C", "GMCD");
    currency("M6E", "CME", 0.0001, 1, 12500, "E-Micro EUR/USD", DOW(3, WEDNESDAY, 2), "MF", "M6E", "M6E"); // BarChart MF
    currency("M6J", "CME", 0.000001, 100, 1250000.00, "E-Micro JPY/USD", DOW(3, WEDNESDAY, 2), "WM", "M6J", "MJY"); // BarChart WM
    currency("M6S", "CME", 0.0001, 1, 12500.0, "E-Micro CHF/USD", DOW(3, WEDNESDAY, 2), "WN", "M6S", "MSF"); // BarChart WN
    currency("DX", "ICE", 0.005, 1, 1000, "US Dollar Index", DOW(3, WEDNESDAY, 2), "DX", "DX", "DXE");
    currency("GE", "CME", 0.005, 1, 2500, "Eurodollar", DOW(3, WEDNESDAY, 2), "GE", "GE", "EDA");

    // Financial
    treasury("ZB", "CBOT", 0.03125, 1000, "30 YR U.S. Treasury Bond", EOM(7), "ZB", "ZB", "USA");
    treasury("UB", "CBOT", 0.03125, 1000, "Ultra T-Bond", EOM(7), "UD", "UB", "ULA");
    treasury("TN", "CBOT", 0.015625, 1000, "Ultra 10yr Treasury Note", EOM(7), "TN", "TN", "TNA");
    treasury("ZT", "CBOT", 0.00390625, 2000, "2 YR U.S. Treasury Note", EOM(0), "ZT", "ZT", "TUA");
    treasury("ZF", "CBOT", 0.0078125, 1000, "5 YR U.S. Treasury Note", EOM(0), "ZF", "ZF", "FVA");
    treasury("ZN", "CBOT", 0.015625, 1000, "10 YR U.S. Treasury Note", EOM(7), "ZN", "ZN", "TYA");

    // Equities
    equity("ES", "CME", .25, 50, "E-Mini S&P 500", "ES", "ES", "EP");
    equity("MES", "CME", .25, 5, "E-Micro S&P 500", "ET", "MES", "MES");
    equity("EMD", "CME", .1, 100, "E-mini S&P Midcap 400", "EW", "EMD", "EMD");
    equity("SG", "CME", .1, 250, "S&P 500 Growth", "SG", "SG", null);
    equity("SMC", "CME", .1, 100, "E-mini S&P Smallcap 600", "PC", "SMC", "SMC");
    equity("SP", "CME", .1, 250, "S&P 500 Index", "SP", "SP", "SPA");
    equity("YM", "CBOT", 1, 5, "E-Mini DOW \$5", "YM", "YM", "YM");
    equity("MYM", "CBOT", 1, 0.5, "E-Micro DOW", "YR", "MYM", "MYM");
    equity("RTY", "CME", .1, 50, "E-Mini Russell 2000 Index", "QR", "RTY", "RTY");
    equity("M2K", "CME", .1, 5, "E-Micro Russell 2000 Index", "RX", "M2K", "M2K");
    equity("NQ", "CME", .25, 20, "E-Mini Nasdaq 100", "NQ", "NQ", "ENQ");
    equity("MNQ", "CME", .25, 2, "E-Micro Nasdaq 100", "NM", "MNQ", "MNQ");
    equity("NC", "CME", .5, 20, "E-Mini Nasdaq 100 Composite", "NC", "NC", "ENC");
    equity("NKD", "CME", 5, 5, "Nikkei 225 USD", "NL", "NKD", "NKD");

    // Metals
    active(["GC", "ZG", "GGC", "GCE", "MGC"], ["G", "J", "M", "Q", "V", "Z"]);
    var months = [ SymMonth.FEB, SymMonth.MAR, SymMonth.APR, SymMonth.JUNE, SymMonth.AUG, SymMonth.OCT, SymMonth.DEC ];
    gen("GC", "GC", "GC", "GCE", "COMEX", .1, 1, 100, "Gold 100oz", FuturesCategory.METAL, EOM(2), months);
    gen("MGC", "GR", "MGC", "MGC", "COMEX", .1, 1, 10, "E-micro Gold", FuturesCategory.METAL, EOM(2), months);
    months = [ SymMonth.FEB, SymMonth.APR, SymMonth.JUNE, SymMonth.AUG, SymMonth.OCT, SymMonth.DEC ];
    gen("QO", "QO", "QO", "MQO", "COMEX", .25, 1, 50, "E-mini Gold", FuturesCategory.METAL, BSOM(3), months);

    // Not sure what this is
    //registerCQG(new CME6("QO", .25, 50, "miNY Gold", 1, FRIDAY, FuturesCategory.METAL));

    active(["HG", "GHG", "CPE", "QC", "MQC", "QHG"], ["H", "K", "N", "U", "Z"]);
    gen("HG", "HG", "HG", "CPE", "COMEX", .0005, 1, 25000, "High Grade Copper", FuturesCategory.METAL, EOM(3), allMonths());
    gen("QC", "QC", "QC", "MQC", "COMEX", .002, 1, 12500, "E-mini Copper", FuturesCategory.METAL, EOM(3), allMonths());

    active(["SI", "ZIF", "GSI", "SIE", "ZI", "QI", "MQI"], ["H", "K", "N", "U", "Z"]);
    gen("QI", "QI", "QI", "MQI", "COMEX", .0125, 1, 2500, "E-mini Silver", FuturesCategory.METAL, EOM(2), [SymMonth.MAR, SymMonth.MAY, SymMonth.JULY, SymMonth.SEPT, SymMonth.DEC]);
    gen("SI", "SI", "SI", "SIE", "COMEX", .005, 1, 5000, "Silver", FuturesCategory.METAL, EOM(2), [SymMonth.JAN, SymMonth.FEB, SymMonth.MAR, SymMonth.APR, SymMonth.MAY, SymMonth.JULY, SymMonth.SEPT, SymMonth.DEC]);
    active(["PA"], ["H", "M", "U", "Z"]);
    gen("PA", "PA", "PA", "PAE", "NYMEX", .01, 1, 100, "Palladium", FuturesCategory.METAL, EOM(2), [SymMonth.FEB, SymMonth.MAR, SymMonth.APR, SymMonth.JUNE, SymMonth.SEPT, SymMonth.DEC]);
    active(["PL", "PLE", "GPL"], ["F", "J", "N", "V"]);
    gen("PL", "PL", "PL", "PLE", "NYMEX", .1, 1, 50, "Platinum", FuturesCategory.METAL, EOM(2), [SymMonth.JAN, SymMonth.APR, SymMonth.JULY, SymMonth.OCT]);

    // Meat
    gen("GF", "GF", "GF", "GF", "CME", 0.025, 1, 500, "Feeder Cattle", FuturesCategory.MEAT, LDOW(THURSDAY), [SymMonth.JAN, SymMonth.MAR, SymMonth.APR, SymMonth.MAY, SymMonth.AUG, SymMonth.SEPT, SymMonth.OCT, SymMonth.NOV]);
    gen("HE", "HE", "HE", "HE", "CME", 0.025, 1, 400, "Lean Hogs", FuturesCategory.MEAT, BDOM(10), [SymMonth.FEB, SymMonth.APR, SymMonth.MAY, SymMonth.JUNE, SymMonth.JULY, SymMonth.AUG, SymMonth.OCT, SymMonth.DEC]);
    active(["LE", "GLE"], ["G", "J", "M", "Q", "U", "V", "Z"]);
    gen("LE", "LE", "LE", "GLE", "CME", 0.025, 1, 400, "Live Cattle", FuturesCategory.MEAT, EOM(1), [SymMonth.FEB, SymMonth.APR, SymMonth.JUNE, SymMonth.AUG, SymMonth.OCT, SymMonth.DEC]);

    //register(new CME12("DC", 0.01, 20, "Class III Milk", 1, MONDAY, FuturesCategory.MEAT));
    //registerIQ(new CME12("@DA", 0.01, 20, "Class III Milk", 1, MONDAY, FuturesCategory.MEAT));

    // Grains
    gen("ZC", "ZC", "ZC", "ZCE", "CBOT", .25, 1, 50, "Corn", FuturesCategory.GRAIN, BDEOM(15, 1), [SymMonth.MAR, SymMonth.MAY, SymMonth.JULY, SymMonth.SEPT, SymMonth.DEC]);
    gen("XC", "XN", "XC", "XC", "CBOT", .125, 1, 10, "CBOT mini-sized Corn Futures", FuturesCategory.GRAIN, BDEOM(15, 1), [SymMonth.MAR, SymMonth.MAY, SymMonth.JULY, SymMonth.SEPT, SymMonth.DEC]);
    gen("ZL", "ZL", "ZL", "ZLE", "CBOT", .01, 1, 600, "Soybean Oil", FuturesCategory.GRAIN, BDEOM(15, 1), [SymMonth.MAR, SymMonth.MAY, SymMonth.JULY, SymMonth.AUG, SymMonth.SEPT, SymMonth.OCT, SymMonth.DEC]);
    gen("ZM", "ZM", "ZM", "ZME", "CBOT", .1, 1, 100, "Soybean Meal", FuturesCategory.GRAIN, BDEOM(15, 1), [SymMonth.MAR, SymMonth.MAY, SymMonth.JULY, SymMonth.AUG, SymMonth.SEPT, SymMonth.OCT, SymMonth.DEC]);
    gen("ZO", "ZO", "ZO", "ZOE", "CBOT", .25, 1, 50, "Oats", FuturesCategory.GRAIN, BDEOM(15, 1), [SymMonth.MAR, SymMonth.MAY, SymMonth.JULY, SymMonth.SEPT, SymMonth.DEC]);
    gen("ZR", "ZR", "ZR", "ZRE", "CBOT", .005, 1, 2000, "Rough Rice", FuturesCategory.GRAIN, BDEOM(15, 1), [SymMonth.JAN, SymMonth.MAR, SymMonth.MAY, SymMonth.JULY, SymMonth.SEPT, SymMonth.NOV]);
    gen("ZS", "ZS", "ZS", "ZSE", "CBOT", .25, 1, 50, "Soybeans", FuturesCategory.GRAIN, BDEOM(15, 1), [SymMonth.JAN, SymMonth.MAR, SymMonth.MAY, SymMonth.JULY, SymMonth.AUG, SymMonth.SEPT, SymMonth.NOV]);
    gen("XK", "XK", "XK", "XB", "CBOT", .125, 1, 10, "Mini-Sized Soybeans", FuturesCategory.GRAIN, BDEOM(15, 1), [SymMonth.JAN, SymMonth.MAR, SymMonth.MAY, SymMonth.JULY, SymMonth.AUG, SymMonth.SEPT, SymMonth.NOV]);
    gen("ZW", "ZW", "ZW", "ZWA", "CBOT", .25, 1, 50, "Wheat", FuturesCategory.GRAIN, BDEOM(15, 1), [SymMonth.JAN, SymMonth.MAR, SymMonth.MAY, SymMonth.JULY, SymMonth.SEPT, SymMonth.DEC]);
    gen("KE", "KE", "KE", "KWE", "CBOT", .25, 1, 50, "KC Wheat", FuturesCategory.GRAIN, BDEOM(15, 1), [SymMonth.MAR, SymMonth.MAY, SymMonth.JULY, SymMonth.SEPT, SymMonth.DEC]);
    gen("XW", "XW", "XW", "XW", "CBOT", .125, 1, 10, "Mini-Sized Wheat", FuturesCategory.GRAIN, BDEOM(15, 1), [SymMonth.MAR, SymMonth.MAY, SymMonth.JULY, SymMonth.SEPT, SymMonth.DEC]);

    // Softs
    gen("CC", "CC", "CC", "CCE", "ICEUS", 1, 1, 10, "Cocoa", FuturesCategory.SOFT, EOM(11), [SymMonth.MAR, SymMonth.MAY, SymMonth.JULY, SymMonth.SEPT, SymMonth.DEC]);
    gen("CT", "CT", "CT", "CTE", "ICEUS", .01, 1, 50000, "Cotton No. 2", FuturesCategory.SOFT, EOM(16), [SymMonth.MAR, SymMonth.MAY, SymMonth.JULY, SymMonth.OCT, SymMonth.DEC]);
    gen("KC", "KC", "KC", "KCE", "ICEUS", .05, 1, 37500, "Coffee", FuturesCategory.SOFT, EOM(8), [SymMonth.MAR, SymMonth.MAY, SymMonth.JULY, SymMonth.SEPT, SymMonth.DEC]);
    gen("OJ", "OJ", "OJ", "OJE", "ICEUS", .05, 1, 375, "Orange Juice", FuturesCategory.SOFT, EOM(14), [SymMonth.MAR, SymMonth.MAY, SymMonth.JULY, SymMonth.SEPT, SymMonth.DEC]);
    gen("SB", "SB", "SB", "SBE", "ICEUS", .01, 1, 1120, "Sugar No. 11", FuturesCategory.SOFT, BSOM(1), [SymMonth.MAR, SymMonth.MAY, SymMonth.JULY, SymMonth.OCT]);

    // Energy

    // This one is tricky.  If the 25 of the month is a holiday or weekend, its 4 business days before, otherwise 3.
    energy("CL", "NYMEX", .01, 1000, "Crude Oil", (year, month) {
      var cal = DateTime(year, month, 25);
      int days = 3;
      if (Holidays.isWeekendOrHoliday(cal)) days = 4;
      return getBusinessDaysBeforeDOM(year, month-1, 25, days);
    }, "CL", "CL", "CLE");
    energy("SMO", "SMFE", .01, 100, "Small Crude Oil", DOW(2, FRIDAY, 1), null, null, "SMO");
    energy("BB", "ICE", .01, 1000, "Brent Crude Oil", BSOM2(1), "CB", "BB", "QO");
    energy("QM", "NYMEX", .025, 500, "E-Mini Crude Oil", BDBDPM(25, 4), "QM", "QM", "NQM");
    energy("HO", "NYMEX", 0.0001, 42000, "NY Harbor ULSD", BSOM(1), "HO", "HO", "HOE");
    energy("NG", "NYMEX", 0.001, 10000, "Natural Gas", BSOM(3), "NG", "NG", "NGE");
    energy("QG", "NYMEX", 0.005, 2500, "E-Mini Natural Gas", BSOM(4), "QG", "QG", "NQG");
    energy("RB", "NYMEX", 0.0001, 42000, "RBOB Gasoline", BSOM(1), "RB", "RB", "RBE");

    // EUREX
    gen("FDAX", "DY", "FDAX", "DD", "EUREX", 0.5, 1, 25, "DAX Futures", FuturesCategory.EUREX, DOW(3, FRIDAY), quarterlyMonths());
    gen("FDXS", "JM", "FDXS", "FDXS", "EUREX", 1, 1, 1, "Micro DAX Futures", FuturesCategory.EUREX, DOW(3, FRIDAY), quarterlyMonths());
    gen("FESX", "FX", "FESX", "DSX", "EUREX", 1, 1, 10, "Euro STOXX 50", FuturesCategory.EUREX, DOW(3, FRIDAY), quarterlyMonths());
    gen("FSXE", "JH", "FSXE", "FSXE", "EUREX", 0.5, 1, 1, "Micro Euro STOXX 50", FuturesCategory.EUREX, DOW(3, FRIDAY), quarterlyMonths());
    gen("FGBL", "GG", "FGBL", "DB", "EUREX", 0.01, 1, 1000, "Euro Bund Futures", FuturesCategory.EUREX, DOW(3, FRIDAY), quarterlyMonths());
    gen("FGBM", "HR", "FGBM", "DL", "EUREX", 0.01, 1, 1000, "Euro-Bobl Futures", FuturesCategory.EUREX, DOW(3, FRIDAY), quarterlyMonths());
    gen("FGBS", "HF", "FGBS", "DG", "EUREX", 0.005, 1, 1000, "Euro-Schatz Futures", FuturesCategory.EUREX, DOW(3, FRIDAY), quarterlyMonths());
    gen("FGBX", "GX", "FGBX", "FGBX", "EUREX", 0.02, 1, 1000, "Euro-Buxl Futures", FuturesCategory.EUREX, DOW(3, FRIDAY), quarterlyMonths());
  }
}

class SymbolGenerator
{
  String base, exchange, displayMask="", title;
  double minTick, pointValue=1, displayMagnifier;
  FuturesCategory category;
  ExpBuilder exp;
  List<SymMonth> months;
  ServiceType? srvc;

  SymbolGenerator(this.srvc, this.base, this.exchange, this.minTick, this.displayMagnifier, this.pointValue, this.title, this.category, this.exp, this.months);

  SymbolGenerator.clone(SymbolGenerator gen, {ServiceType? service, String? base, double? minTick, double? pointValue})
      : this(service ?? gen.srvc, base ?? gen.base, gen.exchange, minTick ?? gen.minTick, gen.displayMagnifier,
             pointValue ?? gen.pointValue, gen.title, gen.category, gen.exp, gen.months);

  String get currency => exchange == "EUREX" ? "EUR" : "USD";

  List<InstrumentInfo> generateSymbols(int year, ServiceType s)
  {
    String y = SymbolUtil.getYearStr(year, s == null ? true : s.is2DigitYear());
    List<InstrumentInfo> list=[];
    for(var m in months) {
      list.add(InstrumentInfo.future(s, base, m.code, base + m.code + y, exchange, exp(year, m.index+1), title,
          minTick, pointValue, displayMagnifier, category, currency));
    }
    return list;
  }
}


