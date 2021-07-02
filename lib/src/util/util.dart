
import 'dart:async';
import 'dart:isolate';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:logging/logging.dart';

final log = Logger("General Log");

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

bool isDigit(String s, [int idx=0]) => (s.codeUnitAt(idx) ^ 0x30) <= 9;

bool isLetter(String s, [int idx=0]) =>  s == null || idx >= s.length ? false : s[idx].contains(RegExp(r'[a-zA-Z]'));

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
  if (val is String) return val == "";
  if (val is List) return val.length == 0;
  return false;
}
void addNotNull(Map<String, dynamic> map, String key, dynamic value)
{
  if (empty(value)) return;
  map[key] = value;
}

double roundDouble(double value, int places)
{
  double mod = pow(10.0, places);
  return ((value * mod).round().toDouble() / mod);
}

bool of(dynamic val, List<dynamic> vals)
{
  if (val == null || vals == null) return false;
  return vals.contains(val);
}

// Generic Name-Value Pair.  Dart does not appear to have a class for this.
class NVP {
  final String key;
  final Object value;

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

String formatMMDDYYYY(DateTime date)
{
  if (date == null) return "";
  return DateFormat("MM/dd/yyyy").format(date);
}

