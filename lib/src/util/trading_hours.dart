
import 'package:intl/intl.dart';
import 'package:timezone/timezone.dart';
import 'package:motivewave/src/util/extensions.dart';

class TradingHours {

  static const String FXCM = "FXCM";
  static const String CRYPTO = "CRYPTO";
  static const String CRYPTO_UTC = "CRYPTO_UTC";
  static const String FOREX = "FOREX";
  static const String NYSE = "NYSE";
  static const String OTC = "OTC";
  static const String NASDAQ = "NASDAQ";
  static const String TSX = "TSX";
  static const String PFG_FOREX = "PFG_FOREX";
  static const String IB_FOREX = "IB_FOREX";
  static const String TS_FOREX = "TS_FOREX";
  static const String MB_FOREX = "MB_FOREX";
  static const String OANDA = "OANDA";
  static const String CHX = "CHX";
  static const String XETRA = "XETRA";
  static const String ASX = "ASX";
  static const String NSE = "NSE";
  static const String NSE_IDX = "NSE_IDX";
  static const String MCX = "MCX";
  static const String NFO = "NFO";
  static const String CDS = "CDS";

  static const String CME_ENERGY = "CME_ENERGY";
  static const String CME_CURRENCY = "CME_CURRENCY";
  static const String CME_METALS = "CME_METALS";
  static const String CME_WEATHER = "CME_WEATHER";
  static const String CME_EQUITY = "CME_EQUITY";
  static const String CME_INTEREST = "CME_INTEREST";
  static const String CME_AGRICULTURE = "CME_AGRICULTURE";
  static const String CME_WHEAT = "CME_WHEAT";

  static const String ICE_SUGAR11 = "ICE_SUGAR11";
  static const String ICE_SUGAR16 = "ICE_SUGAR16";
  static const String ICE_COTTON2 = "ICE_COTTON2";
  static const String ICE_COFFEE = "ICE_COFFEE";
  static const String ICE_COCOA = "ICE_COCOA";
  static const String ICE_FCOJ_A = "ICE_FCOJ_A";
  static const String ICE_GRAINS = "ICE_GRAINS";
  static const String ICE_RUSSELL = "ICE_RUSSELL";
  static const String ICE_CURRENCY = "ICE_CURRENCY";
  static const String ICE_METALS = "ICE_METALS";
  static const String ICE_ENERGY = "ICE_ENERGY";
  static const String ICE_CREDIT = "ICE_CREDIT";

  static const String BRENT_CRUDE = "BRENT_CRUDE";

  // JPX (Japan Exchage Group) Exchanges
  static const String JPX_TSE = "JPX_TSE";
  static const String JPX_EQUITY_INDEX_FUTURES = "JPX_EQUITY_INDEX_FUTURES";
  static const String JPX_NIKKEI_FUTURES = "JPX_NIKKEI_FUTURES";
  static const String JPX_TAIEX_FUTURES = "JPX_TAIEX_FUTURES";
  static const String JPX_JGB_FUTURES = "JPX_JGB_FUTURES";


  String name;
  String label;
  TimeZone timeZone;
  Map<int, DailyHours> regularHours = {};
  Map<int, DailyHours> extendedHours = {};
  bool filterEnabled = true;
  List<String> exchanges = [];
  bool weekBeginSaturday=false;
  int minutesInWeekRth=-1, minutesInWeekExt=-1;
  //BarBuildSettings barBuildSettings;

  //private Calendar calendar;
  bool hasSession2RTH, hasSession2EXT;


  TradingHours(this.name, this.label, this.timeZone);

  void addExchange(String exch) { if (!exchanges.contains(exch)) exchanges.add(exch); }

