///
//  Generated code. Do not modify.
//  source: WebAPI/otc_1.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const InstanceState$json = const {
  '1': 'InstanceState',
  '2': const [
    const {'1': 'ONLINE', '2': 0},
    const {'1': 'OFFLINE', '2': 1},
    const {'1': 'SUSPENDED', '2': 2},
  ],
};

const OtcRequest$json = const {
  '1': 'OtcRequest',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    const {'1': 'otc_instances_subscription', '3': 2, '4': 1, '5': 11, '6': '.otc_1.OtcInstancesSubscription', '10': 'otcInstancesSubscription'},
    const {'1': 'hedge_books_subscription', '3': 3, '4': 1, '5': 11, '6': '.otc_1.HedgeBooksSubscription', '10': 'hedgeBooksSubscription'},
    const {'1': 'hedge_book_details_subscription', '3': 4, '4': 1, '5': 11, '6': '.otc_1.HedgeBookDetailsSubscription', '10': 'hedgeBookDetailsSubscription'},
    const {'1': 'offset_hedge_balance_request', '3': 5, '4': 1, '5': 11, '6': '.otc_1.OffsetHedgeBalanceRequest', '10': 'offsetHedgeBalanceRequest'},
    const {'1': 'change_otc_state_request', '3': 6, '4': 1, '5': 11, '6': '.otc_1.ChangeOtcStateRequest', '10': 'changeOtcStateRequest'},
  ],
};

const OtcReport$json = const {
  '1': 'OtcReport',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    const {'1': 'result_code', '3': 2, '4': 1, '5': 13, '10': 'resultCode'},
    const {'1': 'details', '3': 3, '4': 1, '5': 11, '6': '.shared_1.Text', '10': 'details'},
    const {'1': 'otc_instances_report', '3': 4, '4': 1, '5': 11, '6': '.otc_1.OtcInstancesReport', '10': 'otcInstancesReport'},
    const {'1': 'hedge_books_report', '3': 5, '4': 1, '5': 11, '6': '.otc_1.HedgeBooksReport', '10': 'hedgeBooksReport'},
    const {'1': 'hedge_book_details_report', '3': 6, '4': 1, '5': 11, '6': '.otc_1.HedgeBookDetailsReport', '10': 'hedgeBookDetailsReport'},
    const {'1': 'offset_hedge_balance_result', '3': 7, '4': 1, '5': 11, '6': '.otc_1.OffsetHedgeBalanceResult', '10': 'offsetHedgeBalanceResult'},
    const {'1': 'change_otc_state_result', '3': 8, '4': 1, '5': 11, '6': '.otc_1.ChangeOtcStateResult', '10': 'changeOtcStateResult'},
  ],
  '4': const [OtcReport_StatusCode$json],
};

const OtcReport_StatusCode$json = const {
  '1': 'StatusCode',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'SUBSCRIBED', '2': 1},
    const {'1': 'DROPPED', '2': 2},
    const {'1': 'UPDATE', '2': 3},
    const {'1': 'DISCONNECTED', '2': 4},
    const {'1': 'FAILURE', '2': 101},
    const {'1': 'INVALID_PARAMS', '2': 102},
    const {'1': 'ACCESS_DENIED', '2': 103},
    const {'1': 'SUBSCRIPTION_LIMIT_VIOLATION', '2': 104},
    const {'1': 'SUBSCRIPTION_RATE_LIMIT_VIOLATION', '2': 105},
  ],
};

const HedgeBalanceKey$json = const {
  '1': 'HedgeBalanceKey',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 17, '10': 'accountId'},
    const {'1': 'contract_id', '3': 2, '4': 1, '5': 13, '10': 'contractId'},
  ],
  '5': const [
    const {'1': 100, '2': 200},
  ],
};

const OtcInstancesSubscription$json = const {
  '1': 'OtcInstancesSubscription',
  '2': const [
    const {'1': 'subscribe', '3': 1, '4': 1, '5': 8, '7': 'true', '10': 'subscribe'},
  ],
};

const OtcInstancesReport$json = const {
  '1': 'OtcInstancesReport',
  '2': const [
    const {'1': 'otc_instance_state', '3': 1, '4': 3, '5': 11, '6': '.otc_1.OtcInstanceState', '10': 'otcInstanceState'},
  ],
};

