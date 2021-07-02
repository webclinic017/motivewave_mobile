///
//  Generated code. Do not modify.
//  source: common/shared_1.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class OrderStatus_Status extends $pb.ProtobufEnum {
  static const OrderStatus_Status IN_TRANSIT = OrderStatus_Status._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IN_TRANSIT');
  static const OrderStatus_Status REJECTED = OrderStatus_Status._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REJECTED');
  static const OrderStatus_Status WORKING = OrderStatus_Status._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WORKING');
  static const OrderStatus_Status EXPIRED = OrderStatus_Status._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EXPIRED');
  static const OrderStatus_Status IN_CANCEL = OrderStatus_Status._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IN_CANCEL');
  static const OrderStatus_Status IN_MODIFY = OrderStatus_Status._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IN_MODIFY');
  static const OrderStatus_Status CANCELLED = OrderStatus_Status._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CANCELLED');
  static const OrderStatus_Status FILLED = OrderStatus_Status._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FILLED');
  static const OrderStatus_Status SUSPENDED = OrderStatus_Status._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUSPENDED');
  static const OrderStatus_Status DISCONNECTED = OrderStatus_Status._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DISCONNECTED');
  static const OrderStatus_Status ACTIVEAT = OrderStatus_Status._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTIVEAT');
  static const OrderStatus_Status APPROVE_REQUIRED = OrderStatus_Status._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'APPROVE_REQUIRED');
  static const OrderStatus_Status APPROVED_BY_EXCHANGE = OrderStatus_Status._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'APPROVED_BY_EXCHANGE');
  static const OrderStatus_Status APPROVE_REJECTED = OrderStatus_Status._(14, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'APPROVE_REJECTED');
  static const OrderStatus_Status MATCHED = OrderStatus_Status._(15, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MATCHED');

  static const $core.List<OrderStatus_Status> values = <OrderStatus_Status> [
    IN_TRANSIT,
    REJECTED,
    WORKING,
    EXPIRED,
    IN_CANCEL,
    IN_MODIFY,
    CANCELLED,
    FILLED,
    SUSPENDED,
    DISCONNECTED,
    ACTIVEAT,
    APPROVE_REQUIRED,
    APPROVED_BY_EXCHANGE,
    APPROVE_REJECTED,
    MATCHED,
  ];

  static final $core.Map<$core.int, OrderStatus_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OrderStatus_Status valueOf($core.int value) => _byValue[value];

  const OrderStatus_Status._($core.int v, $core.String n) : super(v, n);
}

