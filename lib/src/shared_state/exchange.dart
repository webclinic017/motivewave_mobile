import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:motivewave/src/shared_state/workspace.dart';
import 'package:motivewave/src/util/csv.dart';
import 'package:motivewave/src/util/extensions.dart';

class Exchange {
  String _symbol;
  String _description;
  Exchange(this._symbol, [this._description]);

  String get symbol => _symbol;
  String get description => _description;
}

class Exchanges extends ChangeNotifier with CSV
{
  bool _unsavedChanges = false;
  Workspace _workspace;
  var _all = <Exchange>[];
  var _symbolMap = <String, Exchange>{};

  Exchanges(this._workspace);

  Future<void> save() async
  {
    var f = await _workspace.getConfigFile("exchanges.csv");
    if (!_unsavedChanges && f.existsSync()) return;
    var out = f.openWrite();
    for(var e in _all) {
      csv(out, [e.symbol, e.description]);
    }
    await out.flush();
    await out.close();
    _unsavedChanges = false;
  }

  Future<void> load() async
  {
    _all = [];
    _symbolMap = {};
    _unsavedChanges = false;
    var f = await _workspace.getConfigFile("exchanges.csv");
    if (!f.existsSync()) return;
    await f.forEachLine((csv) {
      var tok = parse(csv);
      if(tok.length == 2) _add(Exchange(tok[0], tok[1]));
    });
    notifyListeners();
  }

  void addAll(List<Exchange> list)
  {
    for(var e in list) _add(e);
    _unsavedChanges=true;
    notifyListeners();
  }

  void add(Exchange e)
  {
    _add(e);
    _unsavedChanges=true;
    notifyListeners();
  }

  void _add(Exchange e)
  {
    if (e == null || _symbolMap.containsKey(e.symbol)) return;
    _symbolMap[e.symbol] = e;
    _all.add(e);
  }

  bool exists(String symbol) => _symbolMap.containsKey(symbol);

  Exchange get(String symbol) => _symbolMap[symbol];

  void remove(Exchange e)
  {
    if (e == null || !_symbolMap.containsKey(e.symbol)) return;
    _all.remove(e);
    _symbolMap.remove(e.symbol);
    _unsavedChanges = true;
    notifyListeners();
  }

  List<Exchange> get all => List.unmodifiable(_all);

/*
  List<String> listByName()
  {
    List<String> list = [];
    _exchanges.forEach(e -> list.add(e.symbol));
    return list;
  }

  void removeUnused()
  {
    List<Exchange> removeList = [];
    for(var e in _exchanges) {
      bool used=false;
      for(var instr in Instrument.all) {
        if (compareIgnoreCase(instr.exchange(), e.symbol)) { used=true; break; }
      }
      if (!used) removeList.add(e);
    }
    if (removeList.isEmpty) return;

    for(var e in removeList) {
      _exchanges.remove(e);
      _symbolMap.remove(e.symbol);
    }
    _unsavedChanges = true;
    notifyListeners();
  }
*/
}