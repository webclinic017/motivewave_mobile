
import 'dart:async';
import 'dart:isolate';
import 'dart:math';
import 'package:dart_numerics/dart_numerics.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:logging/logging.dart';

final log = Logger("General Log");

int MILLIS_IN_MINUTE = 60 * 1000;
int MILLIS_IN_HOUR = 60 * 60 * 1000;
int MILLIS_IN_DAY = 24 * MILLIS_IN_HOUR;
int MILLIS_IN_MONTH = MILLIS_IN_DAY * 30;
int MILLIS_IN_WEEK = MILLIS_IN_DAY * 7;
int MILLIS_IN_YEAR = (365.25 * MILLIS_IN_DAY).toInt();

// Creates a new ID using the current time in millis
// To conserve space it is represented as an unsigned long using a radix of 32
String newId() => DateTime.now().millisecondsSinceEpoch.toUnsigned(64).toRadixString(32);

var _rnd = Random();

// Creates a semi-reliable GUID
// This is the current time millis since Jan 1, 2018 plus a random number between 0 and 99999
String newGUID()
{
  int now = DateTime.now().millisecondsSinceEpoch;
  int base = DateTime.utc(2018, 1, 1, 0, 0, 0, 0, 0).millisecondsSinceEpoch;
  return (now - base).toUnsigned(64).toRadixString(32) + _rnd.nextInt(99999).toUnsigned(64).toRadixString(32);
}

int now() => DateTime.now().millisecondsSinceEpoch;

int midnight()
{
  var now = DateTime.now();
  var lastMidnight = DateTime(now.year, now.month, now.day);
  return lastMidnight.millisecondsSinceEpoch;
}

DateTime dateFromMillis(int ts) => DateTime.fromMillisecondsSinceEpoch(ts, isUtc: true);

bool isDigit(String s, [int idx=0]) => (s.codeUnitAt(idx) ^ 0x30) <= 9;

bool isLetter(String? s, [int idx=0]) =>  s == null || idx >= s.length ? false : s[idx].contains(RegExp(r'[a-zA-Z]'));

bool isDark(BuildContext ctx) => Theme.of(ctx).brightness == ThemeData.dark().brightness;

bool isEnum(dynamic data) {
  final split = data.toString().split('.');
  return split.length > 1 && split[0] == data.runtimeType.toString();
}
bool compareIgnoreCase(String str1, String str2)
{
  if (str1 == null) return str2 == null;
  if (str2 == null) return false;
  return str1.toLowerCase() == str2.toLowerCase();
}


String toStr(dynamic val)
{
  if (val == null) return "";
  return val.toString();
}

bool empty(dynamic val)
{
  if (val == null) return true;
  if (val is double) return val == 0;
  if (val is int) return val == 0;
  if (val is String) return val.isEmpty;
  if (val is List) return val.length == 0;
  return false;
}
void addNotNull(Map<String, dynamic> map, String key, dynamic value)
{
  if (empty(value)) return;
  map[key] = value;
}

double roundDouble(double? val, [int places=2])
{
  if (val == null) return 0.0;
  if (val == 0 || val.isNaN || val.isInfinite || val == double.maxFinite || val == double.minPositive) return val;
  if (places == 0) return val.roundToDouble();
  double mod = pow(10.0, places).toDouble();
  return ((val * mod).round().toDouble() / mod);
}


int roundMinute(int ts)
{
  if (ts == int64MinValue) return ts;
  return (ts/60000).floor()*60000;
}

int roundMinutes(int ts, int minutes)
{
  if (ts == int64MinValue) return ts;
  return (ts/(minutes*60000)).floor()*(minutes*60000);
}

int roundSecond(int ts)
{
  if (ts == int64MinValue) return ts;
  return (ts/1000).floor()*1000;
}

bool of(dynamic val, List<dynamic> vals)
{
  if (val == null || vals == null) return false;
  return vals.contains(val);
}

// Generic Name-Value Pair.  Dart does not appear to have a class for this.
class NVP {
  final String key;
  final String value;
  NVP(this.key, this.value);
}

// Spawns the given function in its own isolate
Future<SendPort> spawnIsolate(void Function(SendPort) isolate, void Function(dynamic) onMsg) async
{
  var completer = Completer<SendPort>();
  var input = ReceivePort();
  input.listen((msg) {
    if (msg is SendPort) completer.complete(msg);
    else onMsg(msg);
  });
  await Isolate.spawn(isolate, input.sendPort);
  return completer.future;
}

int getDecimalPlaces(double val)
{
  if (val == 0.0) return 0;

  String s = val.toString();

  int places = 0;
  bool hasE = false;
  for(int i = s.length-1; i >= 0; i--) {
    var c = s[i];
    if (places == 0 && c == '0') continue;
    if (c == '.' || c == ',') break;
    if (c == 'E') {
      hasE = true;
      break;
    }
    places++;
  }

  if (!hasE) return places;

  // Contains scientific notation, try this method...
  synchronized(cDoubleFormat) {
    s = cDoubleFormat.format(val);
  }
  // Strip everything to the first '.'
  int i = s.indexOf('.');
  if (i < 0) return 0;
  s = stripTrailing(s.substring(i+1),'0');

  return s.length;
}

