
import 'dart:convert';
import 'dart:io';

extension DateTimeExt on DateTime {
  int get timeOfDayMillis => hour*60*60*1000 + minute*60*1000 + second*1000 + millisecond;
  bool operator < (DateTime other) => other == null ? false : millisecondsSinceEpoch < other.millisecondsSinceEpoch;
  bool operator <= (DateTime other) => other == null ? false : millisecondsSinceEpoch <= other.millisecondsSinceEpoch;
  bool operator > (DateTime other) => other == null ? true : millisecondsSinceEpoch > other.millisecondsSinceEpoch;
  bool operator >= (DateTime other) => other == null ? true : millisecondsSinceEpoch >= other.millisecondsSinceEpoch;
}

extension FileExt on File {

  Future<void> forEachLine(void Function(String) func) async {
    await openRead().transform(utf8.decoder).transform(new LineSplitter()).forEach(func);
  }
}
