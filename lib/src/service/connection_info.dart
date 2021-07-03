
import 'package:motivewave/src/util/enums.dart';
import 'package:motivewave/src/util/util.dart';

class ConnectionInfo {
  late final ServiceType type;
  String? apiKey, apiSecret, username, password, server;

  ConnectionInfo(this.type, {this.apiKey, this.apiSecret, this.username, this.password, this.server});

  ConnectionInfo.fromJson(Map<String, dynamic> json)
  {
    type = toEnum(json["type"], ServiceType.values, ServiceType.CQG)!;
    apiKey = json["apiKey"];
    apiSecret = json["apiSecret"];
    username = json["username"];
    password = json["password"];
    server = json["server"];
  }
  Map<String, dynamic> toJson() {
    var json = {'type': type.asString()};
    addNotNull(json, "apiKey", apiKey);
    addNotNull(json, "apiSecret", apiSecret);
    addNotNull(json, "username", username);
    addNotNull(json, "password", password);
    addNotNull(json, "server", server);
    return json;
  }
}