///
//  Generated code. Do not modify.
//  source: WebAPI/otc_1.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../common/shared_1.pb.dart' as $0;
import '../common/decimal.pb.dart' as $1;
import '../common/timestamp.pb.dart' as $2;

export 'otc_1.pbenum.dart';

class OtcRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OtcRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'otc_1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..aOM<OtcInstancesSubscription>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'otcInstancesSubscription', subBuilder: OtcInstancesSubscription.create)
    ..aOM<HedgeBooksSubscription>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hedgeBooksSubscription', subBuilder: HedgeBooksSubscription.create)
    ..aOM<HedgeBookDetailsSubscription>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hedgeBookDetailsSubscription', subBuilder: HedgeBookDetailsSubscription.create)
    ..aOM<OffsetHedgeBalanceRequest>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offsetHedgeBalanceRequest', subBuilder: OffsetHedgeBalanceRequest.create)
    ..aOM<ChangeOtcStateRequest>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'changeOtcStateRequest', subBuilder: ChangeOtcStateRequest.create)
  ;

  OtcRequest._() : super();
  factory OtcRequest({
    $core.String requestId,
    OtcInstancesSubscription otcInstancesSubscription,
    HedgeBooksSubscription hedgeBooksSubscription,
    HedgeBookDetailsSubscription hedgeBookDetailsSubscription,
    OffsetHedgeBalanceRequest offsetHedgeBalanceRequest,
    ChangeOtcStateRequest changeOtcStateRequest,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (otcInstancesSubscription != null) {
      _result.otcInstancesSubscription = otcInstancesSubscription;
    }
    if (hedgeBooksSubscription != null) {
      _result.hedgeBooksSubscription = hedgeBooksSubscription;
    }
    if (hedgeBookDetailsSubscription != null) {
      _result.hedgeBookDetailsSubscription = hedgeBookDetailsSubscription;
    }
    if (offsetHedgeBalanceRequest != null) {
      _result.offsetHedgeBalanceRequest = offsetHedgeBalanceRequest;
    }
    if (changeOtcStateRequest != null) {
      _result.changeOtcStateRequest = changeOtcStateRequest;
    }
    return _result;
  }
  factory OtcRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OtcRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OtcRequest clone() => OtcRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OtcRequest copyWith(void Function(OtcRequest) updates) => super.copyWith((message) => updates(message as OtcRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OtcRequest create() => OtcRequest._();
  OtcRequest createEmptyInstance() => create();
  static $pb.PbList<OtcRequest> createRepeated() => $pb.PbList<OtcRequest>();
  @$core.pragma('dart2js:noInline')
  static OtcRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OtcRequest>(create);
  static OtcRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  OtcInstancesSubscription get otcInstancesSubscription => $_getN(1);
  @$pb.TagNumber(2)
  set otcInstancesSubscription(OtcInstancesSubscription v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOtcInstancesSubscription() => $_has(1);
  @$pb.TagNumber(2)
  void clearOtcInstancesSubscription() => clearField(2);
  @$pb.TagNumber(2)
  OtcInstancesSubscription ensureOtcInstancesSubscription() => $_ensure(1);

  @$pb.TagNumber(3)
  HedgeBooksSubscription get hedgeBooksSubscription => $_getN(2);
  @$pb.TagNumber(3)
  set hedgeBooksSubscription(HedgeBooksSubscription v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasHedgeBooksSubscription() => $_has(2);
  @$pb.TagNumber(3)
  void clearHedgeBooksSubscription() => clearField(3);
  @$pb.TagNumber(3)
  HedgeBooksSubscription ensureHedgeBooksSubscription() => $_ensure(2);

  @$pb.TagNumber(4)
  HedgeBookDetailsSubscription get hedgeBookDetailsSubscription => $_getN(3);
  @$pb.TagNumber(4)
  set hedgeBookDetailsSubscription(HedgeBookDetailsSubscription v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasHedgeBookDetailsSubscription() => $_has(3);
  @$pb.TagNumber(4)
  void clearHedgeBookDetailsSubscription() => clearField(4);
  @$pb.TagNumber(4)
  HedgeBookDetailsSubscription ensureHedgeBookDetailsSubscription() => $_ensure(3);

  @$pb.TagNumber(5)
  OffsetHedgeBalanceRequest get offsetHedgeBalanceRequest => $_getN(4);
  @$pb.TagNumber(5)
  set offsetHedgeBalanceRequest(OffsetHedgeBalanceRequest v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasOffsetHedgeBalanceRequest() => $_has(4);
  @$pb.TagNumber(5)
  void clearOffsetHedgeBalanceRequest() => clearField(5);
  @$pb.TagNumber(5)
  OffsetHedgeBalanceRequest ensureOffsetHedgeBalanceRequest() => $_ensure(4);

  @$pb.TagNumber(6)
  ChangeOtcStateRequest get changeOtcStateRequest => $_getN(5);
  @$pb.TagNumber(6)
  set changeOtcStateRequest(ChangeOtcStateRequest v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasChangeOtcStateRequest() => $_has(5);
  @$pb.TagNumber(6)
  void clearChangeOtcStateRequest() => clearField(6);
  @$pb.TagNumber(6)
  ChangeOtcStateRequest ensureChangeOtcStateRequest() => $_ensure(5);
}

class OtcReport extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OtcReport', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'otc_1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resultCode', $pb.PbFieldType.OU3)
    ..aOM<$0.Text>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'details', subBuilder: $0.Text.create)
    ..aOM<OtcInstancesReport>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'otcInstancesReport', subBuilder: OtcInstancesReport.create)
    ..aOM<HedgeBooksReport>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hedgeBooksReport', subBuilder: HedgeBooksReport.create)
    ..aOM<HedgeBookDetailsReport>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hedgeBookDetailsReport', subBuilder: HedgeBookDetailsReport.create)
    ..aOM<OffsetHedgeBalanceResult>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offsetHedgeBalanceResult', subBuilder: OffsetHedgeBalanceResult.create)
    ..aOM<ChangeOtcStateResult>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'changeOtcStateResult', subBuilder: ChangeOtcStateResult.create)
  ;

  OtcReport._() : super();
  factory OtcReport({
    $core.String requestId,
    $core.int resultCode,
    $0.Text details,
    OtcInstancesReport otcInstancesReport,
    HedgeBooksReport hedgeBooksReport,
    HedgeBookDetailsReport hedgeBookDetailsReport,
    OffsetHedgeBalanceResult offsetHedgeBalanceResult,
    ChangeOtcStateResult changeOtcStateResult,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (resultCode != null) {
      _result.resultCode = resultCode;
    }
    if (details != null) {
      _result.details = details;
    }
    if (otcInstancesReport != null) {
      _result.otcInstancesReport = otcInstancesReport;
    }
    if (hedgeBooksReport != null) {
      _result.hedgeBooksReport = hedgeBooksReport;
    }
    if (hedgeBookDetailsReport != null) {
      _result.hedgeBookDetailsReport = hedgeBookDetailsReport;
    }
    if (offsetHedgeBalanceResult != null) {
      _result.offsetHedgeBalanceResult = offsetHedgeBalanceResult;
    }
    if (changeOtcStateResult != null) {
      _result.changeOtcStateResult = changeOtcStateResult;
    }
    return _result;
  }
  factory OtcReport.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OtcReport.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OtcReport clone() => OtcReport()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OtcReport copyWith(void Function(OtcReport) updates) => super.copyWith((message) => updates(message as OtcReport)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OtcReport create() => OtcReport._();
  OtcReport createEmptyInstance() => create();
  static $pb.PbList<OtcReport> createRepeated() => $pb.PbList<OtcReport>();
  @$core.pragma('dart2js:noInline')
  static OtcReport getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OtcReport>(create);
  static OtcReport _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get resultCode => $_getIZ(1);
  @$pb.TagNumber(2)
  set resultCode($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasResultCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearResultCode() => clearField(2);

  @$pb.TagNumber(3)
  $0.Text get details => $_getN(2);
  @$pb.TagNumber(3)
  set details($0.Text v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDetails() => $_has(2);
  @$pb.TagNumber(3)
  void clearDetails() => clearField(3);
  @$pb.TagNumber(3)
  $0.Text ensureDetails() => $_ensure(2);

  @$pb.TagNumber(4)
  OtcInstancesReport get otcInstancesReport => $_getN(3);
  @$pb.TagNumber(4)
  set otcInstancesReport(OtcInstancesReport v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasOtcInstancesReport() => $_has(3);
  @$pb.TagNumber(4)
  void clearOtcInstancesReport() => clearField(4);
  @$pb.TagNumber(4)
  OtcInstancesReport ensureOtcInstancesReport() => $_ensure(3);

  @$pb.TagNumber(5)
  HedgeBooksReport get hedgeBooksReport => $_getN(4);
  @$pb.TagNumber(5)
  set hedgeBooksReport(HedgeBooksReport v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasHedgeBooksReport() => $_has(4);
  @$pb.TagNumber(5)
  void clearHedgeBooksReport() => clearField(5);
  @$pb.TagNumber(5)
  HedgeBooksReport ensureHedgeBooksReport() => $_ensure(4);

  @$pb.TagNumber(6)
  HedgeBookDetailsReport get hedgeBookDetailsReport => $_getN(5);
  @$pb.TagNumber(6)
  set hedgeBookDetailsReport(HedgeBookDetailsReport v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasHedgeBookDetailsReport() => $_has(5);
  @$pb.TagNumber(6)
  void clearHedgeBookDetailsReport() => clearField(6);
  @$pb.TagNumber(6)
  HedgeBookDetailsReport ensureHedgeBookDetailsReport() => $_ensure(5);

  @$pb.TagNumber(7)
  OffsetHedgeBalanceResult get offsetHedgeBalanceResult => $_getN(6);
  @$pb.TagNumber(7)
  set offsetHedgeBalanceResult(OffsetHedgeBalanceResult v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasOffsetHedgeBalanceResult() => $_has(6);
  @$pb.TagNumber(7)
  void clearOffsetHedgeBalanceResult() => clearField(7);
  @$pb.TagNumber(7)
  OffsetHedgeBalanceResult ensureOffsetHedgeBalanceResult() => $_ensure(6);

  @$pb.TagNumber(8)
  ChangeOtcStateResult get changeOtcStateResult => $_getN(7);
  @$pb.TagNumber(8)
  set changeOtcStateResult(ChangeOtcStateResult v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasChangeOtcStateResult() => $_has(7);
  @$pb.TagNumber(8)
  void clearChangeOtcStateResult() => clearField(8);
  @$pb.TagNumber(8)
  ChangeOtcStateResult ensureChangeOtcStateResult() => $_ensure(7);
}

class HedgeBalanceKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HedgeBalanceKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'otc_1'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId', $pb.PbFieldType.OS3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contractId', $pb.PbFieldType.OU3)
    ..hasExtensions = true
  ;

  HedgeBalanceKey._() : super();
  factory HedgeBalanceKey({
    $core.int accountId,
    $core.int contractId,
  }) {
    final _result = create();
    if (accountId != null) {
      _result.accountId = accountId;
    }
    if (contractId != null) {
      _result.contractId = contractId;
    }
    return _result;
  }
  factory HedgeBalanceKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HedgeBalanceKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HedgeBalanceKey clone() => HedgeBalanceKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HedgeBalanceKey copyWith(void Function(HedgeBalanceKey) updates) => super.copyWith((message) => updates(message as HedgeBalanceKey)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HedgeBalanceKey create() => HedgeBalanceKey._();
  HedgeBalanceKey createEmptyInstance() => create();
  static $pb.PbList<HedgeBalanceKey> createRepeated() => $pb.PbList<HedgeBalanceKey>();
  @$core.pragma('dart2js:noInline')
  static HedgeBalanceKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HedgeBalanceKey>(create);
  static HedgeBalanceKey _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get accountId => $_getIZ(0);
  @$pb.TagNumber(1)
  set accountId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get contractId => $_getIZ(1);
  @$pb.TagNumber(2)
  set contractId($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContractId() => $_has(1);
  @$pb.TagNumber(2)
  void clearContractId() => clearField(2);
}

class OtcInstancesSubscription extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OtcInstancesSubscription', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'otc_1'), createEmptyInstance: create)
    ..a<$core.bool>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscribe', $pb.PbFieldType.OB, defaultOrMaker: true)
    ..hasRequiredFields = false
  ;

  OtcInstancesSubscription._() : super();
  factory OtcInstancesSubscription({
    $core.bool subscribe,
  }) {
    final _result = create();
    if (subscribe != null) {
      _result.subscribe = subscribe;
    }
    return _result;
  }
  factory OtcInstancesSubscription.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OtcInstancesSubscription.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OtcInstancesSubscription clone() => OtcInstancesSubscription()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OtcInstancesSubscription copyWith(void Function(OtcInstancesSubscription) updates) => super.copyWith((message) => updates(message as OtcInstancesSubscription)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OtcInstancesSubscription create() => OtcInstancesSubscription._();
  OtcInstancesSubscription createEmptyInstance() => create();
  static $pb.PbList<OtcInstancesSubscription> createRepeated() => $pb.PbList<OtcInstancesSubscription>();
  @$core.pragma('dart2js:noInline')
  static OtcInstancesSubscription getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OtcInstancesSubscription>(create);
  static OtcInstancesSubscription _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get subscribe => $_getB(0, true);
  @$pb.TagNumber(1)
  set subscribe($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubscribe() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubscribe() => clearField(1);
}

class OtcInstancesReport extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OtcInstancesReport', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'otc_1'), createEmptyInstance: create)
    ..pc<OtcInstanceState>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'otcInstanceState', $pb.PbFieldType.PM, subBuilder: OtcInstanceState.create)
    ..hasRequiredFields = false
  ;

  OtcInstancesReport._() : super();
  factory OtcInstancesReport({
    $core.Iterable<OtcInstanceState> otcInstanceState,
  }) {
    final _result = create();
    if (otcInstanceState != null) {
      _result.otcInstanceState.addAll(otcInstanceState);
    }
    return _result;
  }
  factory OtcInstancesReport.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OtcInstancesReport.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OtcInstancesReport clone() => OtcInstancesReport()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OtcInstancesReport copyWith(void Function(OtcInstancesReport) updates) => super.copyWith((message) => updates(message as OtcInstancesReport)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OtcInstancesReport create() => OtcInstancesReport._();
  OtcInstancesReport createEmptyInstance() => create();
  static $pb.PbList<OtcInstancesReport> createRepeated() => $pb.PbList<OtcInstancesReport>();
  @$core.pragma('dart2js:noInline')
  static OtcInstancesReport getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OtcInstancesReport>(create);
  static OtcInstancesReport _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<OtcInstanceState> get otcInstanceState => $_getList(0);
}

class OtcInstanceState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OtcInstanceState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'otc_1'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'instanceId', $pb.PbFieldType.OU3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  OtcInstanceState._() : super();
  factory OtcInstanceState({
    $core.int instanceId,
    $core.String name,
    $core.int state,
  }) {
    final _result = create();
    if (instanceId != null) {
      _result.instanceId = instanceId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (state != null) {
      _result.state = state;
    }
    return _result;
  }
  factory OtcInstanceState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OtcInstanceState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OtcInstanceState clone() => OtcInstanceState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OtcInstanceState copyWith(void Function(OtcInstanceState) updates) => super.copyWith((message) => updates(message as OtcInstanceState)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OtcInstanceState create() => OtcInstanceState._();
  OtcInstanceState createEmptyInstance() => create();
  static $pb.PbList<OtcInstanceState> createRepeated() => $pb.PbList<OtcInstanceState>();
  @$core.pragma('dart2js:noInline')
  static OtcInstanceState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OtcInstanceState>(create);
  static OtcInstanceState _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get instanceId => $_getIZ(0);
  @$pb.TagNumber(1)
  set instanceId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInstanceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInstanceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get state => $_getIZ(2);
  @$pb.TagNumber(3)
  set state($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(2);
  @$pb.TagNumber(3)
  void clearState() => clearField(3);
}

class HedgeBooksSubscription extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HedgeBooksSubscription', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'otc_1'), createEmptyInstance: create)
    ..a<$core.bool>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscribe', $pb.PbFieldType.OB, defaultOrMaker: true)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'otcInstanceId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  HedgeBooksSubscription._() : super();
  factory HedgeBooksSubscription({
    $core.bool subscribe,
    $core.int otcInstanceId,
  }) {
    final _result = create();
    if (subscribe != null) {
      _result.subscribe = subscribe;
    }
    if (otcInstanceId != null) {
      _result.otcInstanceId = otcInstanceId;
    }
    return _result;
  }
  factory HedgeBooksSubscription.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HedgeBooksSubscription.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HedgeBooksSubscription clone() => HedgeBooksSubscription()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HedgeBooksSubscription copyWith(void Function(HedgeBooksSubscription) updates) => super.copyWith((message) => updates(message as HedgeBooksSubscription)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HedgeBooksSubscription create() => HedgeBooksSubscription._();
  HedgeBooksSubscription createEmptyInstance() => create();
  static $pb.PbList<HedgeBooksSubscription> createRepeated() => $pb.PbList<HedgeBooksSubscription>();
  @$core.pragma('dart2js:noInline')
  static HedgeBooksSubscription getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HedgeBooksSubscription>(create);
  static HedgeBooksSubscription _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get subscribe => $_getB(0, true);
  @$pb.TagNumber(1)
  set subscribe($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubscribe() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubscribe() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get otcInstanceId => $_getIZ(1);
  @$pb.TagNumber(2)
  set otcInstanceId($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOtcInstanceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOtcInstanceId() => clearField(2);
}

class HedgeBooksReport extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HedgeBooksReport', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'otc_1'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isSnapshot')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isLastPart')
    ..pc<HedgeBalanceDetails>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hedgeBalanceDetails', $pb.PbFieldType.PM, subBuilder: HedgeBalanceDetails.create)
  ;

  HedgeBooksReport._() : super();
  factory HedgeBooksReport({
    $core.bool isSnapshot,
    $core.bool isLastPart,
    $core.Iterable<HedgeBalanceDetails> hedgeBalanceDetails,
  }) {
    final _result = create();
    if (isSnapshot != null) {
      _result.isSnapshot = isSnapshot;
    }
    if (isLastPart != null) {
      _result.isLastPart = isLastPart;
    }
    if (hedgeBalanceDetails != null) {
      _result.hedgeBalanceDetails.addAll(hedgeBalanceDetails);
    }
    return _result;
  }
  factory HedgeBooksReport.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HedgeBooksReport.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HedgeBooksReport clone() => HedgeBooksReport()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HedgeBooksReport copyWith(void Function(HedgeBooksReport) updates) => super.copyWith((message) => updates(message as HedgeBooksReport)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HedgeBooksReport create() => HedgeBooksReport._();
  HedgeBooksReport createEmptyInstance() => create();
  static $pb.PbList<HedgeBooksReport> createRepeated() => $pb.PbList<HedgeBooksReport>();
  @$core.pragma('dart2js:noInline')
  static HedgeBooksReport getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HedgeBooksReport>(create);
  static HedgeBooksReport _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isSnapshot => $_getBF(0);
  @$pb.TagNumber(1)
  set isSnapshot($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsSnapshot() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsSnapshot() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isLastPart => $_getBF(1);
  @$pb.TagNumber(2)
  set isLastPart($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsLastPart() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsLastPart() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<HedgeBalanceDetails> get hedgeBalanceDetails => $_getList(2);
}

class HedgeBalanceDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HedgeBalanceDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'otc_1'), createEmptyInstance: create)
    ..aOM<HedgeBalanceKey>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hedgeBalanceKey', subBuilder: HedgeBalanceKey.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleted')
    ..aOM<$1.Decimal>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hedgeBalance', subBuilder: $1.Decimal.create)
    ..aOM<$1.Decimal>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pendingBalance', subBuilder: $1.Decimal.create)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contractSymbol')
  ;

  HedgeBalanceDetails._() : super();
  factory HedgeBalanceDetails({
    HedgeBalanceKey hedgeBalanceKey,
    $core.bool deleted,
    $1.Decimal hedgeBalance,
    $1.Decimal pendingBalance,
    $core.String contractSymbol,
  }) {
    final _result = create();
    if (hedgeBalanceKey != null) {
      _result.hedgeBalanceKey = hedgeBalanceKey;
    }
    if (deleted != null) {
      _result.deleted = deleted;
    }
    if (hedgeBalance != null) {
      _result.hedgeBalance = hedgeBalance;
    }
    if (pendingBalance != null) {
      _result.pendingBalance = pendingBalance;
    }
    if (contractSymbol != null) {
      _result.contractSymbol = contractSymbol;
    }
    return _result;
  }
  factory HedgeBalanceDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HedgeBalanceDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HedgeBalanceDetails clone() => HedgeBalanceDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HedgeBalanceDetails copyWith(void Function(HedgeBalanceDetails) updates) => super.copyWith((message) => updates(message as HedgeBalanceDetails)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HedgeBalanceDetails create() => HedgeBalanceDetails._();
  HedgeBalanceDetails createEmptyInstance() => create();
  static $pb.PbList<HedgeBalanceDetails> createRepeated() => $pb.PbList<HedgeBalanceDetails>();
  @$core.pragma('dart2js:noInline')
  static HedgeBalanceDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HedgeBalanceDetails>(create);
  static HedgeBalanceDetails _defaultInstance;

  @$pb.TagNumber(1)
  HedgeBalanceKey get hedgeBalanceKey => $_getN(0);
  @$pb.TagNumber(1)
  set hedgeBalanceKey(HedgeBalanceKey v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHedgeBalanceKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearHedgeBalanceKey() => clearField(1);
  @$pb.TagNumber(1)
  HedgeBalanceKey ensureHedgeBalanceKey() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get deleted => $_getBF(1);
  @$pb.TagNumber(2)
  set deleted($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeleted() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeleted() => clearField(2);

  @$pb.TagNumber(3)
  $1.Decimal get hedgeBalance => $_getN(2);
  @$pb.TagNumber(3)
  set hedgeBalance($1.Decimal v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasHedgeBalance() => $_has(2);
  @$pb.TagNumber(3)
  void clearHedgeBalance() => clearField(3);
  @$pb.TagNumber(3)
  $1.Decimal ensureHedgeBalance() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Decimal get pendingBalance => $_getN(3);
  @$pb.TagNumber(4)
  set pendingBalance($1.Decimal v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPendingBalance() => $_has(3);
  @$pb.TagNumber(4)
  void clearPendingBalance() => clearField(4);
  @$pb.TagNumber(4)
  $1.Decimal ensurePendingBalance() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get contractSymbol => $_getSZ(4);
  @$pb.TagNumber(5)
  set contractSymbol($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasContractSymbol() => $_has(4);
  @$pb.TagNumber(5)
  void clearContractSymbol() => clearField(5);
}

class HedgeBookDetailsSubscription extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HedgeBookDetailsSubscription', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'otc_1'), createEmptyInstance: create)
    ..a<$core.bool>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subscribe', $pb.PbFieldType.OB, defaultOrMaker: true)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'otcInstanceId', $pb.PbFieldType.OU3)
    ..aOM<HedgeBalanceKey>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hedgeBalanceKey', subBuilder: HedgeBalanceKey.create)
    ..aOM<$2.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fromUtcTimestamp', subBuilder: $2.Timestamp.create)
  ;

  HedgeBookDetailsSubscription._() : super();
  factory HedgeBookDetailsSubscription({
    $core.bool subscribe,
    $core.int otcInstanceId,
    HedgeBalanceKey hedgeBalanceKey,
    $2.Timestamp fromUtcTimestamp,
  }) {
    final _result = create();
    if (subscribe != null) {
      _result.subscribe = subscribe;
    }
    if (otcInstanceId != null) {
      _result.otcInstanceId = otcInstanceId;
    }
    if (hedgeBalanceKey != null) {
      _result.hedgeBalanceKey = hedgeBalanceKey;
    }
    if (fromUtcTimestamp != null) {
      _result.fromUtcTimestamp = fromUtcTimestamp;
    }
    return _result;
  }
  factory HedgeBookDetailsSubscription.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HedgeBookDetailsSubscription.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HedgeBookDetailsSubscription clone() => HedgeBookDetailsSubscription()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HedgeBookDetailsSubscription copyWith(void Function(HedgeBookDetailsSubscription) updates) => super.copyWith((message) => updates(message as HedgeBookDetailsSubscription)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HedgeBookDetailsSubscription create() => HedgeBookDetailsSubscription._();
  HedgeBookDetailsSubscription createEmptyInstance() => create();
  static $pb.PbList<HedgeBookDetailsSubscription> createRepeated() => $pb.PbList<HedgeBookDetailsSubscription>();
  @$core.pragma('dart2js:noInline')
  static HedgeBookDetailsSubscription getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HedgeBookDetailsSubscription>(create);
  static HedgeBookDetailsSubscription _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get subscribe => $_getB(0, true);
  @$pb.TagNumber(1)
  set subscribe($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubscribe() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubscribe() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get otcInstanceId => $_getIZ(1);
  @$pb.TagNumber(2)
  set otcInstanceId($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOtcInstanceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOtcInstanceId() => clearField(2);

  @$pb.TagNumber(3)
  HedgeBalanceKey get hedgeBalanceKey => $_getN(2);
  @$pb.TagNumber(3)
  set hedgeBalanceKey(HedgeBalanceKey v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasHedgeBalanceKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearHedgeBalanceKey() => clearField(3);
  @$pb.TagNumber(3)
  HedgeBalanceKey ensureHedgeBalanceKey() => $_ensure(2);

  @$pb.TagNumber(4)
  $2.Timestamp get fromUtcTimestamp => $_getN(3);
  @$pb.TagNumber(4)
  set fromUtcTimestamp($2.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFromUtcTimestamp() => $_has(3);
  @$pb.TagNumber(4)
  void clearFromUtcTimestamp() => clearField(4);
  @$pb.TagNumber(4)
  $2.Timestamp ensureFromUtcTimestamp() => $_ensure(3);
}

class HedgeBookDetailsReport extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HedgeBookDetailsReport', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'otc_1'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isSnapshot')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isLastPart')
    ..pc<CashOrderDetails>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cashOrderDetails', $pb.PbFieldType.PM, subBuilder: CashOrderDetails.create)
    ..pc<HedgeOrderDetails>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hedgeOrderDetails', $pb.PbFieldType.PM, subBuilder: HedgeOrderDetails.create)
    ..pc<CashToHedgeOrdersLink>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cashToHedgeOrdersLink', $pb.PbFieldType.PM, subBuilder: CashToHedgeOrdersLink.create)
  ;

  HedgeBookDetailsReport._() : super();
  factory HedgeBookDetailsReport({
    $core.bool isSnapshot,
    $core.bool isLastPart,
    $core.Iterable<CashOrderDetails> cashOrderDetails,
    $core.Iterable<HedgeOrderDetails> hedgeOrderDetails,
    $core.Iterable<CashToHedgeOrdersLink> cashToHedgeOrdersLink,
  }) {
    final _result = create();
    if (isSnapshot != null) {
      _result.isSnapshot = isSnapshot;
    }
    if (isLastPart != null) {
      _result.isLastPart = isLastPart;
    }
    if (cashOrderDetails != null) {
      _result.cashOrderDetails.addAll(cashOrderDetails);
    }
    if (hedgeOrderDetails != null) {
      _result.hedgeOrderDetails.addAll(hedgeOrderDetails);
    }
    if (cashToHedgeOrdersLink != null) {
      _result.cashToHedgeOrdersLink.addAll(cashToHedgeOrdersLink);
    }
    return _result;
  }
  factory HedgeBookDetailsReport.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HedgeBookDetailsReport.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HedgeBookDetailsReport clone() => HedgeBookDetailsReport()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HedgeBookDetailsReport copyWith(void Function(HedgeBookDetailsReport) updates) => super.copyWith((message) => updates(message as HedgeBookDetailsReport)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HedgeBookDetailsReport create() => HedgeBookDetailsReport._();
  HedgeBookDetailsReport createEmptyInstance() => create();
  static $pb.PbList<HedgeBookDetailsReport> createRepeated() => $pb.PbList<HedgeBookDetailsReport>();
  @$core.pragma('dart2js:noInline')
  static HedgeBookDetailsReport getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HedgeBookDetailsReport>(create);
  static HedgeBookDetailsReport _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isSnapshot => $_getBF(0);
  @$pb.TagNumber(1)
  set isSnapshot($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsSnapshot() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsSnapshot() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isLastPart => $_getBF(1);
  @$pb.TagNumber(2)
  set isLastPart($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsLastPart() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsLastPart() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<CashOrderDetails> get cashOrderDetails => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<HedgeOrderDetails> get hedgeOrderDetails => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<CashToHedgeOrdersLink> get cashToHedgeOrdersLink => $_getList(4);
}

class CashOrderDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CashOrderDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'otc_1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chainOrderId')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleted')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId', $pb.PbFieldType.OS3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contractId', $pb.PbFieldType.OU3)
    ..aOM<$2.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hedgeUtcTimestamp', subBuilder: $2.Timestamp.create)
    ..aOM<$1.Decimal>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'units', subBuilder: $1.Decimal.create)
    ..hasExtensions = true
  ;

  CashOrderDetails._() : super();
  factory CashOrderDetails({
    $core.String chainOrderId,
    $core.bool deleted,
    $core.int accountId,
    $core.int contractId,
    $2.Timestamp hedgeUtcTimestamp,
    $1.Decimal units,
  }) {
    final _result = create();
    if (chainOrderId != null) {
      _result.chainOrderId = chainOrderId;
    }
    if (deleted != null) {
      _result.deleted = deleted;
    }
    if (accountId != null) {
      _result.accountId = accountId;
    }
    if (contractId != null) {
      _result.contractId = contractId;
    }
    if (hedgeUtcTimestamp != null) {
      _result.hedgeUtcTimestamp = hedgeUtcTimestamp;
    }
    if (units != null) {
      _result.units = units;
    }
    return _result;
  }
  factory CashOrderDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CashOrderDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CashOrderDetails clone() => CashOrderDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CashOrderDetails copyWith(void Function(CashOrderDetails) updates) => super.copyWith((message) => updates(message as CashOrderDetails)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CashOrderDetails create() => CashOrderDetails._();
  CashOrderDetails createEmptyInstance() => create();
  static $pb.PbList<CashOrderDetails> createRepeated() => $pb.PbList<CashOrderDetails>();
  @$core.pragma('dart2js:noInline')
  static CashOrderDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CashOrderDetails>(create);
  static CashOrderDetails _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get chainOrderId => $_getSZ(0);
  @$pb.TagNumber(1)
  set chainOrderId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChainOrderId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChainOrderId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get deleted => $_getBF(1);
  @$pb.TagNumber(2)
  set deleted($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeleted() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeleted() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get accountId => $_getIZ(2);
  @$pb.TagNumber(3)
  set accountId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get contractId => $_getIZ(3);
  @$pb.TagNumber(4)
  set contractId($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContractId() => $_has(3);
  @$pb.TagNumber(4)
  void clearContractId() => clearField(4);

  @$pb.TagNumber(5)
  $2.Timestamp get hedgeUtcTimestamp => $_getN(4);
  @$pb.TagNumber(5)
  set hedgeUtcTimestamp($2.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasHedgeUtcTimestamp() => $_has(4);
  @$pb.TagNumber(5)
  void clearHedgeUtcTimestamp() => clearField(5);
  @$pb.TagNumber(5)
  $2.Timestamp ensureHedgeUtcTimestamp() => $_ensure(4);

  @$pb.TagNumber(6)
  $1.Decimal get units => $_getN(5);
  @$pb.TagNumber(6)
  set units($1.Decimal v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasUnits() => $_has(5);
  @$pb.TagNumber(6)
  void clearUnits() => clearField(6);
  @$pb.TagNumber(6)
  $1.Decimal ensureUnits() => $_ensure(5);
}

class HedgeOrderDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HedgeOrderDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'otc_1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chainOrderId')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleted')
    ..aOM<$2.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hedgeUtcTimestamp', subBuilder: $2.Timestamp.create)
    ..aOM<$1.Decimal>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'units', subBuilder: $1.Decimal.create)
    ..aOM<$1.Decimal>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'openUnits', subBuilder: $1.Decimal.create)
    ..hasRequiredFields = false
  ;

  HedgeOrderDetails._() : super();
  factory HedgeOrderDetails({
    $core.String chainOrderId,
    $core.bool deleted,
    $2.Timestamp hedgeUtcTimestamp,
    $1.Decimal units,
    $1.Decimal openUnits,
  }) {
    final _result = create();
    if (chainOrderId != null) {
      _result.chainOrderId = chainOrderId;
    }
    if (deleted != null) {
      _result.deleted = deleted;
    }
    if (hedgeUtcTimestamp != null) {
      _result.hedgeUtcTimestamp = hedgeUtcTimestamp;
    }
    if (units != null) {
      _result.units = units;
    }
    if (openUnits != null) {
      _result.openUnits = openUnits;
    }
    return _result;
  }
  factory HedgeOrderDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HedgeOrderDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HedgeOrderDetails clone() => HedgeOrderDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HedgeOrderDetails copyWith(void Function(HedgeOrderDetails) updates) => super.copyWith((message) => updates(message as HedgeOrderDetails)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HedgeOrderDetails create() => HedgeOrderDetails._();
  HedgeOrderDetails createEmptyInstance() => create();
  static $pb.PbList<HedgeOrderDetails> createRepeated() => $pb.PbList<HedgeOrderDetails>();
  @$core.pragma('dart2js:noInline')
  static HedgeOrderDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HedgeOrderDetails>(create);
  static HedgeOrderDetails _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get chainOrderId => $_getSZ(0);
  @$pb.TagNumber(1)
  set chainOrderId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChainOrderId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChainOrderId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get deleted => $_getBF(1);
  @$pb.TagNumber(2)
  set deleted($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeleted() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeleted() => clearField(2);

  @$pb.TagNumber(3)
  $2.Timestamp get hedgeUtcTimestamp => $_getN(2);
  @$pb.TagNumber(3)
  set hedgeUtcTimestamp($2.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasHedgeUtcTimestamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearHedgeUtcTimestamp() => clearField(3);
  @$pb.TagNumber(3)
  $2.Timestamp ensureHedgeUtcTimestamp() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Decimal get units => $_getN(3);
  @$pb.TagNumber(4)
  set units($1.Decimal v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasUnits() => $_has(3);
  @$pb.TagNumber(4)
  void clearUnits() => clearField(4);
  @$pb.TagNumber(4)
  $1.Decimal ensureUnits() => $_ensure(3);

  @$pb.TagNumber(5)
  $1.Decimal get openUnits => $_getN(4);
  @$pb.TagNumber(5)
  set openUnits($1.Decimal v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasOpenUnits() => $_has(4);
  @$pb.TagNumber(5)
  void clearOpenUnits() => clearField(5);
  @$pb.TagNumber(5)
  $1.Decimal ensureOpenUnits() => $_ensure(4);
}

class CashToHedgeOrdersLink extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CashToHedgeOrdersLink', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'otc_1'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleted')
    ..aOM<$2.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkUtcTimestamp', subBuilder: $2.Timestamp.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cashOrderId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hedgeOrderId')
    ..aOM<$1.Decimal>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkUnits', subBuilder: $1.Decimal.create)
    ..hasRequiredFields = false
  ;

  CashToHedgeOrdersLink._() : super();
  factory CashToHedgeOrdersLink({
    $core.bool deleted,
    $2.Timestamp linkUtcTimestamp,
    $core.String cashOrderId,
    $core.String hedgeOrderId,
    $1.Decimal linkUnits,
  }) {
    final _result = create();
    if (deleted != null) {
      _result.deleted = deleted;
    }
    if (linkUtcTimestamp != null) {
      _result.linkUtcTimestamp = linkUtcTimestamp;
    }
    if (cashOrderId != null) {
      _result.cashOrderId = cashOrderId;
    }
    if (hedgeOrderId != null) {
      _result.hedgeOrderId = hedgeOrderId;
    }
    if (linkUnits != null) {
      _result.linkUnits = linkUnits;
    }
    return _result;
  }
  factory CashToHedgeOrdersLink.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CashToHedgeOrdersLink.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CashToHedgeOrdersLink clone() => CashToHedgeOrdersLink()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CashToHedgeOrdersLink copyWith(void Function(CashToHedgeOrdersLink) updates) => super.copyWith((message) => updates(message as CashToHedgeOrdersLink)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CashToHedgeOrdersLink create() => CashToHedgeOrdersLink._();
  CashToHedgeOrdersLink createEmptyInstance() => create();
  static $pb.PbList<CashToHedgeOrdersLink> createRepeated() => $pb.PbList<CashToHedgeOrdersLink>();
  @$core.pragma('dart2js:noInline')
  static CashToHedgeOrdersLink getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CashToHedgeOrdersLink>(create);
  static CashToHedgeOrdersLink _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get deleted => $_getBF(0);
  @$pb.TagNumber(1)
  set deleted($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeleted() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeleted() => clearField(1);

  @$pb.TagNumber(2)
  $2.Timestamp get linkUtcTimestamp => $_getN(1);
  @$pb.TagNumber(2)
  set linkUtcTimestamp($2.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLinkUtcTimestamp() => $_has(1);
  @$pb.TagNumber(2)
  void clearLinkUtcTimestamp() => clearField(2);
  @$pb.TagNumber(2)
  $2.Timestamp ensureLinkUtcTimestamp() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get cashOrderId => $_getSZ(2);
  @$pb.TagNumber(3)
  set cashOrderId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCashOrderId() => $_has(2);
  @$pb.TagNumber(3)
  void clearCashOrderId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get hedgeOrderId => $_getSZ(3);
  @$pb.TagNumber(4)
  set hedgeOrderId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHedgeOrderId() => $_has(3);
  @$pb.TagNumber(4)
  void clearHedgeOrderId() => clearField(4);

  @$pb.TagNumber(5)
  $1.Decimal get linkUnits => $_getN(4);
  @$pb.TagNumber(5)
  set linkUnits($1.Decimal v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasLinkUnits() => $_has(4);
  @$pb.TagNumber(5)
  void clearLinkUnits() => clearField(5);
  @$pb.TagNumber(5)
  $1.Decimal ensureLinkUnits() => $_ensure(4);
}

class OffsetHedgeBalanceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OffsetHedgeBalanceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'otc_1'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'otcInstanceId', $pb.PbFieldType.OU3)
    ..aOM<HedgeBalanceKey>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hedgeBalanceKey', subBuilder: HedgeBalanceKey.create)
    ..aOM<$1.Decimal>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hedgeBalanceOffset', subBuilder: $1.Decimal.create)
  ;

  OffsetHedgeBalanceRequest._() : super();
  factory OffsetHedgeBalanceRequest({
    $core.int otcInstanceId,
    HedgeBalanceKey hedgeBalanceKey,
    $1.Decimal hedgeBalanceOffset,
  }) {
    final _result = create();
    if (otcInstanceId != null) {
      _result.otcInstanceId = otcInstanceId;
    }
    if (hedgeBalanceKey != null) {
      _result.hedgeBalanceKey = hedgeBalanceKey;
    }
    if (hedgeBalanceOffset != null) {
      _result.hedgeBalanceOffset = hedgeBalanceOffset;
    }
    return _result;
  }
  factory OffsetHedgeBalanceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OffsetHedgeBalanceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OffsetHedgeBalanceRequest clone() => OffsetHedgeBalanceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OffsetHedgeBalanceRequest copyWith(void Function(OffsetHedgeBalanceRequest) updates) => super.copyWith((message) => updates(message as OffsetHedgeBalanceRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OffsetHedgeBalanceRequest create() => OffsetHedgeBalanceRequest._();
  OffsetHedgeBalanceRequest createEmptyInstance() => create();
  static $pb.PbList<OffsetHedgeBalanceRequest> createRepeated() => $pb.PbList<OffsetHedgeBalanceRequest>();
  @$core.pragma('dart2js:noInline')
  static OffsetHedgeBalanceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OffsetHedgeBalanceRequest>(create);
  static OffsetHedgeBalanceRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get otcInstanceId => $_getIZ(0);
  @$pb.TagNumber(1)
  set otcInstanceId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOtcInstanceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOtcInstanceId() => clearField(1);

  @$pb.TagNumber(2)
  HedgeBalanceKey get hedgeBalanceKey => $_getN(1);
  @$pb.TagNumber(2)
  set hedgeBalanceKey(HedgeBalanceKey v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasHedgeBalanceKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearHedgeBalanceKey() => clearField(2);
  @$pb.TagNumber(2)
  HedgeBalanceKey ensureHedgeBalanceKey() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Decimal get hedgeBalanceOffset => $_getN(2);
  @$pb.TagNumber(3)
  set hedgeBalanceOffset($1.Decimal v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasHedgeBalanceOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearHedgeBalanceOffset() => clearField(3);
  @$pb.TagNumber(3)
  $1.Decimal ensureHedgeBalanceOffset() => $_ensure(2);
}

class OffsetHedgeBalanceResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OffsetHedgeBalanceResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'otc_1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  OffsetHedgeBalanceResult._() : super();
  factory OffsetHedgeBalanceResult() => create();
  factory OffsetHedgeBalanceResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OffsetHedgeBalanceResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OffsetHedgeBalanceResult clone() => OffsetHedgeBalanceResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OffsetHedgeBalanceResult copyWith(void Function(OffsetHedgeBalanceResult) updates) => super.copyWith((message) => updates(message as OffsetHedgeBalanceResult)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OffsetHedgeBalanceResult create() => OffsetHedgeBalanceResult._();
  OffsetHedgeBalanceResult createEmptyInstance() => create();
  static $pb.PbList<OffsetHedgeBalanceResult> createRepeated() => $pb.PbList<OffsetHedgeBalanceResult>();
  @$core.pragma('dart2js:noInline')
  static OffsetHedgeBalanceResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OffsetHedgeBalanceResult>(create);
  static OffsetHedgeBalanceResult _defaultInstance;
}

class ChangeOtcStateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChangeOtcStateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'otc_1'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'otcInstanceId', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'action', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ChangeOtcStateRequest._() : super();
  factory ChangeOtcStateRequest({
    $core.int otcInstanceId,
    $core.int action,
  }) {
    final _result = create();
    if (otcInstanceId != null) {
      _result.otcInstanceId = otcInstanceId;
    }
    if (action != null) {
      _result.action = action;
    }
    return _result;
  }
  factory ChangeOtcStateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChangeOtcStateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChangeOtcStateRequest clone() => ChangeOtcStateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChangeOtcStateRequest copyWith(void Function(ChangeOtcStateRequest) updates) => super.copyWith((message) => updates(message as ChangeOtcStateRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChangeOtcStateRequest create() => ChangeOtcStateRequest._();
  ChangeOtcStateRequest createEmptyInstance() => create();
  static $pb.PbList<ChangeOtcStateRequest> createRepeated() => $pb.PbList<ChangeOtcStateRequest>();
  @$core.pragma('dart2js:noInline')
  static ChangeOtcStateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangeOtcStateRequest>(create);
  static ChangeOtcStateRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get otcInstanceId => $_getIZ(0);
  @$pb.TagNumber(1)
  set otcInstanceId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOtcInstanceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOtcInstanceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get action => $_getIZ(1);
  @$pb.TagNumber(2)
  set action($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAction() => $_has(1);
  @$pb.TagNumber(2)
  void clearAction() => clearField(2);
}

class ChangeOtcStateResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChangeOtcStateResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'otc_1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ChangeOtcStateResult._() : super();
  factory ChangeOtcStateResult() => create();
  factory ChangeOtcStateResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChangeOtcStateResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChangeOtcStateResult clone() => ChangeOtcStateResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChangeOtcStateResult copyWith(void Function(ChangeOtcStateResult) updates) => super.copyWith((message) => updates(message as ChangeOtcStateResult)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChangeOtcStateResult create() => ChangeOtcStateResult._();
  ChangeOtcStateResult createEmptyInstance() => create();
  static $pb.PbList<ChangeOtcStateResult> createRepeated() => $pb.PbList<ChangeOtcStateResult>();
  @$core.pragma('dart2js:noInline')
  static ChangeOtcStateResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangeOtcStateResult>(create);
  static ChangeOtcStateResult _defaultInstance;
}

