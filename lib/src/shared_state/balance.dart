import 'package:motivewave/src/service/connection_id.dart';
import 'package:motivewave/src/util/enums.dart';

class Balance {
  String accountId, currency, name;
  double held, available, totalValue, openTradeEquity, initialMargin;
  ConnectionID conn;

  Balance(this.accountId, this.currency);

  // Define that two persons are equal if their SSNs are equal
  bool operator ==(dynamic other) {
    if (!(other is Balance)) return false;
    return other.accountId == accountId && other.currency == currency && other.name == name;
  }

  @override
  // TODO: implement hashCode
  int get hashCode => super.hashCode;

}