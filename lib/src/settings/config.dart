import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:motivewave/src/settings/watch_list_settings.dart';
import 'package:motivewave/src/shared_state/workspace.dart';

class Config extends ChangeNotifier
{
  Workspace _workspace;
  final watchList = WatchListSettings();

  Config(this._workspace);

  Map<String, dynamic> toJson() => { "watchList": watchList };

  fromJSON(Map<String, dynamic> json)
  {
    watchList.fromJSON(json["watchList"]);
  }

  Future<void> save() async
  {
    var f = await _workspace.getConfigFile("mobile_config.json");
    if (f.existsSync()) return;
    var out = f.openWrite();
    out.write(jsonEncode(this));
    await out.flush();
    await out.close();
  }

  Future<void> load() async
  {
    var f = await _workspace.getConfigFile("mobile_config.json");
    if (!f.existsSync()) return;
    fromJSON(jsonDecode(await f.readAsString()));
    notifyListeners();
  }

}