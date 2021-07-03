import 'package:motivewave/src/service/connection_id.dart';
import 'package:motivewave/src/service/connection_info.dart';
import 'package:motivewave/src/util/util.dart';
import 'package:motivewave/src/util/enums.dart';

class ServiceInfo {

  String id = newId();
  late final ConnectionInfo conn;

  ServiceInfo(this.conn);
  ServiceInfo.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    conn = ConnectionInfo.fromJson(json["conn"]);
  }

  ConnectionID get connectionID => ConnectionID.get(id, conn.type);

  String get name => conn.type.asString();

  Map<String, dynamic> toJson() => {'id': id, 'conn': conn };
}