  void addMonFriRegularHours(int startHour, int startMinute, int endHour, int endMinute,
      [int startHour2=-1, int startMinute2, int endHour2 = -1, int endMinute2])
  {
    setRegularHours(1, startHour, startMinute, endHour, endMinute, startHour2, startMinute2, endHour2, endMinute2);
    setRegularHours(2, startHour, startMinute, endHour, endMinute, startHour2, startMinute2, endHour2, endMinute2);
    setRegularHours(3, startHour, startMinute, endHour, endMinute, startHour2, startMinute2, endHour2, endMinute2);
    setRegularHours(4, startHour, startMinute, endHour, endMinute, startHour2, startMinute2, endHour2, endMinute2);
    setRegularHours(5, startHour, startMinute, endHour, endMinute, startHour2, startMinute2, endHour2, endMinute2);
  }

  void addMonFriExtendedHours(int startHour, int startMinute, int endHour, int endMinute,
                             [int startHour2=-1, int startMinute2, int endHour2 = -1, int endMinute2])
  {
    setExtendedHours(1, startHour, startMinute, endHour, endMinute, startHour2, startMinute2, endHour2, endMinute2);
    setExtendedHours(2, startHour, startMinute, endHour, endMinute, startHour2, startMinute2, endHour2, endMinute2);
    setExtendedHours(3, startHour, startMinute, endHour, endMinute, startHour2, startMinute2, endHour2, endMinute2);
    setExtendedHours(4, startHour, startMinute, endHour, endMinute, startHour2, startMinute2, endHour2, endMinute2);
    setExtendedHours(5, startHour, startMinute, endHour, endMinute, startHour2, startMinute2, endHour2, endMinute2);
  }

  void setRegularHours(int dow, int startHour, int startMinute, int endHour, int endMinute,
      [int startHour2=-1, int startMinute2, int endHour2 = -1, int endMinute2])
  {
    int start = _toMillis(startHour, startMinute);
    int end = _toMillis(endHour, endMinute);
    int start2 = startHour2 == -1 ? -1 : _toMillis(startHour2, startMinute2);
    int end2 = endHour2 == -1 ? -1 : _toMillis(endHour2, endMinute2);
    setRegularHoursDH(dow, DailyHours(dow, start, end, start2, end2, true));
  }

  void setRegularHoursDH(int dow, DailyHours hrs)
  {
    if (hrs == null || !hrs.enabled) regularHours.remove(dow);
    else regularHours[dow] = hrs;
    hasSession2RTH=null;
  }

  DailyHours getRegularHoursByDay(int dow) => regularHours[dow];

  DailyHours getRegularHours(DateTime time) => getHours(time, true);

  DailyHours getExtendedHoursByDay(int dow) => extendedHours[dow];

  DailyHours getExtendedHours(DateTime time) => getHours(time, false);

  void setExtendedHours(int dow, int startHour, int startMinute, int endHour, int endMinute,
      [int startHour2=-1, int startMinute2, int endHour2 = -1, int endMinute2])
  {
    int start = _toMillis(startHour, startMinute);
    int end = _toMillis(endHour, endMinute);
    int start2 = startHour2 == -1 ? -1 : _toMillis(startHour2, startMinute2);
    int end2 = endHour2 == -1 ? -1 : _toMillis(endHour2, endMinute2);
    setExtendedHoursDH(dow, DailyHours(dow, start, end, start2, end2, true));
  }

  void setExtendedHoursDH(int dow, DailyHours hrs)
  {
    if (hrs == null || !hrs.enabled) extendedHours[dow] = null;
    else extendedHours[dow] = hrs;
    hasSession2EXT=null;
  }

  void clearExtendedHours() { extendedHours.clear(); }

  void clearRegularHours() { regularHours.clear(); }

