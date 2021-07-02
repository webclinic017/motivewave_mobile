import 'package:motivewave/src/shared_state/ticker.dart';
import 'package:motivewave/src/shared_state/time_sale.dart';

abstract class MarketData
{
  // time (in millis) when the quote was received
  int received;
  String key; // Instrument key

  MarketData(this.received, this.key);

  void consume(Ticker tkr);
}

class BidAskUpdate extends MarketData
{
  final double bid, bidSize, ask, askSize, last, lastSize;
  final int lastTime;
  final String exchange;

  BidAskUpdate({this.bid, this.bidSize, this.ask, this.askSize, this.last, this.lastSize, this.lastTime, this.exchange, int received, String key}) : super(received, key);

  void consume(Ticker tkr)
  {
    tkr.bid.update(bid);
    tkr.bidSize.update(bidSize);
    tkr.ask.update(ask);
    tkr.askSize.update(askSize);
    tkr.last.update(last);
    tkr.lastSize.update(lastSize);
    tkr.lastExchange.update(exchange);
    tkr.lastTime.update(lastTime);
  }
}

class SummaryUpdate extends MarketData
{
  final double dayVolume, yesterdayVolume, open, high, low, prevClose, settle,
      high52, low52, netAssetValue, dividendYield, pe, eps, dividendAmount, marketCap;
  final DateTime dividendDate;

  SummaryUpdate({this.dayVolume, this.yesterdayVolume, this.open, this.high, this.low, this.prevClose, this.settle, this.high52, this.low52,
                 this.netAssetValue, this.pe, this.eps, this.dividendYield, this.dividendAmount, this.dividendDate, this.marketCap,
    int received, String key}) : super(received, key);

  void consume(Ticker tkr)
  {
    tkr.dayVolume.update(dayVolume);
    tkr.yesterdayVolume.update(yesterdayVolume);
    tkr.open.update(open);
    tkr.high.update(high);
    tkr.low.update(low);
    tkr.prevClose.update(prevClose);
    tkr.settle.update(settle);
    tkr.high52.update(high52);
    tkr.low52.update(low52);
    tkr.netAssetValue.update(netAssetValue);
    tkr.marketCap.update(marketCap);
    tkr.dividendAmount.update(dividendAmount);
    tkr.dividendYield.update(dividendYield);
    tkr.dividendDate.update(dividendDate);
    tkr.pe.update(pe);
    tkr.eps.update(eps);
    tkr.marketCap.update(marketCap);
  }
}

class TimeAndSaleUpdate extends MarketData
{
  final int time, orderId, aggOrderId;
  final String exchange;
  final double price, size, bid, bidSize, ask, askSize;
  final bool atAsk;

  TimeAndSaleUpdate(this.time, this.price, this.size, {this.bid, this.bidSize, this.ask, this.askSize, this.atAsk, this.exchange, this.orderId, this.aggOrderId, int received, String key}) : super(received, key);

  void consume(Ticker tkr)
  {
    if (bid == null) tkr.record(TimeAndSale(tkr, time, price, size));
    else if (bidSize == null) tkr.record(BidAskTimeAndSale(tkr, time, price, size, bid, ask, atAsk ?? price >= ask));
    else if (orderId == null && exchange == null) tkr.record(BidAskSizeTimeAndSale(tkr, time, price, size, bid, bidSize, ask, askSize, atAsk ?? price >= ask));
    else tkr.record(FullTimeAndSale(tkr, time, price, size, bid, bidSize, ask, askSize, atAsk, orderId, aggOrderId, exchange));
  }
}

// Market Depth Snapshot
class MarketDepth extends MarketData
{
  List<double> bidPrices, bidSizes, askPrices, askSizes;
  List<int> bidCounts, askCounts;

  MarketDepth({this.bidPrices, this.bidSizes, this.askPrices, this.askSizes, this.bidCounts, this.askCounts, int received, String key}) : super(received, key);

  void consume(Ticker tkr)
  {
    // TODO Implement
  }
}

class MarketByOrder extends MarketData
{
  MarketByOrder({int received, String key}) : super(received, key);
  void consume(Ticker tkr)
  {
    // TODO Implement
  }
}

