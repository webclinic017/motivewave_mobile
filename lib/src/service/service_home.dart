
import 'package:flutter/material.dart';
import 'package:motivewave/src/service/cqg/cqg_descriptor.dart';
import 'package:motivewave/src/service/cqg/cqg_service.dart';
import 'package:motivewave/src/service/service.dart';
import 'package:motivewave/src/service/service_descriptor.dart';
import 'package:motivewave/src/service/service_info.dart';
import 'package:motivewave/src/shared_state/account.dart';
import 'package:motivewave/src/shared_state/balances.dart';
import 'package:motivewave/src/shared_state/bar.dart';
import 'package:motivewave/src/shared_state/data_request.dart';
import 'package:motivewave/src/shared_state/order.dart';
import 'package:motivewave/src/shared_state/tick.dart';
import 'package:motivewave/src/shared_state/workspace.dart';
import 'package:motivewave/src/util/enums.dart';
import 'package:motivewave/src/util/util.dart';

class ServiceHome {

  static final accounts = Accounts();
  static final balances = Balances();
  static final workspaces = Workspaces();

  static List<Service> _services = [];
  static Workspace? _workspace;
  static Map<ServiceType, ServiceDescriptor> type2Desc = {};
  static Map<ServiceType, Function(Workspace, ServiceInfo, ServiceDescriptor)> type2Factory = {};

  static init() {
    log.info("init");
    _register(CQGDescriptor(), (ws, info, desc) => CQGService(ws, info, desc));
  }

  static ServiceDescriptor getDescriptor(ServiceType type)
  {
    return type2Desc[type]!;
  }

  static set workspace(Workspace? ws)
  {
    List<Service> list = [];
    if (ws != null) {
      for(var info in ws.connections) {
        var fact = type2Factory[info.conn.type];
        if (fact == null) continue; // this should not happen
        list.add(fact(ws, info, type2Desc[info.conn.type]!));
      }
    }
    _services = list;
    _workspace = ws;
  }

  static Workspace? get workspace => _workspace;

  static connect(BuildContext ctx)
  {
    for(var srvc in _services) {
      srvc.connect(ctx);
    }
  }


  static _register(ServiceDescriptor desc, Function(Workspace, ServiceInfo, ServiceDescriptor) fact) {
    type2Desc[desc.type] = desc;
    type2Factory[desc.type] = fact;
  }

  static get services => _services;


  static void disconnect() {}

  static void forEachBar(DataRequest req, DateTime start, DateTime end, Function(Bar) op) {}

  static void forEachTick(DataRequest req, DateTime start, DateTime end, Function(Tick) op) {}


  static void placeOCO(List<Order> orders) {}

  static void placeOrder(Order order) {}

  static void modifyOrder(Order order) {}

  static void cancelOrder(Order order) {}

  static void beginUpdate()
  {
    for(var srvc in services) srvc.beginUpdate();
  }
  static void endUpdate()
  {
    for(var srvc in services) srvc.endUpdate();
  }

}