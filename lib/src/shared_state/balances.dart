
// Maintains a directory for workspaces
import 'package:flutter/foundation.dart';
import 'package:motivewave/src/service/connection_id.dart';
import 'package:motivewave/src/shared_state/account.dart';
import 'package:motivewave/src/shared_state/balance.dart';

class Balances extends ChangeNotifier {
  List<Balance> _balances = [];

  // returns a copy of the workspaces list
  List<Balance> get balances => List.unmodifiable(_balances);

  List<Balance> find(Account acct)
  {
    List<Balance> list = [];
    for(var bal in _balances) {
      if (bal.conn != acct.conn) continue;
      if (bal.accountId == acct.id) list.add(bal);
    }
    return list;
  }

  // Updates the list of accounts for the given connection
  // Any existing accounts for this connection are replaced
  void update(List<Balance> balances, ConnectionID conn)
  {
    for(var bal in balances) {
      if (bal.conn == conn) _balances.remove(bal);
    }
    _balances.addAll(balances);
    notifyListeners();
  }
}