String stripTrailing(String s, String chars)
{
  if (empty(s)) return s;

  // strip the digits off the end of the string
  int end = s.length;
  while (end > 0 && chars.indexOf(s[end - 1]) >= 0) {
    end--;
  }

  if (end <= 0) return "";
  return s.substring(0, end);
}

String stripLeading(String s, String chars)
{
  if (empty(s)) return s;

  // strip the digits off the beginning of the string
  int begin = 0;
  while (begin < s.length && chars.indexOf(s[begin]) >= 0) {
    begin++;
  }
  if (begin >= s.length) return "";
  return s.substring(begin);
}

String formatMMDDYYYY(DateTime? date)
{
  if (date == null) return "";
  return _MMDDYYYY.format(date);
}

String formatTime(int? timeMillis)
{
  if (timeMillis == null || timeMillis == 0) return "";
  if (timeMillis >= midnight()) return _HHMMSS.format(DateTime(timeMillis));
  return _MMMDDHMMSS.format(DateTime(timeMillis));
}

String formatPer(double? val, [int places=2])
{
  if (val == null) return "";
  return formatDouble(val * 100, places) + "%";
}

String formatDouble(double? val, int places)
{
  if (val == null) return "";
  if (val.isNaN || val.isInfinite) return "";
  return val.toStringAsFixed(places);
}

// Formats the given value to shorten the display be using T - trillions, B - billions, M - millions, K - thousands
String formatMK(double? val)
{
  if (val == null) return "";
  if (val >= 1000000000000 || val <= -1000000000000) {
    double d = val / 1000000000000;
    if (d < 100) return formatDouble(d, 1) + "T";
    return formatDouble(d, 0) + "T";
  }
  if (val >= 1000000000 || val <= -1000000000) {
    double d = val / 1000000000;
    if (d < 100) return formatDouble(d, 1) + "B";
    return formatDouble(d, 0) + "B";
  }
  if (val >= 10000000 || val <= -10000000) {
    double d = val / 1000000;
    if (d < 100) return formatDouble(d, 1) + "M";
    return formatDouble(d, 0) + "M";
  }
  if (val >= 1000000 || val <= -1000000) {
    double d = val / 1000000;
    if (d < 100) return formatDouble(d, 2) + "M";
    return formatDouble(d, 0) + "M";
  }
  if (val >= 10000 || val <= -10000) {
    if (val % 1000 == 0) return formatDouble(val / 1000,0) + "K";
    double v = roundDouble(val / 1000, 1);
    return formatDouble(v, 1) + "K";
  }
  if (val >= 1000 || val <= -1000) {
    if (val % 1000 == 0) return formatDouble(val / 1000,0) + "K";
    else if (val % 100 == 0) {
      return formatDouble(roundDouble(val / 1000, 1), 1) + "K";
    }
  }

  int v = val.toInt();
  if (v == val) return v.toString();

  if (val >= 1000 || val <= -1000) return formatShort(val, 3);
  if (val >= 100 || val <= -100) return formatShort(val, 4);
  if (val >= 10 || val <= -10) return formatShort(val, 5);
  if (val >= 1 || val <= -1) return formatShort(val, 6);
  if (val < 0.00000001 && val > -0.00000001) return "0.0";
  return formatShort(val, 8);
}

String formatShort(double? val, int places)
{
  if (val == null) return "";
  if (val.isNaN || val.isInfinite) return "";

  if (val > -1.0 && val < 1.0) {
    // need to account for scientific notation
    switch(places) {
      case 0: return double0Place.format(val);
      case 1: return max1Place.format(val);
      case 2: return max2Places.format(val);
      case 3: return max3Places.format(val);
      case 4: return max4Places.format(val);
      case 5: return max5Places.format(val);
      case 6: return max6Places.format(val);
      case 7: return max7Places.format(val);
      case 8: return max8Places.format(val);
      default:
        String pattern = "0.";
        for(int i=0; i < places; i++) pattern += "#";
        return NumberFormat(pattern, "en_US").format(val);
    }
  }

  // round the value in case it is a higher precision
  return doubleFormat.format(roundDouble(val, places));
}

var intFormat = NumberFormat("###,###,###,###", "en_US");
var doubleFormat = NumberFormat("##############.###########", "en_US");
var double0Place = NumberFormat("0", "en_US");
var max1Place = NumberFormat("#############0.#", "en_US");
var max2Places = NumberFormat("############0.##", "en_US");
var max3Places = NumberFormat("############0.###", "en_US");
var max4Places = NumberFormat("0.####", "en_US");
var max5Places = NumberFormat("0.#####", "en_US");
var max6Places = NumberFormat("0.######", "en_US");
var max7Places = NumberFormat("0.#######", "en_US");
var max8Places = NumberFormat("##############.########", "en_US");

var _MMDDYYYY = DateFormat("MM/dd/yyyy");
var _HHMMSS = DateFormat("hh:mm:ss");
var _MMMDDHMMSS = DateFormat("MMM-dd H:mm:ss");
