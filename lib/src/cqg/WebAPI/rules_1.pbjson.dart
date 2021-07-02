///
//  Generated code. Do not modify.
//  source: WebAPI/rules_1.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const RuleRequest$json = const {
  '1': 'RuleRequest',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 9, '10': 'requestId'},
    const {'1': 'set_rule_request', '3': 2, '4': 1, '5': 11, '6': '.rules_1.SetRuleRequest', '10': 'setRuleRequest'},
    const {'1': 'delete_rule_request', '3': 3, '4': 1, '5': 11, '6': '.rules_1.DeleteRuleRequest', '10': 'deleteRuleRequest'},
    const {'1': 'rules_list_request', '3': 4, '4': 1, '5': 11, '6': '.rules_1.RulesListRequest', '10': 'rulesListRequest'},
    const {'1': 'notification_history_request', '3': 5, '4': 1, '5': 11, '6': '.rules_1.NotificationHistoryRequest', '10': 'notificationHistoryRequest'},
  ],
};

const RuleResult$json = const {
  '1': 'RuleResult',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 9, '10': 'requestId'},
    const {'1': 'result_code', '3': 2, '4': 2, '5': 13, '10': 'resultCode'},
    const {'1': 'details', '3': 3, '4': 1, '5': 11, '6': '.shared_1.Text', '10': 'details'},
    const {'1': 'set_rule_result', '3': 4, '4': 1, '5': 11, '6': '.rules_1.SetRuleResult', '10': 'setRuleResult'},
    const {'1': 'delete_rule_result', '3': 5, '4': 1, '5': 11, '6': '.rules_1.DeleteRuleResult', '10': 'deleteRuleResult'},
    const {'1': 'rules_list_result', '3': 6, '4': 1, '5': 11, '6': '.rules_1.RulesListResult', '10': 'rulesListResult'},
    const {'1': 'notification_history_result', '3': 7, '4': 1, '5': 11, '6': '.rules_1.NotificationHistoryResult', '10': 'notificationHistoryResult'},
  ],
  '4': const [RuleResult_ResultCode$json],
};

const RuleResult_ResultCode$json = const {
  '1': 'ResultCode',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'FAILURE', '2': 101},
  ],
};

const RuleDefinition$json = const {
  '1': 'RuleDefinition',
  '2': const [
    const {'1': 'rule_id', '3': 1, '4': 2, '5': 9, '10': 'ruleId'},
    const {
      '1': 'rule_tag',
      '3': 2,
      '4': 3,
      '5': 9,
      '8': const {'3': true},
      '10': 'ruleTag',
    },
    const {
      '1': 'expiration_utc_timestamp',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '8': const {'3': true},
      '10': 'expirationUtcTimestamp',
    },
    const {'1': 'action', '3': 4, '4': 3, '5': 11, '6': '.rules_1.Action', '10': 'action'},
    const {'1': 'order_event_rule', '3': 5, '4': 1, '5': 11, '6': '.rules_1.OrderEventRule', '10': 'orderEventRule'},
    const {'1': 'enabled', '3': 6, '4': 1, '5': 8, '7': 'true', '10': 'enabled'},
  ],
};

const Action$json = const {
  '1': 'Action',
  '2': const [
    const {'1': 'destination', '3': 4, '4': 3, '5': 11, '6': '.shared_1.Destination', '10': 'destination'},
  ],
};

const OrderEventRule$json = const {
  '1': 'OrderEventRule',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 3, '5': 17, '10': 'accountId'},
    const {'1': 'order_status', '3': 2, '4': 3, '5': 13, '10': 'orderStatus'},
    const {'1': 'transaction_status', '3': 3, '4': 3, '5': 13, '10': 'transactionStatus'},
  ],
};

const NotificationReport$json = const {
  '1': 'NotificationReport',
  '2': const [
    const {'1': 'title', '3': 1, '4': 2, '5': 11, '6': '.shared_1.Text', '10': 'title'},
    const {'1': 'body', '3': 2, '4': 2, '5': 11, '6': '.shared_1.Text', '10': 'body'},
    const {'1': 'rule_id', '3': 3, '4': 2, '5': 9, '10': 'ruleId'},
    const {'1': 'notification_property', '3': 4, '4': 3, '5': 11, '6': '.shared_1.NotificationProperty', '10': 'notificationProperty'},
    const {'1': 'when_utc_timestamp', '3': 5, '4': 2, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'whenUtcTimestamp'},
  ],
};

const SetRuleRequest$json = const {
  '1': 'SetRuleRequest',
  '2': const [
    const {'1': 'rule_definition', '3': 1, '4': 2, '5': 11, '6': '.rules_1.RuleDefinition', '10': 'ruleDefinition'},
  ],
};

const SetRuleResult$json = const {
  '1': 'SetRuleResult',
};

const DeleteRuleRequest$json = const {
  '1': 'DeleteRuleRequest',
  '2': const [
    const {'1': 'rule_id', '3': 1, '4': 2, '5': 9, '10': 'ruleId'},
  ],
};

const DeleteRuleResult$json = const {
  '1': 'DeleteRuleResult',
};

const RulesListRequest$json = const {
  '1': 'RulesListRequest',
  '2': const [
    const {
      '1': 'rule_tag',
      '3': 1,
      '4': 3,
      '5': 9,
      '8': const {'3': true},
      '10': 'ruleTag',
    },
  ],
};

const RulesListResult$json = const {
  '1': 'RulesListResult',
  '2': const [
    const {'1': 'rule_definition', '3': 1, '4': 3, '5': 11, '6': '.rules_1.RuleDefinition', '10': 'ruleDefinition'},
  ],
};

const NotificationHistoryRequest$json = const {
  '1': 'NotificationHistoryRequest',
  '2': const [
    const {'1': 'from_utc_timestamp', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'fromUtcTimestamp'},
    const {'1': 'to_utc_timestamp', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'toUtcTimestamp'},
  ],
};

const NotificationHistoryResult$json = const {
  '1': 'NotificationHistoryResult',
  '2': const [
    const {'1': 'notification_report', '3': 1, '4': 3, '5': 11, '6': '.rules_1.NotificationReport', '10': 'notificationReport'},
  ],
};

