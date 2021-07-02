import 'package:motivewave/src/service/service.dart';
import 'package:motivewave/src/service/service_home.dart';
import 'package:motivewave/src/util/enums.dart';

class ConnectionID {
  final String id;
  final ServiceType type;
  Service _service;

  // Cannot create directly, use get and getFrom below
  ConnectionID._(this.id, this.type);

  Service get service {
    if (_service != null) return _service;
    for(var srvc in ServiceHome.services) {
      if (srvc.info.id == id) {
        _service = srvc;
        return srvc;
      }
    }
    return null;
  }

  @override
  String toString() => id + "|" + type.asString();

  // Clear the connections associated with the connection IDs
  static void clear()
  {
    for(var conn in _directory.values) {
      if (conn != null) conn._service = null;
    }
  }

  // Gets the existing ID or creates a new one using the name, ID and type
  static ConnectionID get(String id, ServiceType type) {
    if (id == null || id == "") return null;
    return getByID(id + "|" + type.asString());
  }

  // Gets or creates the connection ID from the ID String
  static ConnectionID getByID(String idStr) {
    var cid = _directory[idStr];
    if (cid != null) return cid;
    print("getByID: $idStr");
    var tok = idStr.split('|');
    cid = ConnectionID._(tok[0], tok[1].toEnum(ServiceType.values));
    _directory[idStr] = cid;
    return cid;
  }

  // Internal map of all connection IDS
  static Map<String, ConnectionID> _directory = {};
}