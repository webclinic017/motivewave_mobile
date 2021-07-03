import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:motivewave/src/shared_state/bar.dart';
import 'package:motivewave/src/shared_state/bar_size.dart';
import 'package:motivewave/src/shared_state/instrument.dart';
import 'package:motivewave/src/shared_state/time_sale.dart';
import 'package:motivewave/src/shared_state/workspace.dart';
import 'package:motivewave/src/util/destroyable.dart';
import 'package:motivewave/src/util/observable.dart';
import 'package:motivewave/src/util/util.dart';

class Ticker implements Destroyable {

  // Observable values
  Observable<double> bid = Observable(), bidSize = Observable(), ask = Observable(), askSize = Observable(), last = Observable(),
      lastSize = Observable(), change = Observable(), changePer = Observable(), prevClose = Observable(),
      open = Observable(), high = Observable(), low = Observable(),
      low52 = Observable(), high52 = Observable(), lowCalendarYear = Observable(), highCalendarYear = Observable(),
      marketCap = Observable(), pe = Observable(), eps = Observable(), dividendAmount = Observable(), dividendYield = Observable(), settle = Observable(),
      dayVolume = Observable(), yesterdayVolume = Observable(), netAssetValue = Observable();
  Observable<int> openInterest = Observable(), lastTime = Observable();
  Observable<DateTime> dividendDate = Observable();
  Observable<String> lastExchange = Observable();
  Observable<TimeAndSale> lastTimeAndSale = Observable();

  final Instrument instrument;
  List _observers = [];
  final timeSaleHistory = <TimeAndSale>[];
  final minuteBars = <Bar>[];

  // This should only be called by Tickers below
  Ticker(this.instrument);

  void record(TimeAndSale ts)
  {
    timeSaleHistory.add(ts);
    var bar = minuteBars.isEmpty ? null : minuteBars.last;
    if (bar == null || ts.time >= bar.endTime) {
      if (bar != null) bar.complete = true;
      minuteBars.add(Bar.fromTS(BarSize.minute(1), roundMinute(ts.time), ts));
    }
    else bar.update(ts);

    // TODO: update the daily volume profile(s)

    lastTimeAndSale.update(ts);
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
      srvc!.beginUpdate();
      srvc!.subscribeL1(this);
      srvc!.endUpdate();
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
          srvc!.beginUpdate();
          srvc!.unsubscribeL1(this);
          srvc!.endUpdate();
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

  Ticker? findByKey(String key) => _keyMap[key];

  Ticker get(Instrument instr)
  {
    var tkr = _keyMap[instr.key];
    if (tkr != null) return tkr;
    tkr = Ticker(instr);
    _keyMap[instr.key] = tkr;
    _all.add(tkr);
    return tkr;
  }
}