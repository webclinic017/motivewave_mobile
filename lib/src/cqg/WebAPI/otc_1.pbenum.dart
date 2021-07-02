///
//  Generated code. Do not modify.
//  source: WebAPI/otc_1.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class InstanceState extends $pb.ProtobufEnum {
  static const InstanceState ONLINE = InstanceState._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ONLINE');
  static const InstanceState OFFLINE = InstanceState._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OFFLINE');
  static const InstanceState SUSPENDED = InstanceState._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUSPENDED');

  static const $core.List<InstanceState> values = <InstanceState> [
    ONLINE,
    OFFLINE,
    SUSPENDED,
  ];

  static final $core.Map<$core.int, InstanceState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static InstanceState valueOf($core.int value) => _byValue[value];

  const InstanceState._($core.int v, $core.String n) : super(v, n);
}

class OtcReport_StatusCode extends $pb.ProtobufEnum {
  static const OtcReport_StatusCode SUCCESS = OtcReport_StatusCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const OtcReport_StatusCode SUBSCRIBED = OtcReport_StatusCode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUBSCRIBED');
  static const OtcReport_StatusCode DROPPED = OtcReport_StatusCode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DROPPED');
  static const OtcReport_StatusCode UPDATE = OtcReport_StatusCode._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UPDATE');
  static const OtcReport_StatusCode DISCONNECTED = OtcReport_StatusCode._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DISCONNECTED');
  static const OtcReport_StatusCode FAILURE = OtcReport_StatusCode._(101, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILURE');
  static const OtcReport_StatusCode INVALID_PARAMS = OtcReport_StatusCode._(102, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INVALID_PARAMS');
  static const OtcReport_StatusCode ACCESS_DENIED = OtcReport_StatusCode._(103, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACCESS_DENIED');
  static const OtcReport_StatusCode SUBSCRIPTION_LIMIT_VIOLATION = OtcReport_StatusCode._(104, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUBSCRIPTION_LIMIT_VIOLATION');
  static const OtcReport_StatusCode SUBSCRIPTION_RATE_LIMIT_VIOLATION = OtcReport_StatusCode._(105, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUBSCRIPTION_RATE_LIMIT_VIOLATION');

  static const $core.List<OtcReport_StatusCode> values = <OtcReport_StatusCode> [
    SUCCESS,
    SUBSCRIBED,
    DROPPED,
    UPDATE,
    DISCONNECTED,
    FAILURE,
    INVALID_PARAMS,
    ACCESS_DENIED,
    SUBSCRIPTION_LIMIT_VIOLATION,
    SUBSCRIPTION_RATE_LIMIT_VIOLATION,
  ];

  static final $core.Map<$core.int, OtcReport_StatusCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OtcReport_StatusCode valueOf($core.int value) => _byValue[value];

  const OtcReport_StatusCode._($core.int v, $core.String n) : super(v, n);
}

class ChangeOtcStateRequest_Action extends $pb.ProtobufEnum {
  static const ChangeOtcStateRequest_Action ACTIVATE = ChangeOtcStateRequest_Action._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTIVATE');
  static const ChangeOtcStateRequest_Action SUSPEND = ChangeOtcStateRequest_Action._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUSPEND');

  static const $core.List<ChangeOtcStateRequest_Action> values = <ChangeOtcStateRequest_Action> [
    ACTIVATE,
    SUSPEND,
  ];

  static final $core.Map<$core.int, ChangeOtcStateRequest_Action> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ChangeOtcStateRequest_Action valueOf($core.int value) => _byValue[value];

  const ChangeOtcStateRequest_Action._($core.int v, $core.String n) : super(v, n);
}