class TransactionStatus_Status extends $pb.ProtobufEnum {
  static const TransactionStatus_Status IN_TRANSIT = TransactionStatus_Status._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IN_TRANSIT');
  static const TransactionStatus_Status REJECTED = TransactionStatus_Status._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REJECTED');
  static const TransactionStatus_Status ACK_PLACE = TransactionStatus_Status._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACK_PLACE');
  static const TransactionStatus_Status EXPIRED = TransactionStatus_Status._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EXPIRED');
  static const TransactionStatus_Status IN_CANCEL = TransactionStatus_Status._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IN_CANCEL');
  static const TransactionStatus_Status ACK_CANCEL = TransactionStatus_Status._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACK_CANCEL');
  static const TransactionStatus_Status REJECT_CANCEL = TransactionStatus_Status._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REJECT_CANCEL');
  static const TransactionStatus_Status IN_MODIFY = TransactionStatus_Status._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IN_MODIFY');
  static const TransactionStatus_Status ACK_MODIFY = TransactionStatus_Status._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACK_MODIFY');
  static const TransactionStatus_Status REJECT_MODIFY = TransactionStatus_Status._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REJECT_MODIFY');
  static const TransactionStatus_Status FILL = TransactionStatus_Status._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FILL');
  static const TransactionStatus_Status SUSPEND = TransactionStatus_Status._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUSPEND');
  static const TransactionStatus_Status FILL_CORRECT = TransactionStatus_Status._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FILL_CORRECT');
  static const TransactionStatus_Status FILL_CANCEL = TransactionStatus_Status._(14, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FILL_CANCEL');
  static const TransactionStatus_Status FILL_BUST = TransactionStatus_Status._(15, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FILL_BUST');
  static const TransactionStatus_Status ACTIVEAT = TransactionStatus_Status._(16, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTIVEAT');
  static const TransactionStatus_Status DISCONNECT = TransactionStatus_Status._(17, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DISCONNECT');
  static const TransactionStatus_Status SYNTHETIC_ACTIVATED = TransactionStatus_Status._(18, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SYNTHETIC_ACTIVATED');
  static const TransactionStatus_Status UPDATE = TransactionStatus_Status._(19, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UPDATE');
  static const TransactionStatus_Status SYNTHETIC_FAILED = TransactionStatus_Status._(20, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SYNTHETIC_FAILED');
  static const TransactionStatus_Status SYNTHETIC_OVERFILL = TransactionStatus_Status._(21, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SYNTHETIC_OVERFILL');
  static const TransactionStatus_Status SYNTHETIC_HANG = TransactionStatus_Status._(22, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SYNTHETIC_HANG');
  static const TransactionStatus_Status APPROVING = TransactionStatus_Status._(23, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'APPROVING');
  static const TransactionStatus_Status APPROVE_REQUESTED = TransactionStatus_Status._(24, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'APPROVE_REQUESTED');
  static const TransactionStatus_Status APPROVED_BY_EXCHANGE = TransactionStatus_Status._(25, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'APPROVED_BY_EXCHANGE');
  static const TransactionStatus_Status REJECTED_BY_USER = TransactionStatus_Status._(26, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REJECTED_BY_USER');
  static const TransactionStatus_Status MATCHED = TransactionStatus_Status._(27, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MATCHED');

  static const $core.List<TransactionStatus_Status> values = <TransactionStatus_Status> [
    IN_TRANSIT,
    REJECTED,
    ACK_PLACE,
    EXPIRED,
    IN_CANCEL,
    ACK_CANCEL,
    REJECT_CANCEL,
    IN_MODIFY,
    ACK_MODIFY,
    REJECT_MODIFY,
    FILL,
    SUSPEND,
    FILL_CORRECT,
    FILL_CANCEL,
    FILL_BUST,
    ACTIVEAT,
    DISCONNECT,
    SYNTHETIC_ACTIVATED,
    UPDATE,
    SYNTHETIC_FAILED,
    SYNTHETIC_OVERFILL,
    SYNTHETIC_HANG,
    APPROVING,
    APPROVE_REQUESTED,
    APPROVED_BY_EXCHANGE,
    REJECTED_BY_USER,
    MATCHED,
  ];

  static final $core.Map<$core.int, TransactionStatus_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TransactionStatus_Status valueOf($core.int value) => _byValue[value];

  const TransactionStatus_Status._($core.int v, $core.String n) : super(v, n);
}

class SignOnResult_ResultCode extends $pb.ProtobufEnum {
  static const SignOnResult_ResultCode SUCCESS = SignOnResult_ResultCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const SignOnResult_ResultCode FAILURE = SignOnResult_ResultCode._(101, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILURE');

  static const $core.List<SignOnResult_ResultCode> values = <SignOnResult_ResultCode> [
    SUCCESS,
    FAILURE,
  ];

  static final $core.Map<$core.int, SignOnResult_ResultCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SignOnResult_ResultCode valueOf($core.int value) => _byValue[value];

  const SignOnResult_ResultCode._($core.int v, $core.String n) : super(v, n);
}

class Entitlement_EntitlementType extends $pb.ProtobufEnum {
  static const Entitlement_EntitlementType FEATURE = Entitlement_EntitlementType._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FEATURE');
  static const Entitlement_EntitlementType NEWS = Entitlement_EntitlementType._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NEWS');
  static const Entitlement_EntitlementType DJNEWS = Entitlement_EntitlementType._(26, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DJNEWS');
  static const Entitlement_EntitlementType MANAGE_SECURITY_METADATA = Entitlement_EntitlementType._(49, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MANAGE_SECURITY_METADATA');
  static const Entitlement_EntitlementType MANAGE_CONTRACT_METADATA = Entitlement_EntitlementType._(50, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MANAGE_CONTRACT_METADATA');

  static const $core.List<Entitlement_EntitlementType> values = <Entitlement_EntitlementType> [
    FEATURE,
    NEWS,
    DJNEWS,
    MANAGE_SECURITY_METADATA,
    MANAGE_CONTRACT_METADATA,
  ];

  static final $core.Map<$core.int, Entitlement_EntitlementType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Entitlement_EntitlementType valueOf($core.int value) => _byValue[value];

  const Entitlement_EntitlementType._($core.int v, $core.String n) : super(v, n);
}

