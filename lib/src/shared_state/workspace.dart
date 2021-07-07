import 'package:flutter/foundation.dart';
import 'package:motivewave/src/service/service_home.dart';
import 'package:motivewave/src/service/service_info.dart';
import 'package:motivewave/src/shared_state/exchange.dart';
import 'package:motivewave/src/shared_state/instrument.dart';
import 'package:motivewave/src/shared_state/ticker.dart';
import 'package:motivewave/src/shared_state/watchlist.dart';
import 'package:motivewave/src/util/util.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:io';
import 'dart:convert';

class Workspace {

  final String name; // Workspace name, this must be unique for the user
  late final List<ServiceInfo> connections;
  final String wsBucket; // Name of the bucket in the cloud.  If this is empty the the workspace is local
  late final Workspaces workspaces; // reference to the workspaces directory
  late final Exchanges exchanges;
  late final Instruments instruments;
  late final WatchLists watchlists;
  late final Tickers tickers;

  void _init() {
    exchanges = Exchanges(this);
    instruments = Instruments(this);
    watchlists = WatchLists(this);
    tickers = Tickers(this);
  }

  Workspace(this.name, this.wsBucket, this.connections) { _init(); }

  Workspace.fromJson(Map<String, dynamic> json)
      : name=json["name"], wsBucket=json["wsBucket"]
  {
    _init();
    var conns = <ServiceInfo>[];
    if (json.containsKey('connections')) {
      for(var j in json['connections'] as List) {
        conns.add(ServiceInfo.fromJson(j));
      }
    }
    connections= conns;
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'connections': connections,
    'wsBucket': wsBucket,
  };

  void loadDefaults()
  {
    for(var srvc in connections) {
      var type = srvc.conn.type;
      var desc = ServiceHome.getDescriptor(type);
      if (desc == null) {
        log.warning("Workspace::createDefaults() descriptor not found: $type");
        continue;
      }
      exchanges.addAll(desc.exchanges);
      // toInstrument() will register the instrument in Instruments
      desc.defaultInstruments.forEach((instr) => instruments.add(instr.toInstrument(srvc.connectionID)));
      watchlists.addAll(desc.watchlists);
    }
  }

  Future<Directory> get dir async
  {
    final root = await workspaces.workspacesDir;
    final d = Directory(root.path + '/' + name);
    if (!d.existsSync()) d.createSync();
    return d;
  }

  Future<Directory> get configDir async
  {
    final root = await dir;
    final d = Directory(root.path + '/config');
    if (!d.existsSync()) d.createSync();
    return d;
  }

  Future<File> getConfigFile(String filename) async => File((await configDir).path + "/" + filename);

  Future<Directory> get analysisDir async
  {
    final root = await dir;
    final d = Directory(root.path + '/analysis');
    if (!d.existsSync()) d.createSync();
    return d;
  }


  Future<void> load() async
  {
    var futures = <Future>[];
    futures.add(exchanges.load());
    futures.add(instruments.load());
    futures.add(watchlists.load());

    await Future.wait(futures);
  }

  Future<void> save() async
  {
    var futures = <Future>[];
    futures.add(exchanges.save());
    futures.add(instruments.save());
    futures.add(watchlists.save());

    Future.wait(futures);
  }

}

// Maintains a directory for workspaces
class Workspaces extends ChangeNotifier {
  Directory? _wsDir;
  List<Workspace> _workspaces = [];
  Map<String, Workspace> _nameMap = {};
  bool _initialized = false;
  final _defaultWs = ValueNotifier<Workspace?>(null);


  bool get initialized => _initialized;
  void init() { _initialized = true; }

  ValueNotifier<Workspace?> get defaultWsValue => _defaultWs;
  Workspace? get defaultWs => _defaultWs.value;
  set defaultWs(Workspace? ws) => _defaultWs.value = ws;

  // Gets the workspaces directory.  If it does not exist, it will be created
  Future<Directory> get workspacesDir async  {
    if (_wsDir != null) return _wsDir!;
    final dir = await getApplicationDocumentsDirectory();
    _wsDir = Directory(dir.path + '/workspaces');
    if (!_wsDir!.existsSync()) _wsDir!.createSync();
    return _wsDir!;
  }

  // returns a copy of the workspaces list
  List<Workspace> get workspaces => List<Workspace>.unmodifiable(_workspaces);

  void add(Workspace ws)
  {
    _add(ws);
    notifyListeners();
  }

  void remove(Workspace ws)
  {
    if (!_nameMap.containsKey(ws.name)) return;
    _nameMap.remove(ws.name);
    _workspaces.remove(ws);
    if (defaultWs == ws) _defaultWs.value = null;
    notifyListeners();
  }

  void setAll(List<Workspace> list)
  {
    list.forEach((ws) => _add(ws));
    notifyListeners();
  }

  void _add(Workspace ws)
  {
    if (_nameMap.containsKey(ws.name)) {
      print("Workspaces::load() duplicate workspace: ${ws.name} ignoring.");
      return;
    }
    ws.workspaces = this;
    _nameMap[ws.name] = ws;
    _workspaces.add(ws);
  }

  // Loads the workspaces from the workspaces.json file
  Future<void> load() async {
    var d = await workspacesDir;
    var f = File(d.path + '/workspaces.json');

    print("loading workspaces");
    _nameMap = {};
    _workspaces = [];
    Workspace? defWs;
    if (f.existsSync()) {
      var c = await f.readAsString();
      Map<String, dynamic> map = json.decode(c);
      String defName= map["default"];
      if (map.containsKey("workspaces")) {
        for(var ws in map["workspaces"]) {
          var w = Workspace.fromJson(ws);
          if (w.name == defName) defWs = w;
          _add(w);
        }
      }
    }
    print("workspaces loaded: ${_workspaces.length}");
    if (defWs != null) {
      print("loading default workspace");
      await defWs.load();
      print("exchanges: ${defWs.exchanges.all.length}");
      print("instruments: ${defWs.instruments.all.length}");
      print("watchlists: ${defWs.watchlists.all.length}");

    }
    defaultWsValue.value = defWs;
    _initialized = true;
    notifyListeners();
  }

  // Saves the workspaces to the workspaces file
  Future<void> save() async {
    var d = await workspacesDir;
    var f = File(d.path + '/workspaces.json');
    print("saving workspaces: ${f.absolute.path} count: ${_workspaces.length}");
    await f.writeAsString(json.encode({ "default": defaultWs?.name, "workspaces": _workspaces}));
    if (defaultWs != null) defaultWs!.save();
  }
}