  /*
  int calcTradingTime(DateTime start, DateTime end, bool rth)
  {
    if (start > end) {
      var tmp = start;
      start = end; end = tmp;
    }
    var origStart = start;
    var hrs = getHours(start, rth);

    while (start < end && hrs == null) {
      start = start.add(Duration(days: 1));
      hrs = getHours(start, rth);
    }
    if (hrs == null) return 0; // unable to find any trading hours (maybe over a weekend or long weekend)
    if (start.difference(end).inDays > 1) return 0; // Is this even possible?

    int startTime = start.timeOfDayMillis;
    if (startTime >= hrs.endTime) {
      startTime = start.add(Duration(days: 1)).timeOfDayMillis;
    }
    if (start > origStart) startTime = hrs.startTime;
    if (hrs.startTime < 0 && startTime >= hrs.endTime) {
      startTime = start.add(Duration(days: 1)).timeOfDayMillis;
      if (startTime < hrs.startTime) startTime = hrs.startTime;
    }

    // calculate the end day
    var endHrs = getHours(end, rth);
    var _end = end;
    while (_end > start && endHrs == null) {
      _end = end.subtract(Duration(days: 1));
      endHrs = getHours(_end, rth);
    }
    if (endHrs == null) return 0;
    long endDay = Util.getMidnight(_end, timeZone);
    int endTime = _end.timeOfDayMillis;
    if (endTime >= endHrs.getEndTime()) {
      endDay = Util.getNextDayMidnight(endDay, timeZone);
      endTime = (int)(end - endDay);
    }

    if (endDay < startDay) {
      return hrs.getRemainingTime(startTime);
    }
    if (endDay == startDay && endTime == startTime) return 0;

    if (end - start <= Util.MILLIS_IN_DAY) {
      endDay = Util.getMidnight(end, timeZone);
      endTime = (int)(end - endDay);
      if (endTime > hrs.getEndTime() && startTime < 0) {
        // Negative End Time
        endDay = Util.getNextDayMidnight(end, timeZone);
        endTime = (int)(end - endDay);
        if (endDay <= startDay) {
          if (endTime < startTime) return 0;
          return hrs.getTradingTime(startTime, endTime);
        }
      }

      if (startDay + hrs.getEndTime() >= end) {
        return hrs.getTradingTime(startTime, endTime);
      }

      // This may have spanned two trading days
      var hrs2 = rth ? getRegularHours(end) : getExtendedHours(end);
      if (hrs2 == null) return hrs.getRemainingTime(startTime);

      long time1 = hrs.getRemainingTime(startTime);
      long time2 = hrs2.getConsumedTime(endTime);

      return time1 + time2;
    }

    // First Day
    long time = hrs.getRemainingTime(startTime);
    startDay = Util.getNextDayMidnight(startDay, timeZone);

    while(startDay <= endDay) {
      hrs = rth ? getRegularHours(startDay) : getExtendedHours(startDay);
      if (hrs == null) {
        startDay = Util.getNextDayMidnight(startDay, timeZone);
        continue;
      }

      long endOfTradingDay = startDay + hrs.getEndTime();
      if (end < endOfTradingDay) {
        endTime = (int)(end - endDay);
        return time + hrs.getConsumedTime(endTime);
      }
      time += hrs.getTradingTime();
      startDay = Util.getNextDayMidnight(startDay, timeZone);
    }

    return time;
  }*/

  int _toMillis(int hour, int minute) => hour*60*60*1000 + minute*60*1000;

  DailyHours getHours(DateTime time, bool rth)
  {
    Map<int, DailyHours> map = rth ? regularHours : extendedHours;
    int dow = time.weekday;
    var hrs = map[dow];
    // Need to see if the time is within the starting hours of the next day
    var hrs2 = map[dow == 7 ? 1 : dow+1];
    if (hrs == null && hrs2 == null) return null;
    int timeOfDay = time.timeOfDayMillis;
    if (hrs2 == null) return timeOfDay < hrs.endTime ? hrs : null;
    if (hrs2.startTime < 0 && timeOfDay - 24*60*60*1000 >= hrs2.startTime) return hrs2;
    return hrs;
  }
}

class DailyHours
{
  int dayOfWeek;
  int startTime1, endTime1, startTime2 = -1, endTime2 = -1, tradeTime;
  bool enabled=true;

  DailyHours(this.dayOfWeek, this.startTime1, this.endTime1, [this.startTime2, this.endTime2, this.enabled])
  {
    if (hasSecondaryTime()) tradeTime = (endTime1 - startTime1) + (endTime2 - startTime2);
    else tradeTime = (endTime1 - startTime1);
  }

