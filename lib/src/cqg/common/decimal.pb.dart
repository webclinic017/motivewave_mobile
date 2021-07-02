///
//  Generated code. Do not modify.
//  source: common/decimal.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Decimal extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Decimal', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cqg'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'significand', $pb.PbFieldType.OS6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'exponent', $pb.PbFieldType.OS3)
    ..hasRequiredFields = false
  ;

  Decimal._() : super();
  factory Decimal({
    $fixnum.Int64 significand,
    $core.int exponent,
  }) {
    final _result = create();
    if (significand != null) {
      _result.significand = significand;
    }
    if (exponent != null) {
      _result.exponent = exponent;
    }
    return _result;
  }
  factory Decimal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Decimal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Decimal clone() => Decimal()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Decimal copyWith(void Function(Decimal) updates) => super.copyWith((message) => updates(message as Decimal)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Decimal create() => Decimal._();
  Decimal createEmptyInstance() => create();
  static $pb.PbList<Decimal> createRepeated() => $pb.PbList<Decimal>();
  @$core.pragma('dart2js:noInline')
  static Decimal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Decimal>(create);
  static Decimal _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get significand => $_getI64(0);
  @$pb.TagNumber(1)
  set significand($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSignificand() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignificand() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get exponent => $_getIZ(1);
  @$pb.TagNumber(2)
  set exponent($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExponent() => $_has(1);
  @$pb.TagNumber(2)
  void clearExponent() => clearField(2);
}

