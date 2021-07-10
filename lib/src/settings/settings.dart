
import 'package:flutter/material.dart';

abstract class Settings extends ChangeNotifier
{
  final _settings = <String, dynamic?>{};

  Definition get definition;

  Iterable<String> get keys => definition.typeMap.keys;

  Settings()
  {
    for(var key in keys) {
      try {
        onChange(key, null, get(key));
      }
      catch(e) {
        print(e);
      }
    }
  }

  fromJSON(Map<String, dynamic>? json)
  {
    // TODO: need to add mappings for all the keys that are not primitives
    _settings.clear();
    if (json != null) _settings.addAll(json);
  }

  Map<String, dynamic> toJson()
  {
    // TODO: need to add mappings for all the keys that are not primitives
    return _settings;
  }

  resetDefaults()
  {
    for(var key in keys) set(key, null);
  }

  dynamic? getDefault(String name)
  {
    var def = definition;
    //var dfact = def.defFactoryMap[name];
    //if (dfact != null) return dfact();
    return def.defMap[name];
  }

  dynamic? get(String name, [dynamic? def])
  {
    var val = _settings[name];
    if (val != null) return val;
    return getDefault(name) ?? def;
    // Some values are mutable.  For these cases clone the default value
    //var cdef = Util.clone(def);
    //if (cdef != def) settings.put(name, cdef);
    //return (T)cdef;
  }

  //bool is(String name, [bool? def]) => get(name, def) ?? true;

  set(String name, dynamic? val)
  {
    var exists = _settings.containsKey(name);
    var old = _settings[name];
    if (old == val && exists) return;
    var def = getDefault(name);
    if (def != null) {
      if (val == def) {
        val = null;
        if (old == null) return;
      }
    }

    _settings[name] = val;
    var v = get(name);
    onChange(name, old, v);

    notifyListeners();
  }

  // Override this method to make adjustments when a property changes
  onChange(String name, dynamic? old, dynamic val) {}
}

class Definition
{
  final oldNameMap = <String, List<String>>{}; // Compatibility when migrating older config files
  //final factoryMap = <String, dynamic Function(Map<String,dynamic>,String)>{};
  //final defFactoryMap = <String, dynamic? Function()>{};
  final typeMap = <String, Type>{};
  final defMap = <String, Object>{};

  Definition(void Function(Definition def) doMapping)
  {
    doMapping(this);
  }

  // Override this method to define the mapping for this setting
  // These methods are used to map setting values
  /*void mapJson(String name, Map<String,dynamic> def) { _map(name, "json", def, (json, key) => json[key]); }
  void mapListStr(String name, List<String> def) { _map(name, "listStr", def, (json, key) => json[key]); }
  void mapStr(String name, String def) { _map(name, "str", def, (json, key) => json[key]); }
  void mapBool(String name, bool? def) { _map(name, "bool", def, (json, key) => json[key]); }
  void mapColor(String name, Color? def) { _map(name, "color", def, (json, key) => json[key]); }
  //void mapDate(String name, DateTime def) { _map(name, "date", def, (json, key) => json.getDate(key)); }
  void mapInt(String name, int? def) { _map(name, "int", def, (json, key) => json[key]); }
  void mapDouble(String name, double? def) { _map(name, "double", def, (json, key) => json[key]); }
*/

  map(String name, dynamic? def, [Type? type])
  {
    if (type == null && def != null) type = def.runtimeType;
    if (type == null) type = String;
    typeMap[name] = type;
    defMap[name] = def;
  }

  mapOldNames(String name, List<String> oldNames)
  {
    var names = oldNameMap[name];
    if (names == null) {
      names = [];
      oldNameMap[name] = names;
    }
    for(var n in oldNames) names.add(n);
  }

  bool has(String property) { return defMap.containsKey(property); }

  copyFrom(Definition def)
  {
    oldNameMap.clear();
    oldNameMap.addAll(def.oldNameMap);
    //factoryMap.clear();
    //factoryMap.addAll(def.factoryMap);
    //defFactoryMap.clear();
    //defFactoryMap.addAll(def.defFactoryMap);
    typeMap.clear();
    typeMap.addAll(def.typeMap);
    defMap.clear();
    defMap.addAll(def.defMap);
  }
}

// Not sure if these are needed yet...
/*
abstract class DefaultFactory<T>
{
  T? get defaultValue;
}

abstract class Factory
{
  dynamic? fromJSON(Map<String, dynamic> json, String key);

  Map<String, dynamic> toJson(String key, dynamic obj) => {};
}

abstract class ValueFactory
{
  dynamic? fromJSON(String key);

  Map<String, dynamic> toJson(String key, dynamic? obj);
}*/