const OtcInstanceState$json = const {
  '1': 'OtcInstanceState',
  '2': const [
    const {'1': 'instance_id', '3': 1, '4': 1, '5': 13, '10': 'instanceId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'state', '3': 3, '4': 1, '5': 13, '10': 'state'},
  ],
};

const HedgeBooksSubscription$json = const {
  '1': 'HedgeBooksSubscription',
  '2': const [
    const {'1': 'subscribe', '3': 1, '4': 1, '5': 8, '7': 'true', '10': 'subscribe'},
    const {'1': 'otc_instance_id', '3': 2, '4': 1, '5': 13, '10': 'otcInstanceId'},
  ],
};

const HedgeBooksReport$json = const {
  '1': 'HedgeBooksReport',
  '2': const [
    const {'1': 'is_snapshot', '3': 1, '4': 1, '5': 8, '10': 'isSnapshot'},
    const {'1': 'is_last_part', '3': 2, '4': 1, '5': 8, '10': 'isLastPart'},
    const {'1': 'hedge_balance_details', '3': 3, '4': 3, '5': 11, '6': '.otc_1.HedgeBalanceDetails', '10': 'hedgeBalanceDetails'},
  ],
};

const HedgeBalanceDetails$json = const {
  '1': 'HedgeBalanceDetails',
  '2': const [
    const {'1': 'hedge_balance_key', '3': 1, '4': 1, '5': 11, '6': '.otc_1.HedgeBalanceKey', '10': 'hedgeBalanceKey'},
    const {'1': 'deleted', '3': 2, '4': 1, '5': 8, '10': 'deleted'},
    const {'1': 'hedge_balance', '3': 3, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'hedgeBalance'},
    const {'1': 'pending_balance', '3': 4, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'pendingBalance'},
    const {'1': 'contract_symbol', '3': 5, '4': 1, '5': 9, '10': 'contractSymbol'},
  ],
};

const HedgeBookDetailsSubscription$json = const {
  '1': 'HedgeBookDetailsSubscription',
  '2': const [
    const {'1': 'subscribe', '3': 1, '4': 1, '5': 8, '7': 'true', '10': 'subscribe'},
    const {'1': 'otc_instance_id', '3': 2, '4': 1, '5': 13, '10': 'otcInstanceId'},
    const {'1': 'hedge_balance_key', '3': 3, '4': 1, '5': 11, '6': '.otc_1.HedgeBalanceKey', '10': 'hedgeBalanceKey'},
    const {'1': 'from_utc_timestamp', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'fromUtcTimestamp'},
  ],
};

const HedgeBookDetailsReport$json = const {
  '1': 'HedgeBookDetailsReport',
  '2': const [
    const {'1': 'is_snapshot', '3': 1, '4': 1, '5': 8, '10': 'isSnapshot'},
    const {'1': 'is_last_part', '3': 2, '4': 1, '5': 8, '10': 'isLastPart'},
    const {'1': 'cash_order_details', '3': 3, '4': 3, '5': 11, '6': '.otc_1.CashOrderDetails', '10': 'cashOrderDetails'},
    const {'1': 'hedge_order_details', '3': 4, '4': 3, '5': 11, '6': '.otc_1.HedgeOrderDetails', '10': 'hedgeOrderDetails'},
    const {'1': 'cash_to_hedge_orders_link', '3': 5, '4': 3, '5': 11, '6': '.otc_1.CashToHedgeOrdersLink', '10': 'cashToHedgeOrdersLink'},
  ],
};

const CashOrderDetails$json = const {
  '1': 'CashOrderDetails',
  '2': const [
    const {'1': 'chain_order_id', '3': 1, '4': 1, '5': 9, '10': 'chainOrderId'},
    const {'1': 'deleted', '3': 2, '4': 1, '5': 8, '10': 'deleted'},
    const {'1': 'account_id', '3': 3, '4': 1, '5': 17, '10': 'accountId'},
    const {'1': 'contract_id', '3': 4, '4': 1, '5': 13, '10': 'contractId'},
    const {'1': 'hedge_utc_timestamp', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'hedgeUtcTimestamp'},
    const {'1': 'units', '3': 6, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'units'},
  ],
  '5': const [
    const {'1': 100, '2': 200},
  ],
};

const HedgeOrderDetails$json = const {
  '1': 'HedgeOrderDetails',
  '2': const [
    const {'1': 'chain_order_id', '3': 1, '4': 1, '5': 9, '10': 'chainOrderId'},
    const {'1': 'deleted', '3': 2, '4': 1, '5': 8, '10': 'deleted'},
    const {'1': 'hedge_utc_timestamp', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'hedgeUtcTimestamp'},
    const {'1': 'units', '3': 4, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'units'},
    const {'1': 'open_units', '3': 5, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'openUnits'},
  ],
};

const CashToHedgeOrdersLink$json = const {
  '1': 'CashToHedgeOrdersLink',
  '2': const [
    const {'1': 'deleted', '3': 1, '4': 1, '5': 8, '10': 'deleted'},
    const {'1': 'link_utc_timestamp', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'linkUtcTimestamp'},
    const {'1': 'cash_order_id', '3': 3, '4': 1, '5': 9, '10': 'cashOrderId'},
    const {'1': 'hedge_order_id', '3': 4, '4': 1, '5': 9, '10': 'hedgeOrderId'},
    const {'1': 'link_units', '3': 5, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'linkUnits'},
  ],
};

const OffsetHedgeBalanceRequest$json = const {
  '1': 'OffsetHedgeBalanceRequest',
  '2': const [
    const {'1': 'otc_instance_id', '3': 1, '4': 1, '5': 13, '10': 'otcInstanceId'},
    const {'1': 'hedge_balance_key', '3': 2, '4': 1, '5': 11, '6': '.otc_1.HedgeBalanceKey', '10': 'hedgeBalanceKey'},
    const {'1': 'hedge_balance_offset', '3': 3, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'hedgeBalanceOffset'},
  ],
};

const OffsetHedgeBalanceResult$json = const {
  '1': 'OffsetHedgeBalanceResult',
};

const ChangeOtcStateRequest$json = const {
  '1': 'ChangeOtcStateRequest',
  '2': const [
    const {'1': 'otc_instance_id', '3': 1, '4': 1, '5': 13, '10': 'otcInstanceId'},
    const {'1': 'action', '3': 2, '4': 1, '5': 13, '10': 'action'},
  ],
  '4': const [ChangeOtcStateRequest_Action$json],
};

const ChangeOtcStateRequest_Action$json = const {
  '1': 'Action',
  '2': const [
    const {'1': 'ACTIVATE', '2': 0},
    const {'1': 'SUSPEND', '2': 1},
  ],
};

const ChangeOtcStateResult$json = const {
  '1': 'ChangeOtcStateResult',
};

