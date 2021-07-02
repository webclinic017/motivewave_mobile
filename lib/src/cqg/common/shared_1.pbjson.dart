///
//  Generated code. Do not modify.
//  source: common/shared_1.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const Text$json = const {
  '1': 'Text',
  '2': const [
    const {'1': 'key', '3': 1, '4': 2, '5': 9, '10': 'key'},
    const {'1': 'text', '3': 2, '4': 2, '5': 9, '10': 'text'},
    const {'1': 'format', '3': 3, '4': 1, '5': 9, '10': 'format'},
    const {'1': 'param', '3': 4, '4': 3, '5': 9, '10': 'param'},
  ],
};

const OrderStatus$json = const {
  '1': 'OrderStatus',
  '4': const [OrderStatus_Status$json],
};

const OrderStatus_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'IN_TRANSIT', '2': 1},
    const {'1': 'REJECTED', '2': 2},
    const {'1': 'WORKING', '2': 3},
    const {'1': 'EXPIRED', '2': 4},
    const {'1': 'IN_CANCEL', '2': 5},
    const {'1': 'IN_MODIFY', '2': 6},
    const {'1': 'CANCELLED', '2': 7},
    const {'1': 'FILLED', '2': 8},
    const {'1': 'SUSPENDED', '2': 9},
    const {'1': 'DISCONNECTED', '2': 10},
    const {'1': 'ACTIVEAT', '2': 11},
    const {'1': 'APPROVE_REQUIRED', '2': 12},
    const {'1': 'APPROVED_BY_EXCHANGE', '2': 13},
    const {'1': 'APPROVE_REJECTED', '2': 14},
    const {'1': 'MATCHED', '2': 15},
  ],
};

const TransactionStatus$json = const {
  '1': 'TransactionStatus',
  '4': const [TransactionStatus_Status$json],
};

const TransactionStatus_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'IN_TRANSIT', '2': 1},
    const {'1': 'REJECTED', '2': 2},
    const {'1': 'ACK_PLACE', '2': 3},
    const {'1': 'EXPIRED', '2': 4},
    const {'1': 'IN_CANCEL', '2': 5},
    const {'1': 'ACK_CANCEL', '2': 6},
    const {'1': 'REJECT_CANCEL', '2': 7},
    const {'1': 'IN_MODIFY', '2': 8},
    const {'1': 'ACK_MODIFY', '2': 9},
    const {'1': 'REJECT_MODIFY', '2': 10},
    const {'1': 'FILL', '2': 11},
    const {'1': 'SUSPEND', '2': 12},
    const {'1': 'FILL_CORRECT', '2': 13},
    const {'1': 'FILL_CANCEL', '2': 14},
    const {'1': 'FILL_BUST', '2': 15},
    const {'1': 'ACTIVEAT', '2': 16},
    const {'1': 'DISCONNECT', '2': 17},
    const {'1': 'SYNTHETIC_ACTIVATED', '2': 18},
    const {'1': 'UPDATE', '2': 19},
    const {'1': 'SYNTHETIC_FAILED', '2': 20},
    const {'1': 'SYNTHETIC_OVERFILL', '2': 21},
    const {'1': 'SYNTHETIC_HANG', '2': 22},
    const {'1': 'APPROVING', '2': 23},
    const {'1': 'APPROVE_REQUESTED', '2': 24},
    const {'1': 'APPROVED_BY_EXCHANGE', '2': 25},
    const {'1': 'REJECTED_BY_USER', '2': 26},
    const {'1': 'MATCHED', '2': 27},
  ],
};

const SignOnRequest$json = const {
  '1': 'SignOnRequest',
  '2': const [
    const {'1': 'access_key', '3': 1, '4': 2, '5': 9, '10': 'accessKey'},
  ],
};

