

// Base class for Time and Sale
// This class has the minimal amount of data to limit memory usage.
// Derived classes contain more detail and are used by brokers/data services that provide more information
import 'package:motivewave/src/shared_state/ticker.dart';

class TimeAndSale
{
  final int time;
  final double price, size;
  final Ticker ticker;

  TimeAndSale(this.ticker, this.time, this.price, this.size);

  double get bid => null;
  double get bidSize => null;
  double get ask => null;
  double get askSize => null;

  int get orderId => null;
  int get aggOrderId => null;

  bool get atAsk => null;

  String get exchange => null;
}

class BidAskTimeAndSale extends TimeAndSale
{
  final double bid, ask;
  final bool atAsk;

  BidAskTimeAndSale(Ticker ticker, int time, double price, double size, this.bid, this.ask, this.atAsk) : super(ticker, time, price, size);

}

class BidAskSizeTimeAndSale extends TimeAndSale
{
  final double bid, bidSize, ask, askSize;
  final bool atAsk;

  BidAskSizeTimeAndSale(Ticker ticker, int time, double price, double size, this.bid, this.bidSize, this.ask, this.askSize, this.atAsk) : super(ticker, time, price, size);

}

class FullTimeAndSale extends TimeAndSale
{
  final double bid, bidSize, ask, askSize;
  final bool atAsk;
  final int orderId, aggOrderId;
  final String exchange;

  FullTimeAndSale(Ticker ticker, int time, double price, double size, this.bid, this.bidSize, this.ask, this.askSize, this.atAsk, this.orderId, this.aggOrderId, this.exchange) : super(ticker, time, price, size);

}