
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:motivewave/src/service/cqg/cqg_descriptor.dart';
import 'package:motivewave/src/service/cqg/cqg_service.dart';
import 'package:motivewave/src/service/service.dart';
import 'package:motivewave/src/service/service_descriptor.dart';
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
  static Workspace _workspace;
  static Map<ServiceType, ServiceDescriptor> type2Desc = {};
  static Map<ServiceType, ValueGetter<Service>> type2Factory = {};

  static init() {
    log.info("init");
    _register(CQGDescriptor(), () => CQGService());
  }

  static ServiceDescriptor getDescriptor(ServiceType type)
  {
    return type2Desc[type];
  }

  static Service newServiceInstance(ServiceType srvc)
  {
    var fact = type2Factory[srvc];
    if (fact == null) return null; // this should not happen
    return fact();
  }

  static set workspace(Workspace ws)
  {
    List<Service> list = [];
    if (ws != null) {
      for(var info in ws.connections) {
        var fact = type2Factory[info.conn.type];
        if (fact == null) continue; // this should not happen
        var srvc = fact();
        srvc.info = info;
        srvc.descriptor = type2Desc[info.conn.type];
        list.add(srvc);
      }
    }
    _services = list;
    _workspace = ws;
  }

  static Workspace get workspace => _workspace;

  static connect(BuildContext ctx)
  {
    for(var srvc in _services) {
      srvc.connect(ctx);
    }
  }


  static _register(ServiceDescriptor desc, ValueGetter<Service> fact) {
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