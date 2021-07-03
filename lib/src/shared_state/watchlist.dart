import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:motivewave/src/service/service_home.dart';
import 'package:motivewave/src/shared_state/instrument.dart';
import 'package:motivewave/src/shared_state/ticker.dart';
import 'package:motivewave/src/shared_state/workspace.dart';
import 'package:motivewave/src/util/destroyable.dart';
import 'package:motivewave/src/util/symbol_util.dart';
import 'package:motivewave/src/util/util.dart';

class WatchList implements Destroyable
{
  String? _name;
  List<TickerGroup>? _groups;

  WatchList(this._name, this._groups);
  WatchList.simple(this._name, List<String> symbols)
  {
    _groups = List.unmodifiable([TickerGroup("", symbols)]);
  }

  String get name => _name??"";
  List<TickerGroup> get groups => _groups??[];

  WatchList.fromJSON(Map<String, dynamic> json) {
    _name = json["name"];
    var l = <TickerGroup>[];
    for(var grp in json["groups"]) {
      l.add(TickerGroup.fromJSON(grp));
    }
    _groups = List.unmodifiable(l);
  }

  Map<String, dynamic> toJson() => { "name": name, "groups": groups};

  @override
  void destroy()
  {
  }

}

class TickerGroup implements Destroyable
{
  String _name;
  List<String> _symbols;
  List<Instrument>? _instruments;

  TickerGroup(this._name, List<String> symbols) : _symbols = List.unmodifiable(symbols);
  TickerGroup.fromJSON(Map<String, dynamic> json) : _name = json["name"], _symbols = List.unmodifiable(json["symbols"]);

  List<String> get symbols => _symbols;
  String get name => _name;
  List<Instrument> get instruments
  {
    if (_instruments != null) return _instruments!;
    var instruments = ServiceHome.workspace?.instruments;
    if (instruments == null) return [];
    // Resolve Instruments.  We may need to roll the instrument if it is expired
    List<Instrument> list = [];
    bool updateSyms = false;
    for(var sym in symbols) {
      var instr = instruments.findByKey(sym);
      if (instr == null) {
        log.warning("TickerGroup::instruments unable to resolve $sym");
        continue;
      }
      log.info("instrument: ${instr.symbol} expires: ${instr.expires}");
      if (instr.expired) {
        var i = SymbolUtil.getNextContract(instr);
        log.warning("TickerGroup::instruments rolling to next contract ${i.symbol}");
        if (i != instr) { instr = i; updateSyms = true; }
      }
      list.add(instr);
    }
    if (updateSyms) {
      _symbols = <String>[];
      for(var i in list) _symbols.add(i.key);
    }
    _instruments = list;
    return _instruments!;
  }

  Map<String, dynamic> toJson() => {"name" : name, "symbols" : symbols};

  @override
  void destroy()
  {
  }
}

class WatchLists extends ChangeNotifier
{
  Workspace _workspace;
  var _all = <WatchList>[];
  var _nameMap = <String, WatchList>{};
  bool _unsavedChanges = false;

  WatchLists(this._workspace);

  List<WatchList> get all => List.unmodifiable(_all);

  Future<void> save() async
  {
    var f = await _workspace.getConfigFile("watchlists.json");
    if (!_unsavedChanges && f.existsSync()) return;

    var out = f.openWrite();
    out.write(jsonEncode(_all));
    await out.flush();
    await out.close();
    _unsavedChanges = false;
  }

  Future<void> load() async
  {
    _all = [];
    _nameMap = {};
    _unsavedChanges = false;
    var f = await _workspace.getConfigFile("watchlists.json");
    if (!f.existsSync()) return;

    List<dynamic> json = jsonDecode(await f.readAsString());
    for(var wl in json) {
      _add(WatchList.fromJSON(wl));
    }
    _unsavedChanges = false;
    notifyListeners();
  }

  void addAll(List<WatchList> lists)
  {
    for(var wl in lists) _add(wl);
    _unsavedChanges = true;
    notifyListeners();
  }

  void add(WatchList wl)
  {
    if (!_add(wl)) {
      log.warning("Instruments::add() instrument already exists: ${wl.name}");
      return;
    }
    _unsavedChanges = true;
    notifyListeners();
  }

  // Update the watch list with the given name
  // Note: name is the existing name in the list of watch lists
  void update(WatchList wl, String name)
  {
    _nameMap.remove(name);
    _nameMap[wl.name] = wl;
    _unsavedChanges = true;
    notifyListeners();
  }

  void remove(WatchList wl)
  {
    if (!_nameMap.containsKey(wl.name)) return;
    _nameMap.remove(wl.name);
    _all.remove(wl);
    _unsavedChanges = true;
    notifyListeners();
  }

  bool _add(WatchList wl)
  {
    if (_nameMap.containsKey(wl.name)) return false;
    _nameMap[wl.name] = wl;
    _all.add(wl);
    return true;
  }

  WatchList? find(String name) => _nameMap[name];
}