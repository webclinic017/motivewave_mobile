
import 'package:motivewave/src/util/enums.dart';

class BarSize
{
  final BarSizeType type;
  final BarInterval intervalType;
  final int sizeMillis;
  final int interval, reverseInterval;

  static final _key2BarSize = <String,BarSize>{};

  BarSize._(this.type, this.intervalType, this.sizeMillis, this.interval, this.reverseInterval);


  static BarSize minute(int minutes)
  {
    var t = BarSizeType.LINEAR;
    var bi = BarInterval.MINUTE;
    var key = t.asString() + ":" + bi.asString() + ":" + minutes.toString();
    var bs = _key2BarSize[key];
    if (bs == null) bs = _key2BarSize[key] = BarSize._(t, bi, minutes*6000, minutes, -1);
    return bs;
  }

  static BarSize second(int seconds)
  {
    var t = BarSizeType.LINEAR;
    var bi = BarInterval.SECOND;
    var key = t.asString() + ":" + bi.asString() + ":" + seconds.toString();
    var bs = _key2BarSize[key];
    if (bs == null) bs = _key2BarSize[key] = BarSize._(t, bi, seconds*1000, seconds, -1);
    return bs;
  }

  static BarSize millisecond(int ms)
  {
    var t = BarSizeType.LINEAR;
    var bi = BarInterval.MILLISECOND;
    var key = t.asString() + ":" + bi.asString() + ":" + ms.toString();
    var bs = _key2BarSize[key];
    if (bs == null) bs = _key2BarSize[key] = BarSize._(t, bi, ms, ms, -1);
    return bs;
  }

  static BarSize day(int days)
  {
    var t = BarSizeType.LINEAR;
    var bi = BarInterval.DAY;
    var key = t.asString() + ":" + bi.asString() + ":" + days.toString();
    var bs = _key2BarSize[key];
    if (bs == null) bs = _key2BarSize[key] = BarSize._(t, bi, days*24*60*6000, days, -1);
    return bs;
  }

  static BarSize week(int weeks)
  {
    var t = BarSizeType.LINEAR;
    var bi = BarInterval.WEEK;
    var key = t.asString() + ":" + bi.asString() + ":" + weeks.toString();
    var bs = _key2BarSize[key];
    if (bs == null) bs = _key2BarSize[key] = BarSize._(t, bi, weeks*7*24*60*6000, weeks, -1);
    return bs;
  }

  static BarSize month(int months)
  {
    var t = BarSizeType.LINEAR;
    var bi = BarInterval.MONTH;
    var key = t.asString() + ":" + bi.asString() + ":" + months.toString();
    var bs = _key2BarSize[key];
    if (bs == null) bs = _key2BarSize[key] = BarSize._(t, bi, months*30*24*60*6000, months, -1);
    return bs;
  }

}