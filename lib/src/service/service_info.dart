import 'package:motivewave/src/service/connection_id.dart';
import 'package:motivewave/src/service/connection_info.dart';
import 'package:motivewave/src/util/util.dart';
import 'package:motivewave/src/util/enums.dart';

class ServiceInfo {

  String id = newId();
  ConnectionInfo conn;

  ServiceInfo(this.conn);
  ServiceInfo.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    if (json.containsKey("conn")) conn = ConnectionInfo.fromJson(json["conn"]);
  }

  ConnectionID get connectionID => ConnectionID.get(id, conn.type);

  String get name => conn.type.asString();

  Map<String, dynamic> toJson() => {'id': id, 'conn': conn };
}