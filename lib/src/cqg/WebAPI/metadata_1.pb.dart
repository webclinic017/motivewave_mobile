///
//  Generated code. Do not modify.
//  source: WebAPI/metadata_1.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../common/shared_1.pb.dart' as $0;

export 'metadata_1.pbenum.dart';

class MetadataAdminRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MetadataAdminRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'metadata_1'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..aOM<GetSecurityParameters>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getSecurityParameters', subBuilder: GetSecurityParameters.create)
    ..aOM<SetSecurityParameters>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setSecurityParameters', subBuilder: SetSecurityParameters.create)
    ..aOM<PublishContract>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publishContract', subBuilder: PublishContract.create)
    ..aOM<UnpublishContract>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unpublishContract', subBuilder: UnpublishContract.create)
    ..aOM<GetContractParameters>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getContractParameters', subBuilder: GetContractParameters.create)
  ;

  MetadataAdminRequest._() : super();
  factory MetadataAdminRequest({
    $core.String requestId,
    GetSecurityParameters getSecurityParameters,
    SetSecurityParameters setSecurityParameters,
    PublishContract publishContract,
    UnpublishContract unpublishContract,
    GetContractParameters getContractParameters,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (getSecurityParameters != null) {
      _result.getSecurityParameters = getSecurityParameters;
    }
    if (setSecurityParameters != null) {
      _result.setSecurityParameters = setSecurityParameters;
    }
    if (publishContract != null) {
      _result.publishContract = publishContract;
    }
    if (unpublishContract != null) {
      _result.unpublishContract = unpublishContract;
    }
    if (getContractParameters != null) {
      _result.getContractParameters = getContractParameters;
    }
    return _result;
  }
  factory MetadataAdminRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MetadataAdminRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MetadataAdminRequest clone() => MetadataAdminRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MetadataAdminRequest copyWith(void Function(MetadataAdminRequest) updates) => super.copyWith((message) => updates(message as MetadataAdminRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MetadataAdminRequest create() => MetadataAdminRequest._();
  MetadataAdminRequest createEmptyInstance() => create();
  static $pb.PbList<MetadataAdminRequest> createRepeated() => $pb.PbList<MetadataAdminRequest>();
  @$core.pragma('dart2js:noInline')
  static MetadataAdminRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MetadataAdminRequest>(create);
  static MetadataAdminRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  GetSecurityParameters get getSecurityParameters => $_getN(1);
  @$pb.TagNumber(2)
  set getSecurityParameters(GetSecurityParameters v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasGetSecurityParameters() => $_has(1);
  @$pb.TagNumber(2)
  void clearGetSecurityParameters() => clearField(2);
  @$pb.TagNumber(2)
  GetSecurityParameters ensureGetSecurityParameters() => $_ensure(1);

  @$pb.TagNumber(3)
  SetSecurityParameters get setSecurityParameters => $_getN(2);
  @$pb.TagNumber(3)
  set setSecurityParameters(SetSecurityParameters v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSetSecurityParameters() => $_has(2);
  @$pb.TagNumber(3)
  void clearSetSecurityParameters() => clearField(3);
  @$pb.TagNumber(3)
  SetSecurityParameters ensureSetSecurityParameters() => $_ensure(2);

  @$pb.TagNumber(5)
  PublishContract get publishContract => $_getN(3);
  @$pb.TagNumber(5)
  set publishContract(PublishContract v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPublishContract() => $_has(3);
  @$pb.TagNumber(5)
  void clearPublishContract() => clearField(5);
  @$pb.TagNumber(5)
  PublishContract ensurePublishContract() => $_ensure(3);

  @$pb.TagNumber(6)
  UnpublishContract get unpublishContract => $_getN(4);
  @$pb.TagNumber(6)
  set unpublishContract(UnpublishContract v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasUnpublishContract() => $_has(4);
  @$pb.TagNumber(6)
  void clearUnpublishContract() => clearField(6);
  @$pb.TagNumber(6)
  UnpublishContract ensureUnpublishContract() => $_ensure(4);

  @$pb.TagNumber(7)
  GetContractParameters get getContractParameters => $_getN(5);
  @$pb.TagNumber(7)
  set getContractParameters(GetContractParameters v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasGetContractParameters() => $_has(5);
  @$pb.TagNumber(7)
  void clearGetContractParameters() => clearField(7);
  @$pb.TagNumber(7)
  GetContractParameters ensureGetContractParameters() => $_ensure(5);
}

class MetadataAdminResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MetadataAdminResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'metadata_1'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resultCode', $pb.PbFieldType.QU3)
    ..aOM<$0.Text>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'details', subBuilder: $0.Text.create)
    ..aOM<GetSecurityParametersResult>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getSecurityParametersResult', subBuilder: GetSecurityParametersResult.create)
    ..aOM<SetSecurityParametersResult>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setSecurityParametersResult', subBuilder: SetSecurityParametersResult.create)
    ..aOM<PublishContractResult>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publishContractResult', subBuilder: PublishContractResult.create)
    ..aOM<UnpublishContractResult>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unpublishContractResult', subBuilder: UnpublishContractResult.create)
    ..aOM<GetContractParametersResult>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getContractParametersResult', subBuilder: GetContractParametersResult.create)
  ;

  MetadataAdminResult._() : super();
  factory MetadataAdminResult({
    $core.String requestId,
    $core.int resultCode,
    $0.Text details,
    GetSecurityParametersResult getSecurityParametersResult,
    SetSecurityParametersResult setSecurityParametersResult,
    PublishContractResult publishContractResult,
    UnpublishContractResult unpublishContractResult,
    GetContractParametersResult getContractParametersResult,
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
    if (getSecurityParametersResult != null) {
      _result.getSecurityParametersResult = getSecurityParametersResult;
    }
    if (setSecurityParametersResult != null) {
      _result.setSecurityParametersResult = setSecurityParametersResult;
    }
    if (publishContractResult != null) {
      _result.publishContractResult = publishContractResult;
    }
    if (unpublishContractResult != null) {
      _result.unpublishContractResult = unpublishContractResult;
    }
    if (getContractParametersResult != null) {
      _result.getContractParametersResult = getContractParametersResult;
    }
    return _result;
  }
  factory MetadataAdminResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MetadataAdminResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MetadataAdminResult clone() => MetadataAdminResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MetadataAdminResult copyWith(void Function(MetadataAdminResult) updates) => super.copyWith((message) => updates(message as MetadataAdminResult)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MetadataAdminResult create() => MetadataAdminResult._();
  MetadataAdminResult createEmptyInstance() => create();
  static $pb.PbList<MetadataAdminResult> createRepeated() => $pb.PbList<MetadataAdminResult>();
  @$core.pragma('dart2js:noInline')
  static MetadataAdminResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MetadataAdminResult>(create);
  static MetadataAdminResult _defaultInstance;

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
  GetSecurityParametersResult get getSecurityParametersResult => $_getN(3);
  @$pb.TagNumber(4)
  set getSecurityParametersResult(GetSecurityParametersResult v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasGetSecurityParametersResult() => $_has(3);
  @$pb.TagNumber(4)
  void clearGetSecurityParametersResult() => clearField(4);
  @$pb.TagNumber(4)
  GetSecurityParametersResult ensureGetSecurityParametersResult() => $_ensure(3);

  @$pb.TagNumber(5)
  SetSecurityParametersResult get setSecurityParametersResult => $_getN(4);
  @$pb.TagNumber(5)
  set setSecurityParametersResult(SetSecurityParametersResult v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSetSecurityParametersResult() => $_has(4);
  @$pb.TagNumber(5)
  void clearSetSecurityParametersResult() => clearField(5);
  @$pb.TagNumber(5)
  SetSecurityParametersResult ensureSetSecurityParametersResult() => $_ensure(4);

  @$pb.TagNumber(6)
  PublishContractResult get publishContractResult => $_getN(5);
  @$pb.TagNumber(6)
  set publishContractResult(PublishContractResult v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasPublishContractResult() => $_has(5);
  @$pb.TagNumber(6)
  void clearPublishContractResult() => clearField(6);
  @$pb.TagNumber(6)
  PublishContractResult ensurePublishContractResult() => $_ensure(5);

  @$pb.TagNumber(7)
  UnpublishContractResult get unpublishContractResult => $_getN(6);
  @$pb.TagNumber(7)
  set unpublishContractResult(UnpublishContractResult v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasUnpublishContractResult() => $_has(6);
  @$pb.TagNumber(7)
  void clearUnpublishContractResult() => clearField(7);
  @$pb.TagNumber(7)
  UnpublishContractResult ensureUnpublishContractResult() => $_ensure(6);

  @$pb.TagNumber(8)
  GetContractParametersResult get getContractParametersResult => $_getN(7);
  @$pb.TagNumber(8)
  set getContractParametersResult(GetContractParametersResult v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasGetContractParametersResult() => $_has(7);
  @$pb.TagNumber(8)
  void clearGetContractParametersResult() => clearField(8);
  @$pb.TagNumber(8)
  GetContractParametersResult ensureGetContractParametersResult() => $_ensure(7);
}

class ContributorParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ContributorParameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'metadata_1'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contributorId')
    ..pc<$0.NamedValue>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parameter', $pb.PbFieldType.PM, subBuilder: $0.NamedValue.create)
  ;

  ContributorParameters._() : super();
  factory ContributorParameters({
    $core.String contributorId,
    $core.Iterable<$0.NamedValue> parameter,
  }) {
    final _result = create();
    if (contributorId != null) {
      _result.contributorId = contributorId;
    }
    if (parameter != null) {
      _result.parameter.addAll(parameter);
    }
    return _result;
  }
  factory ContributorParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContributorParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContributorParameters clone() => ContributorParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContributorParameters copyWith(void Function(ContributorParameters) updates) => super.copyWith((message) => updates(message as ContributorParameters)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContributorParameters create() => ContributorParameters._();
  ContributorParameters createEmptyInstance() => create();
  static $pb.PbList<ContributorParameters> createRepeated() => $pb.PbList<ContributorParameters>();
  @$core.pragma('dart2js:noInline')
  static ContributorParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContributorParameters>(create);
  static ContributorParameters _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contributorId => $_getSZ(0);
  @$pb.TagNumber(1)
  set contributorId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContributorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearContributorId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$0.NamedValue> get parameter => $_getList(1);
}

class GetSecurityParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSecurityParameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'metadata_1'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'securityId')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contributorId')
  ;

  GetSecurityParameters._() : super();
  factory GetSecurityParameters({
    $core.String securityId,
    $core.Iterable<$core.String> contributorId,
  }) {
    final _result = create();
    if (securityId != null) {
      _result.securityId = securityId;
    }
    if (contributorId != null) {
      _result.contributorId.addAll(contributorId);
    }
    return _result;
  }
  factory GetSecurityParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSecurityParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSecurityParameters clone() => GetSecurityParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSecurityParameters copyWith(void Function(GetSecurityParameters) updates) => super.copyWith((message) => updates(message as GetSecurityParameters)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSecurityParameters create() => GetSecurityParameters._();
  GetSecurityParameters createEmptyInstance() => create();
  static $pb.PbList<GetSecurityParameters> createRepeated() => $pb.PbList<GetSecurityParameters>();
  @$core.pragma('dart2js:noInline')
  static GetSecurityParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSecurityParameters>(create);
  static GetSecurityParameters _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get securityId => $_getSZ(0);
  @$pb.TagNumber(1)
  set securityId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSecurityId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSecurityId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get contributorId => $_getList(1);
}

class GetSecurityParametersResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSecurityParametersResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'metadata_1'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'securityId')
    ..pc<ContributorParameters>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contributorParameters', $pb.PbFieldType.PM, subBuilder: ContributorParameters.create)
  ;

  GetSecurityParametersResult._() : super();
  factory GetSecurityParametersResult({
    $core.String securityId,
    $core.Iterable<ContributorParameters> contributorParameters,
  }) {
    final _result = create();
    if (securityId != null) {
      _result.securityId = securityId;
    }
    if (contributorParameters != null) {
      _result.contributorParameters.addAll(contributorParameters);
    }
    return _result;
  }
  factory GetSecurityParametersResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSecurityParametersResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSecurityParametersResult clone() => GetSecurityParametersResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSecurityParametersResult copyWith(void Function(GetSecurityParametersResult) updates) => super.copyWith((message) => updates(message as GetSecurityParametersResult)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSecurityParametersResult create() => GetSecurityParametersResult._();
  GetSecurityParametersResult createEmptyInstance() => create();
  static $pb.PbList<GetSecurityParametersResult> createRepeated() => $pb.PbList<GetSecurityParametersResult>();
  @$core.pragma('dart2js:noInline')
  static GetSecurityParametersResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSecurityParametersResult>(create);
  static GetSecurityParametersResult _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get securityId => $_getSZ(0);
  @$pb.TagNumber(1)
  set securityId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSecurityId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSecurityId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<ContributorParameters> get contributorParameters => $_getList(1);
}

class SetSecurityParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetSecurityParameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'metadata_1'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'securityId')
    ..pc<ContributorParameters>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contributorParameters', $pb.PbFieldType.PM, subBuilder: ContributorParameters.create)
  ;

  SetSecurityParameters._() : super();
  factory SetSecurityParameters({
    $core.String securityId,
    $core.Iterable<ContributorParameters> contributorParameters,
  }) {
    final _result = create();
    if (securityId != null) {
      _result.securityId = securityId;
    }
    if (contributorParameters != null) {
      _result.contributorParameters.addAll(contributorParameters);
    }
    return _result;
  }
  factory SetSecurityParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetSecurityParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetSecurityParameters clone() => SetSecurityParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetSecurityParameters copyWith(void Function(SetSecurityParameters) updates) => super.copyWith((message) => updates(message as SetSecurityParameters)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetSecurityParameters create() => SetSecurityParameters._();
  SetSecurityParameters createEmptyInstance() => create();
  static $pb.PbList<SetSecurityParameters> createRepeated() => $pb.PbList<SetSecurityParameters>();
  @$core.pragma('dart2js:noInline')
  static SetSecurityParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetSecurityParameters>(create);
  static SetSecurityParameters _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get securityId => $_getSZ(0);
  @$pb.TagNumber(1)
  set securityId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSecurityId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSecurityId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<ContributorParameters> get contributorParameters => $_getList(1);
}

class SetSecurityParametersResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetSecurityParametersResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'metadata_1'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'securityId')
    ..pc<ContributorParameters>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contributorParameters', $pb.PbFieldType.PM, subBuilder: ContributorParameters.create)
  ;

  SetSecurityParametersResult._() : super();
  factory SetSecurityParametersResult({
    $core.String securityId,
    $core.Iterable<ContributorParameters> contributorParameters,
  }) {
    final _result = create();
    if (securityId != null) {
      _result.securityId = securityId;
    }
    if (contributorParameters != null) {
      _result.contributorParameters.addAll(contributorParameters);
    }
    return _result;
  }
  factory SetSecurityParametersResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetSecurityParametersResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetSecurityParametersResult clone() => SetSecurityParametersResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetSecurityParametersResult copyWith(void Function(SetSecurityParametersResult) updates) => super.copyWith((message) => updates(message as SetSecurityParametersResult)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetSecurityParametersResult create() => SetSecurityParametersResult._();
  SetSecurityParametersResult createEmptyInstance() => create();
  static $pb.PbList<SetSecurityParametersResult> createRepeated() => $pb.PbList<SetSecurityParametersResult>();
  @$core.pragma('dart2js:noInline')
  static SetSecurityParametersResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetSecurityParametersResult>(create);
  static SetSecurityParametersResult _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get securityId => $_getSZ(0);
  @$pb.TagNumber(1)
  set securityId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSecurityId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSecurityId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<ContributorParameters> get contributorParameters => $_getList(1);
}

class PublishContract extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PublishContract', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'metadata_1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'securityId')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maturityDate', $pb.PbFieldType.OS6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastTradingDate', $pb.PbFieldType.OS6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sourceContractId', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstNoticeDate', $pb.PbFieldType.OS6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastDeliveryDate', $pb.PbFieldType.OS6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<ContributorParameters>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contributorParameters', $pb.PbFieldType.PM, subBuilder: ContributorParameters.create)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preview')
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'previousContractId', $pb.PbFieldType.OU3)
    ..p<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clearedFields', $pb.PbFieldType.PU3)
  ;

  PublishContract._() : super();
  factory PublishContract({
    $core.String securityId,
    $fixnum.Int64 maturityDate,
    $fixnum.Int64 lastTradingDate,
    $core.int sourceContractId,
    $fixnum.Int64 firstNoticeDate,
    $fixnum.Int64 lastDeliveryDate,
    $core.Iterable<ContributorParameters> contributorParameters,
    $core.String description,
    $core.bool preview,
    $core.int previousContractId,
    $core.Iterable<$core.int> clearedFields,
  }) {
    final _result = create();
    if (securityId != null) {
      _result.securityId = securityId;
    }
    if (maturityDate != null) {
      _result.maturityDate = maturityDate;
    }
    if (lastTradingDate != null) {
      _result.lastTradingDate = lastTradingDate;
    }
    if (sourceContractId != null) {
      _result.sourceContractId = sourceContractId;
    }
    if (firstNoticeDate != null) {
      _result.firstNoticeDate = firstNoticeDate;
    }
    if (lastDeliveryDate != null) {
      _result.lastDeliveryDate = lastDeliveryDate;
    }
    if (contributorParameters != null) {
      _result.contributorParameters.addAll(contributorParameters);
    }
    if (description != null) {
      _result.description = description;
    }
    if (preview != null) {
      _result.preview = preview;
    }
    if (previousContractId != null) {
      _result.previousContractId = previousContractId;
    }
    if (clearedFields != null) {
      _result.clearedFields.addAll(clearedFields);
    }
    return _result;
  }
  factory PublishContract.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublishContract.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PublishContract clone() => PublishContract()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PublishContract copyWith(void Function(PublishContract) updates) => super.copyWith((message) => updates(message as PublishContract)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PublishContract create() => PublishContract._();
  PublishContract createEmptyInstance() => create();
  static $pb.PbList<PublishContract> createRepeated() => $pb.PbList<PublishContract>();
  @$core.pragma('dart2js:noInline')
  static PublishContract getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PublishContract>(create);
  static PublishContract _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get securityId => $_getSZ(0);
  @$pb.TagNumber(1)
  set securityId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSecurityId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSecurityId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get maturityDate => $_getI64(1);
  @$pb.TagNumber(2)
  set maturityDate($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMaturityDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaturityDate() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get lastTradingDate => $_getI64(2);
  @$pb.TagNumber(3)
  set lastTradingDate($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastTradingDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastTradingDate() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get sourceContractId => $_getIZ(3);
  @$pb.TagNumber(4)
  set sourceContractId($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSourceContractId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSourceContractId() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get firstNoticeDate => $_getI64(4);
  @$pb.TagNumber(5)
  set firstNoticeDate($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFirstNoticeDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearFirstNoticeDate() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get lastDeliveryDate => $_getI64(5);
  @$pb.TagNumber(6)
  set lastDeliveryDate($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLastDeliveryDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastDeliveryDate() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<ContributorParameters> get contributorParameters => $_getList(6);

  @$pb.TagNumber(8)
  $core.String get description => $_getSZ(7);
  @$pb.TagNumber(8)
  set description($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDescription() => $_has(7);
  @$pb.TagNumber(8)
  void clearDescription() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get preview => $_getBF(8);
  @$pb.TagNumber(9)
  set preview($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasPreview() => $_has(8);
  @$pb.TagNumber(9)
  void clearPreview() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get previousContractId => $_getIZ(9);
  @$pb.TagNumber(10)
  set previousContractId($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasPreviousContractId() => $_has(9);
  @$pb.TagNumber(10)
  void clearPreviousContractId() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<$core.int> get clearedFields => $_getList(10);
}

class PublishContractResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PublishContractResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'metadata_1'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contractId', $pb.PbFieldType.OU3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'symbolId')
    ..hasRequiredFields = false
  ;

  PublishContractResult._() : super();
  factory PublishContractResult({
    $core.int contractId,
    $core.String symbolId,
  }) {
    final _result = create();
    if (contractId != null) {
      _result.contractId = contractId;
    }
    if (symbolId != null) {
      _result.symbolId = symbolId;
    }
    return _result;
  }
  factory PublishContractResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublishContractResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PublishContractResult clone() => PublishContractResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PublishContractResult copyWith(void Function(PublishContractResult) updates) => super.copyWith((message) => updates(message as PublishContractResult)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PublishContractResult create() => PublishContractResult._();
  PublishContractResult createEmptyInstance() => create();
  static $pb.PbList<PublishContractResult> createRepeated() => $pb.PbList<PublishContractResult>();
  @$core.pragma('dart2js:noInline')
  static PublishContractResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PublishContractResult>(create);
  static PublishContractResult _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get contractId => $_getIZ(0);
  @$pb.TagNumber(1)
  set contractId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContractId() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get symbolId => $_getSZ(1);
  @$pb.TagNumber(2)
  set symbolId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSymbolId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSymbolId() => clearField(2);
}

class UnpublishContract extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnpublishContract', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'metadata_1'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contractId', $pb.PbFieldType.OU3)
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contributorId')
    ..hasRequiredFields = false
  ;

  UnpublishContract._() : super();
  factory UnpublishContract({
    $core.int contractId,
    $core.Iterable<$core.String> contributorId,
  }) {
    final _result = create();
    if (contractId != null) {
      _result.contractId = contractId;
    }
    if (contributorId != null) {
      _result.contributorId.addAll(contributorId);
    }
    return _result;
  }
  factory UnpublishContract.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnpublishContract.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnpublishContract clone() => UnpublishContract()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnpublishContract copyWith(void Function(UnpublishContract) updates) => super.copyWith((message) => updates(message as UnpublishContract)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnpublishContract create() => UnpublishContract._();
  UnpublishContract createEmptyInstance() => create();
  static $pb.PbList<UnpublishContract> createRepeated() => $pb.PbList<UnpublishContract>();
  @$core.pragma('dart2js:noInline')
  static UnpublishContract getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnpublishContract>(create);
  static UnpublishContract _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get contractId => $_getIZ(0);
  @$pb.TagNumber(1)
  set contractId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContractId() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get contributorId => $_getList(1);
}

class UnpublishContractResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnpublishContractResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'metadata_1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UnpublishContractResult._() : super();
  factory UnpublishContractResult() => create();
  factory UnpublishContractResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnpublishContractResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnpublishContractResult clone() => UnpublishContractResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnpublishContractResult copyWith(void Function(UnpublishContractResult) updates) => super.copyWith((message) => updates(message as UnpublishContractResult)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnpublishContractResult create() => UnpublishContractResult._();
  UnpublishContractResult createEmptyInstance() => create();
  static $pb.PbList<UnpublishContractResult> createRepeated() => $pb.PbList<UnpublishContractResult>();
  @$core.pragma('dart2js:noInline')
  static UnpublishContractResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnpublishContractResult>(create);
  static UnpublishContractResult _defaultInstance;
}

class GetContractParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetContractParameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'metadata_1'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contractId', $pb.PbFieldType.QU3)
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contributorId')
  ;

  GetContractParameters._() : super();
  factory GetContractParameters({
    $core.int contractId,
    $core.Iterable<$core.String> contributorId,
  }) {
    final _result = create();
    if (contractId != null) {
      _result.contractId = contractId;
    }
    if (contributorId != null) {
      _result.contributorId.addAll(contributorId);
    }
    return _result;
  }
  factory GetContractParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetContractParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetContractParameters clone() => GetContractParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetContractParameters copyWith(void Function(GetContractParameters) updates) => super.copyWith((message) => updates(message as GetContractParameters)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetContractParameters create() => GetContractParameters._();
  GetContractParameters createEmptyInstance() => create();
  static $pb.PbList<GetContractParameters> createRepeated() => $pb.PbList<GetContractParameters>();
  @$core.pragma('dart2js:noInline')
  static GetContractParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetContractParameters>(create);
  static GetContractParameters _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get contractId => $_getIZ(0);
  @$pb.TagNumber(1)
  set contractId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContractId() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get contributorId => $_getList(1);
}

class GetContractParametersResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetContractParametersResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'metadata_1'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contractId', $pb.PbFieldType.QU3)
    ..pc<ContributorParameters>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contributorParameters', $pb.PbFieldType.PM, subBuilder: ContributorParameters.create)
  ;

  GetContractParametersResult._() : super();
  factory GetContractParametersResult({
    $core.int contractId,
    $core.Iterable<ContributorParameters> contributorParameters,
  }) {
    final _result = create();
    if (contractId != null) {
      _result.contractId = contractId;
    }
    if (contributorParameters != null) {
      _result.contributorParameters.addAll(contributorParameters);
    }
    return _result;
  }
  factory GetContractParametersResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetContractParametersResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetContractParametersResult clone() => GetContractParametersResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetContractParametersResult copyWith(void Function(GetContractParametersResult) updates) => super.copyWith((message) => updates(message as GetContractParametersResult)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetContractParametersResult create() => GetContractParametersResult._();
  GetContractParametersResult createEmptyInstance() => create();
  static $pb.PbList<GetContractParametersResult> createRepeated() => $pb.PbList<GetContractParametersResult>();
  @$core.pragma('dart2js:noInline')
  static GetContractParametersResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetContractParametersResult>(create);
  static GetContractParametersResult _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get contractId => $_getIZ(0);
  @$pb.TagNumber(1)
  set contractId($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContractId() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<ContributorParameters> get contributorParameters => $_getList(1);
}

