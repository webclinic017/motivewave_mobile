import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:motivewave/src/service/service_home.dart';
import 'package:motivewave/src/shared_state/instrument.dart';
import 'package:motivewave/src/shared_state/ticker.dart';
import 'package:motivewave/src/shared_state/workspace.dart';
import 'package:motivewave/src/util/destroyable.dart';
import 'package:motivewave/src/util/symbol_util.dart';
import 'package:motivewave/src/util/util.dart';

class WatchList implements Destroyable
{
  late String _name;
  late List<TickerGroup> _groups;

  WatchList(this._name, this._groups);
  WatchList.simple(this._name, List<String> symbols)
  {
    _groups = [TickerGroup("", symbols)];
  }
  WatchList.fromJSON(Map<String, dynamic> json) {
    _name = json["name"];
    var l = <TickerGroup>[];
    for(var grp in json["groups"]) {
      l.add(TickerGroup.fromJSON(grp));
    }
    _groups = List.unmodifiable(l);
  }

  Map<String, dynamic> toJson() => { "name": name, "groups": groups};

  String get name => _name;
  set name(String n) { name = n; }

  List<TickerGroup> get groups => _groups;

  void subscribe()
  {
    for(var grp in groups) grp.subscribe();
  }

  void unsubscribe()
  {
    for(var grp in groups) grp.unsubscribe();
  }

  @override
  void destroy()
  {
    for(var grp in groups) grp.destroy();
  }

}

class TickerGroup implements Destroyable
{
  String _name;
  List<String> _symbols;
  List<Ticker>? _tickers;
  int _subCount=0;

  TickerGroup(this._name, List<String> symbols) : _symbols = List.unmodifiable(symbols);
  TickerGroup.fromJSON(Map<String, dynamic> json) : _name = json["name"], _symbols = List.unmodifiable(json["symbols"]);

  List<String> get symbols => _symbols;
  String get name => _name;

  set tickers(List<Ticker> tkrs) {
    _tickers = tkrs;
    _symbols = List.from(tkrs.map((tkr) => tkr.instrument.symbol));
  }

  List<Ticker> get tickers
  {
    if (_tickers != null) return _tickers!;
    var tickers = ServiceHome.workspace?.tickers;
    var instruments = ServiceHome.workspace?.instruments;
    if (tickers == null || instruments == null) return [];

    // Resolve Instruments.  We may need to roll the instrument if it is expired
    _tickers = <Ticker>[];
    bool updateKeys = false;
    for(var key in symbols) {
      var instr = instruments.findByKey(key);
      if (instr == null) {
        log.warning("TickerGroup::tickers unable to resolve $key");
        continue;
      }
      if (instr.expired) {
        var i = SymbolUtil.getNextContract(instr);
        log.warning("TickerGroup::instruments rolling to next contract ${i.symbol}");
        if (i != instr) { instr = i; updateKeys = true; }
      }


      var tkr = tickers.byKey(key);
      if (tkr == null) continue; // this should not happen
      _tickers!.add(tkr);
    }
    if (updateKeys) {
      _symbols = <String>[];
      for(var tkr in _tickers!) _symbols.add(tkr.instrument.key);
    }
    return _tickers!;
  }

  Map<String, dynamic> toJson() => {"name" : name, "symbols" : symbols};

  void subscribe()
  {
    _subCount++;
    if (_subCount == 1) {
      print("subscribing to tickers ${tickers.length}");
      ServiceHome.beginUpdate();
      for(var tkr in tickers) tkr.addObserver(this);
      ServiceHome.endUpdate();
    }
  }

  void unsubscribe()
  {
    _subCount--;
    if (_subCount > 0) return;
    destroy();
  }

  @override
  void destroy()
  {
    ServiceHome.beginUpdate();
    for(var tkr in tickers) tkr.removeObserver(this);
    ServiceHome.endUpdate();
    _subCount = 0;
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