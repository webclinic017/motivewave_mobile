

import 'package:motivewave/src/settings/settings.dart';
import 'package:motivewave/src/shared_state/columns.dart';
import 'package:motivewave/src/util/enums.dart';

class WatchListSettings extends Settings
{
  List<String> get columns => get("columns");
  WatchListView get display => get("display");
  bool get asc => get("asc");
  String get sort => get("sort");

  @override
  Definition get definition => Definition((def) {
    def.map("columns", TickerColumns.defaults);
    def.map("display", WatchListView.TABLE);
    def.map("asc", true);
    def.map("sort", null, String);
  });
}