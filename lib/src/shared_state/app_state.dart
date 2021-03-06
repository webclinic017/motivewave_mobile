import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:motivewave/src/service/service_home.dart';
import 'package:motivewave/src/shared_state/account.dart';
import 'package:motivewave/src/shared_state/watchlist.dart';
import 'package:motivewave/src/shared_state/workspace.dart';
import 'package:motivewave/src/util/util.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:convert';

class AppState extends ChangeNotifier {
  bool _initialized = false;
  String? _acctId, _wlName;
  final _activeWatchList = WatchListNotifier(null);

  bool get initialized => _initialized;

  ValueNotifier<WatchList?> get activeWatchListValue => _activeWatchList;

  WatchList? get activeWatchList {
    if (_activeWatchList.value != null) return _activeWatchList.value!;
    var ws = ServiceHome.workspaces.defaultWs;
    if (ws == null) return null;
    if (_wlName == null) {
      if (ws.watchlists.all.isEmpty) return null;
      var wl = ws.watchlists.all.first;
      _wlName = wl.name;
      activeWatchList = wl;
      return wl;
    }

    var wl = ws.watchlists.find(_wlName!);
    if (wl == null) wl = ws.watchlists.all.first;
    _wlName = wl.name;
    activeWatchList = wl;
    return _activeWatchList.value;
  }

  // Hack: WatchList cannot extend ChangeNotifier, so we need to manually
  // notify an update to the object itself
  void notifyWatchListUpdate() => _activeWatchList.updated();

  set activeWatchList(WatchList? ws) {
    _activeWatchList.value?.unsubscribe();
    print("subscribing");
    ws?.subscribe();
    _activeWatchList.value = ws;
  }

  AppState();

  AppState.fromJSON(Map<String, dynamic> json) {
    _acctId = json["account"];
    _wlName = json["watchList"];
  }

  Map<String, dynamic> toJson() => {
        "account": _acctId,
        "watchList": activeWatchList?.name
      }; // _wlName may have been changed

  Account? get activeAccount =>
      _acctId == null ? null : ServiceHome.accounts.find(_acctId!);

  set activeAccount(Account? acct) {
    _acctId = acct?.id;
    notifyListeners();
  }

  Future<void> save() async {
    final dir = await getApplicationDocumentsDirectory();
    var f = File(dir.path + '/appstate.json');
    print("saving app state: ${f.absolute.path}");
    await f.writeAsString(
        json.encode({"account": _acctId, "watchList": activeWatchList?.name}));
  }

  Future<void> load() async {
    final dir = await getApplicationDocumentsDirectory();
    var f = File(dir.path + '/appstate.json');
    print("loading appstate");
    _wlName = null;
    _acctId = null;
    _activeWatchList.value = null;
    if (f.existsSync()) {
      var c = await f.readAsString();
      Map<String, dynamic> map = json.decode(c);
      _acctId = map["account"];
      _wlName = map["watchList"];
    }
    _initialized = true;
    notifyListeners();
  }
}


class WatchListNotifier extends ValueNotifier<WatchList?>
{
  WatchListNotifier(WatchList? value) : super(value);

  void updated() => notifyListeners();
}