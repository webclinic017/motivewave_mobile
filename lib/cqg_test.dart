import 'dart:io';
import 'dart:isolate';
import 'dart:async';
import 'package:motivewave/src/cqg/WebAPI/webapi_1.pb.dart';
import 'package:motivewave/src/shared_state/credentials.dart';
import 'package:motivewave/src/shared_state/instrument.dart';
import 'package:motivewave/src/util/enums.dart';
import 'package:web_socket_channel/io.dart';

const String UAT_HOST_URI = "wss://uatapi.cqg.com:443";
const String DEMO_HOST_URI = "wss://demoapi.cqg.com:443";
const String LIVE_HOST_URI = "wss://api.cqg.com:443";
const int DOM_INC=10;
const String CLIENT_ID = "MotiveWaveWAPI";
const String AMP_DEMO_CLIENT_ID = "AMPConnect";

void main() async {

  var instr = Instrument("AAPL", "NASDAQ", InstrumentType.STOCK, null, minTick: 0.01);

  print("${instr.formatPrice(120.003)}");

  /*
  var idStr = "CQG|1ev5ps87c|CQG123";

  var tok = idStr.split('|');
  print("${tok[0]}");
  print("${tok[1]}");
  print("${tok[2]}");

  print("${tok[2].toEnum(ServiceType.values)}"); */


}

class SendReceive {
  final SendPort out;
  final ReceivePort input;
  SendReceive(this.out, this.input);
}


Future<SendReceive> spawnIsolate(void Function(SendPort) spawner, void Function(dynamic) onMsg) async {
  var completer = Completer<SendReceive>();
  var input = ReceivePort();
  input.listen((msg) {
    if (msg is SendPort) completer.complete(SendReceive(msg, input));
    else onMsg(msg);
  });
  var cqgInstance = await Isolate.spawn(spawner, input.sendPort);
  return completer.future;
}

void cqgIsolate(SendPort out)
{
  var input = ReceivePort();
  out.send(input.sendPort);
  var proxy = CQGProxy(out);
  print("listening for messages");
  input.listen((data) {
    print("message: $data");
    SrvcMessage msg = data;
    switch(msg.type) {
      case SrvcMsgType.CONNECT: proxy.connect(msg.params); break;

    }
  });
}

class CQGProxy
{
  var clientId = CLIENT_ID; // TODO: add switch for AMP
  IOWebSocketChannel channel;
  Credentials credentials;
  SendPort out;
  bool connected = false;

  CQGProxy(this.out);

  void connect(Credentials c) async
  {
    var logon = Logon(userName: c.username,
      password: c.password,
      clientAppId: clientId,
      clientVersion: "1.0",
      maxCollapsingLevel: RealTimeCollapsing_Level.NONE.value,
      dropConcurrentSession: true,
      protocolVersionMajor: ProtocolVersionMajor.PROTOCOL_VERSION_MAJOR.value,
      protocolVersionMinor: ProtocolVersionMinor.PROTOCOL_VERSION_MINOR.value,
    );

    var url = DEMO_HOST_URI;
    channel = IOWebSocketChannel.connect(url);

    // Send the logon message
    var msg = ClientMsg.create();
    msg.logon = logon;
    channel.sink.add(msg.writeToBuffer());

    connected = false;
    listen();

  }

  void listen() async {
    await for (var val in channel.stream) {
      var msg = ServerMsg.fromBuffer(val);
      print(msg.writeToJson());
      if (msg.hasLogonResult()) {
        if (msg.logonResult.resultCode == LogonResult_ResultCode.SUCCESS.value) {
          connected = true;
          out.send(ResultMessage(SrvcResultType.CONNECTED));
          print('connected!');
        }
        else {
          channel.sink.close(WebSocketStatus.normalClosure);
          out.send(ResultMessage(SrvcResultType.CONNECT_FAILED, msg.logonResult.textMessage));
          print('connect failed!');
          break;
        }
      }
    }
  }


}

enum SrvcMsgType {
  CONNECT, DISCONNECT, SUB_L1, UNSUB_L1, SUB_L2, UNSUB_L2, ACCOUNTS, POSITIONS, ORDERS, TRADES, HIST_BARS, TICKS, SEARCH,
  PLACE_ORDER, PLACE_OCO, MODIFY_ORDER, CANCEL_ORDER
}

enum SrvcResultType {
  CONNECTED, CONNECT_FAILED
}

class SrvcMessage {
  final SrvcMsgType type;
  final dynamic params;

  SrvcMessage(this.type, this.params);
}

class ResultMessage {
  final SrvcResultType type;
  final dynamic params;

  ResultMessage(this.type, [this.params]);
}