import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:motivewave/src/shared_state/bar.dart';
import 'package:motivewave/src/shared_state/bar_size.dart';
import 'package:motivewave/src/shared_state/instrument.dart';
import 'package:motivewave/src/shared_state/time_sale.dart';
import 'package:motivewave/src/shared_state/workspace.dart';
import 'package:motivewave/src/util/destroyable.dart';
import 'package:motivewave/src/util/observable.dart';
import 'package:motivewave/src/util/util.dart';

class Ticker implements Destroyable
{
  // Observable values
  Observable<double> bid = Observable(0), bidSize = Observable(0), ask = Observable(0), askSize = Observable(0), last = Observable(0),
      lastSize = Observable(0), change = Observable(0), changePer = Observable(0), invChange = Observable(0), invChangePer = Observable(0), prevClose = Observable(0),
      open = Observable(0), high = Observable(0), low = Observable(0),
      low52 = Observable(0), high52 = Observable(0), lowCalendarYear = Observable(0), highCalendarYear = Observable(0),
      marketCap = Observable(0), pe = Observable(0), eps = Observable(0), dividendAmount = Observable(0), dividendYield = Observable(0), settle = Observable(0),
      dayVolume = Observable(0), yesterdayVolume = Observable(0), netAssetValue = Observable(0), openInterest = Observable(0),
      percentOffOpen = Observable(0), percentOffHigh = Observable(0), percentOffLow = Observable(0);
  Observable<int> lastTime = Observable(0);
  ObservableNull<DateTime> dividendDate = ObservableNull(null);
  ObservableNull<String> lastExchange = ObservableNull(null);
  ObservableNull<TimeAndSale> lastTimeAndSale = ObservableNull(null);

  final Instrument instrument;
  List _observers = [];
  final timeSaleHistory = <TimeAndSale>[];
  final minuteBars = <Bar>[];

  // This should only be called by Tickers below
  Ticker(this.instrument);

  String format(String prop)
  {
    switch(prop) {
      case "bid": return formatPrice(bid);
      case "bidSize": return formatMK(bidSize.state);
      case "ask": return formatPrice(bid);
      case "askSize": return formatMK(askSize.state);
      case "last": return formatPrice(bid);
      case "lastSize": return formatMK(lastSize.state);
      case "open": return formatPrice(open);
      case "high": return formatPrice(high);
      case "low": return formatPrice(low);
      case "settle": return formatPrice(settle);
      case "openInterest": return formatMK(openInterest.state);
      case "prevClose": return formatPrice(prevClose);
      case "high52": return formatPrice(high52);
      case "low52": return formatPrice(low52);
      case "highCalendarYear": return formatPrice(highCalendarYear);
      case "lowCalendarYear": return formatPrice(lowCalendarYear);
      case "dayVolume": return formatMK(dayVolume.state);
      case "yesterdayVolume": return formatMK(yesterdayVolume.state);
      case "change": return formatPrice(change);
      case "changePer": return formatPer(changePer.state, 2);
      case "invChange": return formatPrice(invChange);
      case "invChangePer": return formatPer(invChangePer.state, 2);
      case "percentOffOpen": return formatPrice(percentOffOpen);
      case "percentOffHigh": return formatPrice(percentOffHigh);
      case "percentOffLow": return formatPrice(percentOffLow);
      case "marketCap": return formatMK(marketCap.state);
      case "netAssetValue": return formatMK(netAssetValue.state);
      case "pe": return formatDouble(pe.state, 2);
      case "eps": return formatShort(eps.state, 3);
      case "dividendAmount": return formatShort(dividendAmount.state, 3);
      case "dividendYield": return formatPer(dividendYield.state, 2);
      case "lastExchange": return lastExchange.state??"";
      case "expires": return formatMMDDYYYY(instrument.expires);
      case "dividendDate": return formatMMDDYYYY(dividendDate.state);
      case "lastTime": return formatTime(lastTime.state);
    }
    return "";
  }

  void updateChange()
  {
    double lastPrice = last.state;
    if (lastPrice == 0.0) {
      if (bid.state == 0 || ask.state == 0) return;
      // Use the midpoint
      lastPrice = instrument.round((bid.state + ask.state)/2);
    }
    double first = prevClose.state;
    //if (Config.isChangeUseSettle() && settle != 0) first = settle;
    if (settle.state != 0) first = settle.state;

    if (first == 0.0) first = open.state;
    if (first != 0.0) {
      change.update(instrument.round(lastPrice - first));
      invChange.update(instrument.round(1.0/lastPrice - 1.0/first));
      changePer.update(roundDouble(change.state / first, 5));
      invChangePer.update(roundDouble(invChange.state / (1.0/first), 4));
    }

    if (open.state != 0.0) percentOffOpen.update(first == 0 ? 0 : roundDouble((lastPrice - open.state)/ first, 4));
    if (high.state != 0.0) percentOffHigh.update(first == 0 ? 0 : roundDouble((high.state - lastPrice)/ first, 4));
    if (low.state != 0.0) percentOffLow.update(first == 0 ? 0 : roundDouble((lastPrice - low.state)/ first, 4));
  }

  String formatPrice(Observable<double> val) => instrument.formatPrice(val.state);

  void record(TimeAndSale ts)
  {
    // Update bid/ask/last
    last.update(ts.price);
    lastSize.update(ts.size);
    lastTime.update(ts.time);
    bid.update(ts.bid);
    bidSize.update(ts.bidSize);
    ask.update(ts.ask);
    askSize.update(ts.askSize);
    lastExchange.update(ts.exchange);

    timeSaleHistory.add(ts);
    var bar = minuteBars.isEmpty ? null : minuteBars.last;
    if (bar == null || ts.time >= bar.endTime) {
      if (bar != null) bar.complete = true;
      minuteBars.add(Bar.fromTS(BarSize.minute(1), roundMinute(ts.time), ts));
    }
    else bar.update(ts);

    // TODO: update the daily volume profile(s)

    lastTimeAndSale.update(ts);
    updateChange();
  }

  // These methods keep track of the observers of this ticker.
  // When an observer is first added, a subscription is created for the ticker.
  // When the last observer is removed, the subscription is cancelled.
  void addObserver(Object o)
  {
    bool wasEmpty = _observers.isEmpty;
    if (!_observers.contains(o)) _observers.add(o);
    if (wasEmpty) {
      var srvc = instrument.connectionID.service;
      if (srvc == null) return;
      srvc.beginUpdate();
      srvc.subscribeL1(this);
      srvc.endUpdate();
    }
  }

  void removeObserver(Object o)
  {
    _observers.remove(o);
    if (_observers.isEmpty) {
      // We should run this a little latter
      Future.delayed(Duration(seconds: 10), () {
        if (_observers.isEmpty) {
          var srvc = instrument.connectionID.service;
          if (srvc == null) return;
          srvc.beginUpdate();
          srvc.unsubscribeL1(this);
          srvc.endUpdate();
        }
      });
    }
  }

  @override
  void destroy()
  {
  }
}

class Tickers
{
  Workspace _workspace;
  var _all = <Ticker>[];
  var _keyMap = <String, Ticker>{};

  Tickers(this._workspace);

  Ticker? byKey(String key)
  {
    var tkr = _keyMap[key];
    if (tkr != null) return tkr;
    var instr = _workspace.instruments.findByKey(key);
    if (instr == null) return null;
    tkr = Ticker(instr);
    _keyMap[instr.key] = tkr;
    _all.add(tkr);
    return tkr;
  }
}