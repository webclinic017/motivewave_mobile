import 'package:motivewave/src/shared_state/bar_size.dart';
import 'package:motivewave/src/shared_state/time_sale.dart';
import 'package:motivewave/src/util/enums.dart';

class Bar {

  double _open=0, _high=0, _low=0, _close=0, _volume=0;
  final int startTime;
  final BarSize barSize;
  int _endTime=0;
  bool complete = false;

  Bar.fromTS(this.barSize, this.startTime, TimeAndSale ts)
  {
    if (barSize.type == BarSizeType.LINEAR) _endTime = startTime + barSize.sizeMillis;
    else _endTime = startTime;
    _open = _high = _low = _close = ts.price;
    _volume = ts.price;
  }

  Bar(this.barSize, this.startTime, this._open, this._high, this._low, this._close, this._volume)
  {
    if (barSize.type == BarSizeType.LINEAR) _endTime = startTime + barSize.sizeMillis;
    else _endTime = startTime;
    complete = true;
  }

  double get open => _open;
  double get high => _high;
  double get low => _low;
  double get close => _close;
  double get volume => _volume;
  int get endTime => _endTime;

  bool update(TimeAndSale ts)
  {
    if (barSize.type == BarSizeType.LINEAR) {
      if (ts.time > _endTime) return false;
      _volume += ts.size;
      if (ts.price > _high) _high = ts.price;
      if (ts.price < _low) _low = ts.price;
      _close = ts.price;
      return true;
    }

    // TODO: handle other bar types
    return false;
  }
}