  DailyHours.from(int dow, DailyHours dh)
    : this(dow, dh.startTime1, dh.endTime1, dh.startTime2, dh.endTime2, dh.enabled);


  int get minutesInDay
  {
    int min = (tradeTime/(60*1000)).round();
    if (min <= 0 || min > 1440) return 1440;
    return min;
  }

  int get endTime => hasSecondaryTime() ? endTime2 : endTime;

  int get startTime => hasSecondaryTime() ? (startTime1 < startTime2 ? startTime1 : startTime2) : startTime1;

  bool hasSecondaryTime() =>endTime2 != -1;

  /*
  int getEndOfBar(Bar bar, TimeZone tz)
  {
    if (bar.getBarSize().isIntraday()) return bar.getEndTime();

    // Some bars actually do not have the correct starting time
    // This is especially true of IB
    long startTime = bar.getStartTime();
    long midnight = Util.getMidnight(startTime, tz);
    long nextMidnight = Util.getNextDayMidnight(startTime, tz);
    if (midnight + getStartTime1() != startTime &&
        nextMidnight + getStartTime1() != startTime) {
      if (startTime - midnight >= 15*Util.MILLIS_IN_HOUR) return nextMidnight + getEndTime();
      return midnight + getEndTime();
    }

    startTime -= startTime1;
    return startTime + getEndTime();
  }*/

  bool isValidTime(int time)
  {
    if (time < startTime1) return false;
    if (hasSecondaryTime()) {
      if (startTime1 < 0 && time > endTime2) {
        time -= 24*60*60*1000;
        if (time >= startTime1) return true;
      }

      if (time >= endTime2) return false;
      if (time >= endTime1 && time < startTime2) return false;
      return true;
    }

    if (startTime1 < 0 && time >= endTime1) {
      time -= 24*60*60*1000;
      if (time >= startTime1) return true;
    }

    return time < endTime1;
  }

  int getRemainingTime(int end)
  {
    if (end <= startTime1) return tradeTime;

    if (endTime2 != -1) {
      if (end >= endTime2) return 0;
      if (end >= startTime2) return endTime2 - end;
      if (end >= endTime1) return endTime2 - startTime2;
      return (endTime1 - end) + (endTime2 - startTime2);
    }

    if (end >= endTime1) return 0;
    return endTime1 - end;
  }

  int getTradingTime(int start, int end)
  {
    if (end <= startTime1) return 0;
    if (start < startTime1) start = startTime1;

    if (endTime2 == -1 || end < startTime2) {
      // covered in first time frame
      if (end > endTime1) end = endTime1;
      return end - start;
    }

    // Is there overlap between the times?
    if (start < endTime1 && end > startTime2) {
      if (end > endTime2) end = endTime2;
      return (endTime1 - start) + (end - startTime2);
    }

    if (start >= endTime1 && end <= startTime2) return 0; // inbetween

    if (start < startTime2) start = startTime2;
    if (end > endTime2) end = endTime2;
    return end - start;
  }

  int getConsumedTime(int end) { return tradeTime - getRemainingTime(end); }

  bool isSameHours(DailyHours hrs)
  {
    return startTime1 == hrs.startTime1 &&
        endTime1 == hrs.endTime1 &&
        startTime2 == hrs.startTime2 &&
        endTime2 == hrs.endTime2;
  }

  // Define that two persons are equal if their SSNs are equal
  bool operator ==(dynamic dh) {
    if (!(dh is DailyHours)) return false;
    return dh.dayOfWeek == dayOfWeek && dh.startTime1 == startTime1 && dh.endTime1 == endTime1 &&
           dh.startTime2 == startTime2 && dh.endTime2 == endTime2 && dh.enabled == enabled;
  }

  @override
  // TODO: implement hashCode
  int get hashCode => super.hashCode;

  @override
  String toString()
  {
    return "DailyHours() " + dayOfWeek.toString() + " start: " + format(startTime1) + " end: " + format(endTime2 != -1 ? endTime2 : endTime1);
  }

  String format(int time)
  {
    return DateFormat.Hms().format(DateTime.fromMillisecondsSinceEpoch(time));
  }
}