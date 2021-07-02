///
//  Generated code. Do not modify.
//  source: WebAPI/metadata_1.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class MetadataAdminResult_ResultCode extends $pb.ProtobufEnum {
  static const MetadataAdminResult_ResultCode SUCCESS = MetadataAdminResult_ResultCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const MetadataAdminResult_ResultCode FAILURE = MetadataAdminResult_ResultCode._(101, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILURE');
  static const MetadataAdminResult_ResultCode REQUEST_RATE_LIMIT_VIOLATION = MetadataAdminResult_ResultCode._(102, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REQUEST_RATE_LIMIT_VIOLATION');

  static const $core.List<MetadataAdminResult_ResultCode> values = <MetadataAdminResult_ResultCode> [
    SUCCESS,
    FAILURE,
    REQUEST_RATE_LIMIT_VIOLATION,
  ];

  static final $core.Map<$core.int, MetadataAdminResult_ResultCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MetadataAdminResult_ResultCode valueOf($core.int value) => _byValue[value];

  const MetadataAdminResult_ResultCode._($core.int v, $core.String n) : super(v, n);
}