const SignOnResult$json = const {
  '1': 'SignOnResult',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 2, '5': 13, '10': 'resultCode'},
    const {'1': 'details', '3': 2, '4': 1, '5': 11, '6': '.shared_1.Text', '10': 'details'},
  ],
  '4': const [SignOnResult_ResultCode$json],
};

const SignOnResult_ResultCode$json = const {
  '1': 'ResultCode',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'FAILURE', '2': 101},
  ],
};

const EntitlementRequest$json = const {
  '1': 'EntitlementRequest',
};

const EntitlementReport$json = const {
  '1': 'EntitlementReport',
  '2': const [
    const {'1': 'entitlement', '3': 1, '4': 3, '5': 11, '6': '.shared_1.Entitlement', '10': 'entitlement'},
  ],
};

const Entitlement$json = const {
  '1': 'Entitlement',
  '2': const [
    const {'1': 'entitlement_type', '3': 1, '4': 2, '5': 13, '10': 'entitlementType'},
    const {'1': 'entitlement_code', '3': 2, '4': 2, '5': 9, '10': 'entitlementCode'},
  ],
  '4': const [Entitlement_EntitlementType$json],
};

const Entitlement_EntitlementType$json = const {
  '1': 'EntitlementType',
  '2': const [
    const {'1': 'FEATURE', '2': 8},
    const {'1': 'NEWS', '2': 10},
    const {'1': 'DJNEWS', '2': 26},
    const {'1': 'MANAGE_SECURITY_METADATA', '2': 49},
    const {'1': 'MANAGE_CONTRACT_METADATA', '2': 50},
  ],
};

const Destination$json = const {
  '1': 'Destination',
  '2': const [
    const {'1': 'description', '3': 1, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'apple_push_notif', '3': 2, '4': 1, '5': 11, '6': '.shared_1.ApplePushNotif', '10': 'applePushNotif'},
    const {'1': 'google_push_notif', '3': 3, '4': 1, '5': 11, '6': '.shared_1.GooglePushNotif', '10': 'googlePushNotif'},
    const {'1': 'email_notif', '3': 4, '4': 1, '5': 11, '6': '.shared_1.EmailNotif', '10': 'emailNotif'},
    const {'1': 'sms_notif', '3': 5, '4': 1, '5': 11, '6': '.shared_1.SmsNotif', '10': 'smsNotif'},
  ],
};

const ApplePushNotif$json = const {
  '1': 'ApplePushNotif',
  '2': const [
    const {'1': 'device_token', '3': 1, '4': 2, '5': 9, '10': 'deviceToken'},
    const {'1': 'app_id', '3': 2, '4': 2, '5': 9, '10': 'appId'},
  ],
};

const GooglePushNotif$json = const {
  '1': 'GooglePushNotif',
  '2': const [
    const {'1': 'registration_token', '3': 1, '4': 2, '5': 9, '10': 'registrationToken'},
    const {'1': 'sender_id', '3': 2, '4': 2, '5': 9, '10': 'senderId'},
  ],
};

const NotificationProperty$json = const {
  '1': 'NotificationProperty',
  '2': const [
    const {'1': 'property_name', '3': 1, '4': 2, '5': 9, '10': 'propertyName'},
    const {'1': 'property_value', '3': 2, '4': 2, '5': 9, '10': 'propertyValue'},
  ],
};

const EmailNotif$json = const {
  '1': 'EmailNotif',
  '2': const [
    const {'1': 'recipients', '3': 1, '4': 3, '5': 9, '10': 'recipients'},
  ],
};

const SmsNotif$json = const {
  '1': 'SmsNotif',
  '2': const [
    const {'1': 'phone_number', '3': 1, '4': 2, '5': 9, '10': 'phoneNumber'},
  ],
};

const NamedValue$json = const {
  '1': 'NamedValue',
  '2': const [
    const {'1': 'name', '3': 1, '4': 2, '5': 9, '10': 'name'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
    const {'1': 'deleted', '3': 3, '4': 1, '5': 8, '7': 'false', '10': 'deleted'},
  ],
};

