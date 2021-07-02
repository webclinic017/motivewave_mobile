
import 'package:motivewave/src/service/service.dart';
import 'package:motivewave/src/service/service_descriptor.dart';
import 'package:motivewave/src/shared_state/exchange.dart';
import 'package:motivewave/src/shared_state/instrument.dart';
import 'package:motivewave/src/shared_state/instrument_info.dart';
import 'package:motivewave/src/shared_state/watchlist.dart';
import 'package:motivewave/src/util/enums.dart';
import 'package:motivewave/src/util/symbol_util.dart';
import 'package:motivewave/src/util/util.dart';

class CQGDescriptor extends ServiceDescriptor {

  //{this.help, this.disclaimer, this.demoUrl, this.liveUrl}
  CQGDescriptor() : super(ServiceType.CQG, "CQG");

  @override
  bool get requiresAuthentication => true;
  @override
  bool get supportsUsername => true;
  @override
  bool get supportsPassword => true;
  @override
  bool get supportsConnectionChoice => true;

  @override
  List<NVP> get connections => [NVP("Live", "LIVE"), NVP("Demo", "DEMO")];

  @override
  bool supportsLevel2(Instrument instr) => true;

  @override
  List<InstrumentInfo> get defaultInstruments
  {
    List<InstrumentInfo> l = SymbolUtil.generateCQG();
    l.addAll([InstrumentInfo.indicator("DJIUP", "NYSE Advancing Issues", "USD", "NONE", 1),
              InstrumentInfo.indicator("DJIDN", "NYSE Declining Issues", "USD", "NONE", 1),
              InstrumentInfo.indicator("NASIUP", "NASDAQ Advancing Issues", "USD", "NONE", 1),
              InstrumentInfo.indicator("NASIDN", "NASDAQ Declining Issues", "USD", "NONE", 1),
              InstrumentInfo.indicator("DJTIC", "NYSE TICK", "USD", "NONE", 1),
              InstrumentInfo.indicator("NASTIC", "NASDAQ TICK", "USD", "NONE", 1),
              InstrumentInfo.indicator("DJTRN", "NYSE TRIN", "USD", "NONE", 1),
              InstrumentInfo.indicator("NASTRN", "NASDAQ TRIN", "USD", "NONE", 1)]);
    return l;
  }

  @override
  List<Exchange> get exchanges =>
  [ Exchange("CBO"), Exchange("AGORA-X"), Exchange("BGC"), Exchange("BM&F","Brazil/Globex (BM&F)"),
    Exchange("BTEC UST","BrokerTec US Treasuries (BTEC UST)"), Exchange("BMDX","Bursa Malaysia Derivatives Exchange/Globex (BMDX)"),
    Exchange("CBOT","Chicago Board of Trade"), Exchange("GLOBEX","Global Exchange"), Exchange("CFE","Chicago Futures Exchange"),
    Exchange("CME","Chicago Mercantile Exchange"), Exchange("COMEX"), Exchange("DME","Dubai Mercantile Exchange"), Exchange("ELX"),
    Exchange("EUREX"), Exchange("ECX","European Climate Exchange"), Exchange("EEX","European Energy Exchange"), Exchange("GOVEX"),
    Exchange("HKFE","Hong Kong Futures Exchange"), Exchange("ICE"), Exchange("IDEM","Italian Derivatives Market"), Exchange("JSE","Johannesburg Stock Exchange"),
    Exchange("KCBOT","Kansas City Board of Trade"), Exchange("LIFFE","Liffe Commodities London"), Exchange("LME","London Metal Exchange"),
    Exchange("MEFF","Mercado Espanol de Futuros Financieros"), Exchange("MDX","Mexican Derivatives Exchange"), Exchange("MGEX","Minneapolis Grain Exchange"),
    Exchange("BDM","Montreal Exchange"), Exchange("OMX"), Exchange("NYMEX","New York Mercantile Exchange"), Exchange("NZX","New Zealand Exchange"),
    Exchange("NZFOE","New Zealand Futures and Options Exchange"), Exchange("NYMEXG","NYMEX/GLOBEX"), Exchange("NYBOT","New York Board of Trade"),
    Exchange("OSE","Osaka Securities Exchange"), Exchange("RTS","Russian Trading System"), Exchange("SGX","Singapore Exchange"),  Exchange("SFE","Sydney Futures Exchange"),
    Exchange("TFEX","Thailand Futures Exchange"), Exchange("TOCOM","Tokyo Commodity Exchange"), Exchange("TFX","Tokyo Financial Exchange"),
    Exchange("TGE","Tokyo Grain Exchange"), Exchange("TRKDEX","Turkish Derivatives Exchange"), Exchange("NONE","None") ];

  @override
  List<WatchList> get watchlists
  {
    var symbols = SymbolUtil.generateCQG();
    return [createFuturesWL("Indices", symbols, FuturesCategory.INDEX),
            createFuturesWL("Energies", symbols, FuturesCategory.ENERGY),
            createFuturesWL("Grains", symbols, FuturesCategory.GRAIN),
            createFuturesWL("Metals", symbols, FuturesCategory.METAL),
            createFuturesWL("Currencies", symbols, FuturesCategory.CURRENCY),
            createFuturesWL("Financials", symbols, FuturesCategory.FINANCIAL),
            createFuturesWL("Meats", symbols, FuturesCategory.MEAT),
            createFuturesWL("Softs", symbols, FuturesCategory.SOFT)];
  }

}