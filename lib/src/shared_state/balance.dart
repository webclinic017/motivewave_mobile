import 'package:motivewave/src/service/connection_id.dart';
import 'package:motivewave/src/util/enums.dart';

class Balance {
  String accountId, currency;
  String? name;
  double held=0, available=0, totalValue=0, openTradeEquity=0, initialMargin=0;
  ConnectionID? conn;

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