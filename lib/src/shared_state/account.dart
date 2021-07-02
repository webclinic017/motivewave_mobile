import 'package:flutter/foundation.dart';
import 'package:motivewave/src/service/connection_id.dart';
import 'package:motivewave/src/util/enums.dart';

class Account {
  String id, name;
  String type;
  String status;
  String broker;
  String baseCurrency;
  double balance;
  double accountValue;
  double openTradeEquity;
  double marginBalance;

  ConnectionID conn;

  Account({this.id, this.name, this.type, this.baseCurrency, this.balance, this.broker, this.conn});

  // Define that two persons are equal if their SSNs are equal
  bool operator ==(dynamic other) {
    if (!(other is Account)) return false;
    return other.conn == conn && other.id == id;
  }

  @override
  // TODO: implement hashCode
  int get hashCode => super.hashCode;

}

class Accounts extends ChangeNotifier {
  List<Account> _accounts = [];
  String _defaultName;

  String get defaultName => _defaultName;
  set defaultName(String ws) {
    _defaultName = ws;
    notifyListeners();
  }

  Account get defaultAccount {
    for(var acct in _accounts) {
      if (acct.name == _defaultName) return acct;
    }
    return null;
  }

  Account find(String id) {
    for(var acct in _accounts) {
      if (id == acct.id || id == acct.name) return acct;
    }
    return null;
  }

  // returns a copy of the workspaces list
  List<Account> get accounts => List<Account>.unmodifiable(_accounts);

  // Updates the list of accounts for the given connection
  // Any existing accounts for this connection are replaced
  void update(List<Account> accts, ConnectionID conn)
  {
    for(var acct in accts) {
      if (acct.conn == conn) _accounts.remove(acct);
    }
    _accounts.addAll(accts);
    notifyListeners();
  }

  void removeAll(List<Account> accts)
  {
    for(var acct in accts) _accounts.remove(acct);
    notifyListeners();
  }

}