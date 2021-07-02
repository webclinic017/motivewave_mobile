///
//  Generated code. Do not modify.
//  source: common/shared_1.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'shared_1.pbenum.dart';

class Text extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Text', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'shared_1'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'format')
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'param')
  ;

  Text._() : super();
  factory Text({
    $core.String key,
    $core.String text,
    $core.String format,
    $core.Iterable<$core.String> param,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (text != null) {
      _result.text = text;
    }
    if (format != null) {
      _result.format = format;
    }
    if (param != null) {
      _result.param.addAll(param);
    }
    return _result;
  }
  factory Text.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Text.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Text clone() => Text()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Text copyWith(void Function(Text) updates) => super.copyWith((message) => updates(message as Text)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Text create() => Text._();
  Text createEmptyInstance() => create();
  static $pb.PbList<Text> createRepeated() => $pb.PbList<Text>();
  @$core.pragma('dart2js:noInline')
  static Text getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Text>(create);
  static Text _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get format => $_getSZ(2);
  @$pb.TagNumber(3)
  set format($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFormat() => $_has(2);
  @$pb.TagNumber(3)
  void clearFormat() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get param => $_getList(3);
}

class OrderStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OrderStatus', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'shared_1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  OrderStatus._() : super();
  factory OrderStatus() => create();
  factory OrderStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrderStatus clone() => OrderStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrderStatus copyWith(void Function(OrderStatus) updates) => super.copyWith((message) => updates(message as OrderStatus)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrderStatus create() => OrderStatus._();
  OrderStatus createEmptyInstance() => create();
  static $pb.PbList<OrderStatus> createRepeated() => $pb.PbList<OrderStatus>();
  @$core.pragma('dart2js:noInline')
  static OrderStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrderStatus>(create);
  static OrderStatus _defaultInstance;
}

class TransactionStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransactionStatus', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'shared_1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  TransactionStatus._() : super();
  factory TransactionStatus() => create();
  factory TransactionStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransactionStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransactionStatus clone() => TransactionStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransactionStatus copyWith(void Function(TransactionStatus) updates) => super.copyWith((message) => updates(message as TransactionStatus)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionStatus create() => TransactionStatus._();
  TransactionStatus createEmptyInstance() => create();
  static $pb.PbList<TransactionStatus> createRepeated() => $pb.PbList<TransactionStatus>();
  @$core.pragma('dart2js:noInline')
  static TransactionStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransactionStatus>(create);
  static TransactionStatus _defaultInstance;
}

class SignOnRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignOnRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'shared_1'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessKey')
  ;

  SignOnRequest._() : super();
  factory SignOnRequest({
    $core.String accessKey,
  }) {
    final _result = create();
    if (accessKey != null) {
      _result.accessKey = accessKey;
    }
    return _result;
  }
  factory SignOnRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignOnRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignOnRequest clone() => SignOnRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignOnRequest copyWith(void Function(SignOnRequest) updates) => super.copyWith((message) => updates(message as SignOnRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignOnRequest create() => SignOnRequest._();
  SignOnRequest createEmptyInstance() => create();
  static $pb.PbList<SignOnRequest> createRepeated() => $pb.PbList<SignOnRequest>();
  @$core.pragma('dart2js:noInline')
  static SignOnRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignOnRequest>(create);
  static SignOnRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accessKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessKey() => clearField(1);
}

class SignOnResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignOnResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'shared_1'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resultCode', $pb.PbFieldType.QU3)
    ..aOM<Text>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'details', subBuilder: Text.create)
  ;

  SignOnResult._() : super();
  factory SignOnResult({
    $core.int resultCode,
    Text details,
  }) {
    final _result = create();
    if (resultCode != null) {
      _result.resultCode = resultCode;
    }
    if (details != null) {
      _result.details = details;
    }
    return _result;
  }
  factory SignOnResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignOnResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignOnResult clone() => SignOnResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignOnResult copyWith(void Function(SignOnResult) updates) => super.copyWith((message) => updates(message as SignOnResult)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignOnResult create() => SignOnResult._();
  SignOnResult createEmptyInstance() => create();
  static $pb.PbList<SignOnResult> createRepeated() => $pb.PbList<SignOnResult>();
  @$core.pragma('dart2js:noInline')
  static SignOnResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignOnResult>(create);
  static SignOnResult _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get resultCode => $_getIZ(0);
  @$pb.TagNumber(1)
  set resultCode($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);

  @$pb.TagNumber(2)
  Text get details => $_getN(1);
  @$pb.TagNumber(2)
  set details(Text v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDetails() => $_has(1);
  @$pb.TagNumber(2)
  void clearDetails() => clearField(2);
  @$pb.TagNumber(2)
  Text ensureDetails() => $_ensure(1);
}

class EntitlementRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EntitlementRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'shared_1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  EntitlementRequest._() : super();
  factory EntitlementRequest() => create();
  factory EntitlementRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EntitlementRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EntitlementRequest clone() => EntitlementRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EntitlementRequest copyWith(void Function(EntitlementRequest) updates) => super.copyWith((message) => updates(message as EntitlementRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EntitlementRequest create() => EntitlementRequest._();
  EntitlementRequest createEmptyInstance() => create();
  static $pb.PbList<EntitlementRequest> createRepeated() => $pb.PbList<EntitlementRequest>();
  @$core.pragma('dart2js:noInline')
  static EntitlementRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EntitlementRequest>(create);
  static EntitlementRequest _defaultInstance;
}

class EntitlementReport extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EntitlementReport', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'shared_1'), createEmptyInstance: create)
    ..pc<Entitlement>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entitlement', $pb.PbFieldType.PM, subBuilder: Entitlement.create)
  ;

  EntitlementReport._() : super();
  factory EntitlementReport({
    $core.Iterable<Entitlement> entitlement,
  }) {
    final _result = create();
    if (entitlement != null) {
      _result.entitlement.addAll(entitlement);
    }
    return _result;
  }
  factory EntitlementReport.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EntitlementReport.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EntitlementReport clone() => EntitlementReport()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EntitlementReport copyWith(void Function(EntitlementReport) updates) => super.copyWith((message) => updates(message as EntitlementReport)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EntitlementReport create() => EntitlementReport._();
  EntitlementReport createEmptyInstance() => create();
  static $pb.PbList<EntitlementReport> createRepeated() => $pb.PbList<EntitlementReport>();
  @$core.pragma('dart2js:noInline')
  static EntitlementReport getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EntitlementReport>(create);
  static EntitlementReport _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Entitlement> get entitlement => $_getList(0);
}

class Entitlement extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Entitlement', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'shared_1'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entitlementType', $pb.PbFieldType.QU3)
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entitlementCode')
  ;

  Entitlement._() : super();
  factory Entitlement({
    $core.int entitlementType,
    $core.String entitlementCode,
  }) {
    final _result = create();
    if (entitlementType != null) {
      _result.entitlementType = entitlementType;
    }
    if (entitlementCode != null) {
      _result.entitlementCode = entitlementCode;
    }
    return _result;
  }
  factory Entitlement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Entitlement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Entitlement clone() => Entitlement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Entitlement copyWith(void Function(Entitlement) updates) => super.copyWith((message) => updates(message as Entitlement)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Entitlement create() => Entitlement._();
  Entitlement createEmptyInstance() => create();
  static $pb.PbList<Entitlement> createRepeated() => $pb.PbList<Entitlement>();
  @$core.pragma('dart2js:noInline')
  static Entitlement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Entitlement>(create);
  static Entitlement _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get entitlementType => $_getIZ(0);
  @$pb.TagNumber(1)
  set entitlementType($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEntitlementType() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntitlementType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get entitlementCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set entitlementCode($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEntitlementCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearEntitlementCode() => clearField(2);
}

class Destination extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Destination', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'shared_1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOM<ApplePushNotif>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applePushNotif', subBuilder: ApplePushNotif.create)
    ..aOM<GooglePushNotif>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'googlePushNotif', subBuilder: GooglePushNotif.create)
    ..aOM<EmailNotif>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'emailNotif', subBuilder: EmailNotif.create)
    ..aOM<SmsNotif>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'smsNotif', subBuilder: SmsNotif.create)
  ;

  Destination._() : super();
  factory Destination({
    $core.String description,
    ApplePushNotif applePushNotif,
    GooglePushNotif googlePushNotif,
    EmailNotif emailNotif,
    SmsNotif smsNotif,
  }) {
    final _result = create();
    if (description != null) {
      _result.description = description;
    }
    if (applePushNotif != null) {
      _result.applePushNotif = applePushNotif;
    }
    if (googlePushNotif != null) {
      _result.googlePushNotif = googlePushNotif;
    }
    if (emailNotif != null) {
      _result.emailNotif = emailNotif;
    }
    if (smsNotif != null) {
      _result.smsNotif = smsNotif;
    }
    return _result;
  }
  factory Destination.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Destination.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Destination clone() => Destination()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Destination copyWith(void Function(Destination) updates) => super.copyWith((message) => updates(message as Destination)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Destination create() => Destination._();
  Destination createEmptyInstance() => create();
  static $pb.PbList<Destination> createRepeated() => $pb.PbList<Destination>();
  @$core.pragma('dart2js:noInline')
  static Destination getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Destination>(create);
  static Destination _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get description => $_getSZ(0);
  @$pb.TagNumber(1)
  set description($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDescription() => $_has(0);
  @$pb.TagNumber(1)
  void clearDescription() => clearField(1);

  @$pb.TagNumber(2)
  ApplePushNotif get applePushNotif => $_getN(1);
  @$pb.TagNumber(2)
  set applePushNotif(ApplePushNotif v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasApplePushNotif() => $_has(1);
  @$pb.TagNumber(2)
  void clearApplePushNotif() => clearField(2);
  @$pb.TagNumber(2)
  ApplePushNotif ensureApplePushNotif() => $_ensure(1);

  @$pb.TagNumber(3)
  GooglePushNotif get googlePushNotif => $_getN(2);
  @$pb.TagNumber(3)
  set googlePushNotif(GooglePushNotif v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasGooglePushNotif() => $_has(2);
  @$pb.TagNumber(3)
  void clearGooglePushNotif() => clearField(3);
  @$pb.TagNumber(3)
  GooglePushNotif ensureGooglePushNotif() => $_ensure(2);

  @$pb.TagNumber(4)
  EmailNotif get emailNotif => $_getN(3);
  @$pb.TagNumber(4)
  set emailNotif(EmailNotif v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasEmailNotif() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmailNotif() => clearField(4);
  @$pb.TagNumber(4)
  EmailNotif ensureEmailNotif() => $_ensure(3);

  @$pb.TagNumber(5)
  SmsNotif get smsNotif => $_getN(4);
  @$pb.TagNumber(5)
  set smsNotif(SmsNotif v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSmsNotif() => $_has(4);
  @$pb.TagNumber(5)
  void clearSmsNotif() => clearField(5);
  @$pb.TagNumber(5)
  SmsNotif ensureSmsNotif() => $_ensure(4);
}

class ApplePushNotif extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApplePushNotif', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'shared_1'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceToken')
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appId')
  ;

  ApplePushNotif._() : super();
  factory ApplePushNotif({
    $core.String deviceToken,
    $core.String appId,
  }) {
    final _result = create();
    if (deviceToken != null) {
      _result.deviceToken = deviceToken;
    }
    if (appId != null) {
      _result.appId = appId;
    }
    return _result;
  }
  factory ApplePushNotif.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplePushNotif.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApplePushNotif clone() => ApplePushNotif()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApplePushNotif copyWith(void Function(ApplePushNotif) updates) => super.copyWith((message) => updates(message as ApplePushNotif)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApplePushNotif create() => ApplePushNotif._();
  ApplePushNotif createEmptyInstance() => create();
  static $pb.PbList<ApplePushNotif> createRepeated() => $pb.PbList<ApplePushNotif>();
  @$core.pragma('dart2js:noInline')
  static ApplePushNotif getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplePushNotif>(create);
  static ApplePushNotif _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get appId => $_getSZ(1);
  @$pb.TagNumber(2)
  set appId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAppId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppId() => clearField(2);
}

class GooglePushNotif extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GooglePushNotif', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'shared_1'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'registrationToken')
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'senderId')
  ;

  GooglePushNotif._() : super();
  factory GooglePushNotif({
    $core.String registrationToken,
    $core.String senderId,
  }) {
    final _result = create();
    if (registrationToken != null) {
      _result.registrationToken = registrationToken;
    }
    if (senderId != null) {
      _result.senderId = senderId;
    }
    return _result;
  }
  factory GooglePushNotif.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GooglePushNotif.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GooglePushNotif clone() => GooglePushNotif()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GooglePushNotif copyWith(void Function(GooglePushNotif) updates) => super.copyWith((message) => updates(message as GooglePushNotif)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GooglePushNotif create() => GooglePushNotif._();
  GooglePushNotif createEmptyInstance() => create();
  static $pb.PbList<GooglePushNotif> createRepeated() => $pb.PbList<GooglePushNotif>();
  @$core.pragma('dart2js:noInline')
  static GooglePushNotif getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GooglePushNotif>(create);
  static GooglePushNotif _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get registrationToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set registrationToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRegistrationToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearRegistrationToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get senderId => $_getSZ(1);
  @$pb.TagNumber(2)
  set senderId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSenderId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSenderId() => clearField(2);
}

class NotificationProperty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NotificationProperty', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'shared_1'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'propertyName')
    ..aQS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'propertyValue')
  ;

  NotificationProperty._() : super();
  factory NotificationProperty({
    $core.String propertyName,
    $core.String propertyValue,
  }) {
    final _result = create();
    if (propertyName != null) {
      _result.propertyName = propertyName;
    }
    if (propertyValue != null) {
      _result.propertyValue = propertyValue;
    }
    return _result;
  }
  factory NotificationProperty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotificationProperty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NotificationProperty clone() => NotificationProperty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NotificationProperty copyWith(void Function(NotificationProperty) updates) => super.copyWith((message) => updates(message as NotificationProperty)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotificationProperty create() => NotificationProperty._();
  NotificationProperty createEmptyInstance() => create();
  static $pb.PbList<NotificationProperty> createRepeated() => $pb.PbList<NotificationProperty>();
  @$core.pragma('dart2js:noInline')
  static NotificationProperty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotificationProperty>(create);
  static NotificationProperty _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get propertyName => $_getSZ(0);
  @$pb.TagNumber(1)
  set propertyName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPropertyName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPropertyName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get propertyValue => $_getSZ(1);
  @$pb.TagNumber(2)
  set propertyValue($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPropertyValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearPropertyValue() => clearField(2);
}

class EmailNotif extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EmailNotif', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'shared_1'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recipients')
    ..hasRequiredFields = false
  ;

  EmailNotif._() : super();
  factory EmailNotif({
    $core.Iterable<$core.String> recipients,
  }) {
    final _result = create();
    if (recipients != null) {
      _result.recipients.addAll(recipients);
    }
    return _result;
  }
  factory EmailNotif.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmailNotif.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmailNotif clone() => EmailNotif()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmailNotif copyWith(void Function(EmailNotif) updates) => super.copyWith((message) => updates(message as EmailNotif)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmailNotif create() => EmailNotif._();
  EmailNotif createEmptyInstance() => create();
  static $pb.PbList<EmailNotif> createRepeated() => $pb.PbList<EmailNotif>();
  @$core.pragma('dart2js:noInline')
  static EmailNotif getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmailNotif>(create);
  static EmailNotif _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get recipients => $_getList(0);
}

class SmsNotif extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SmsNotif', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'shared_1'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phoneNumber')
  ;

  SmsNotif._() : super();
  factory SmsNotif({
    $core.String phoneNumber,
  }) {
    final _result = create();
    if (phoneNumber != null) {
      _result.phoneNumber = phoneNumber;
    }
    return _result;
  }
  factory SmsNotif.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SmsNotif.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SmsNotif clone() => SmsNotif()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SmsNotif copyWith(void Function(SmsNotif) updates) => super.copyWith((message) => updates(message as SmsNotif)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SmsNotif create() => SmsNotif._();
  SmsNotif createEmptyInstance() => create();
  static $pb.PbList<SmsNotif> createRepeated() => $pb.PbList<SmsNotif>();
  @$core.pragma('dart2js:noInline')
  static SmsNotif getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SmsNotif>(create);
  static SmsNotif _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get phoneNumber => $_getSZ(0);
  @$pb.TagNumber(1)
  set phoneNumber($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhoneNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhoneNumber() => clearField(1);
}

class NamedValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NamedValue', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'shared_1'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleted')
  ;

  NamedValue._() : super();
  factory NamedValue({
    $core.String name,
    $core.String value,
    $core.bool deleted,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (value != null) {
      _result.value = value;
    }
    if (deleted != null) {
      _result.deleted = deleted;
    }
    return _result;
  }
  factory NamedValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NamedValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NamedValue clone() => NamedValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NamedValue copyWith(void Function(NamedValue) updates) => super.copyWith((message) => updates(message as NamedValue)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NamedValue create() => NamedValue._();
  NamedValue createEmptyInstance() => create();
  static $pb.PbList<NamedValue> createRepeated() => $pb.PbList<NamedValue>();
  @$core.pragma('dart2js:noInline')
  static NamedValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NamedValue>(create);
  static NamedValue _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get deleted => $_getBF(2);
  @$pb.TagNumber(3)
  set deleted($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDeleted() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeleted() => clearField(3);
}

