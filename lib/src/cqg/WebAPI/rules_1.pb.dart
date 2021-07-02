///
//  Generated code. Do not modify.
//  source: WebAPI/rules_1.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../common/shared_1.pb.dart' as $0;
import '../common/timestamp.pb.dart' as $1;

export 'rules_1.pbenum.dart';

class RuleRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RuleRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rules_1'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..aOM<SetRuleRequest>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setRuleRequest', subBuilder: SetRuleRequest.create)
    ..aOM<DeleteRuleRequest>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteRuleRequest', subBuilder: DeleteRuleRequest.create)
    ..aOM<RulesListRequest>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rulesListRequest', subBuilder: RulesListRequest.create)
    ..aOM<NotificationHistoryRequest>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notificationHistoryRequest', subBuilder: NotificationHistoryRequest.create)
  ;

  RuleRequest._() : super();
  factory RuleRequest({
    $core.String requestId,
    SetRuleRequest setRuleRequest,
    DeleteRuleRequest deleteRuleRequest,
    RulesListRequest rulesListRequest,
    NotificationHistoryRequest notificationHistoryRequest,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (setRuleRequest != null) {
      _result.setRuleRequest = setRuleRequest;
    }
    if (deleteRuleRequest != null) {
      _result.deleteRuleRequest = deleteRuleRequest;
    }
    if (rulesListRequest != null) {
      _result.rulesListRequest = rulesListRequest;
    }
    if (notificationHistoryRequest != null) {
      _result.notificationHistoryRequest = notificationHistoryRequest;
    }
    return _result;
  }
  factory RuleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RuleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RuleRequest clone() => RuleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RuleRequest copyWith(void Function(RuleRequest) updates) => super.copyWith((message) => updates(message as RuleRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RuleRequest create() => RuleRequest._();
  RuleRequest createEmptyInstance() => create();
  static $pb.PbList<RuleRequest> createRepeated() => $pb.PbList<RuleRequest>();
  @$core.pragma('dart2js:noInline')
  static RuleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RuleRequest>(create);
  static RuleRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  SetRuleRequest get setRuleRequest => $_getN(1);
  @$pb.TagNumber(2)
  set setRuleRequest(SetRuleRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSetRuleRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearSetRuleRequest() => clearField(2);
  @$pb.TagNumber(2)
  SetRuleRequest ensureSetRuleRequest() => $_ensure(1);

  @$pb.TagNumber(3)
  DeleteRuleRequest get deleteRuleRequest => $_getN(2);
  @$pb.TagNumber(3)
  set deleteRuleRequest(DeleteRuleRequest v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDeleteRuleRequest() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeleteRuleRequest() => clearField(3);
  @$pb.TagNumber(3)
  DeleteRuleRequest ensureDeleteRuleRequest() => $_ensure(2);

  @$pb.TagNumber(4)
  RulesListRequest get rulesListRequest => $_getN(3);
  @$pb.TagNumber(4)
  set rulesListRequest(RulesListRequest v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRulesListRequest() => $_has(3);
  @$pb.TagNumber(4)
  void clearRulesListRequest() => clearField(4);
  @$pb.TagNumber(4)
  RulesListRequest ensureRulesListRequest() => $_ensure(3);

  @$pb.TagNumber(5)
  NotificationHistoryRequest get notificationHistoryRequest => $_getN(4);
  @$pb.TagNumber(5)
  set notificationHistoryRequest(NotificationHistoryRequest v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasNotificationHistoryRequest() => $_has(4);
  @$pb.TagNumber(5)
  void clearNotificationHistoryRequest() => clearField(5);
  @$pb.TagNumber(5)
  NotificationHistoryRequest ensureNotificationHistoryRequest() => $_ensure(4);
}

class RuleResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RuleResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rules_1'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resultCode', $pb.PbFieldType.QU3)
    ..aOM<$0.Text>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'details', subBuilder: $0.Text.create)
    ..aOM<SetRuleResult>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setRuleResult', subBuilder: SetRuleResult.create)
    ..aOM<DeleteRuleResult>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteRuleResult', subBuilder: DeleteRuleResult.create)
    ..aOM<RulesListResult>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rulesListResult', subBuilder: RulesListResult.create)
    ..aOM<NotificationHistoryResult>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notificationHistoryResult', subBuilder: NotificationHistoryResult.create)
  ;

  RuleResult._() : super();
  factory RuleResult({
    $core.String requestId,
    $core.int resultCode,
    $0.Text details,
    SetRuleResult setRuleResult,
    DeleteRuleResult deleteRuleResult,
    RulesListResult rulesListResult,
    NotificationHistoryResult notificationHistoryResult,
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
    if (setRuleResult != null) {
      _result.setRuleResult = setRuleResult;
    }
    if (deleteRuleResult != null) {
      _result.deleteRuleResult = deleteRuleResult;
    }
    if (rulesListResult != null) {
      _result.rulesListResult = rulesListResult;
    }
    if (notificationHistoryResult != null) {
      _result.notificationHistoryResult = notificationHistoryResult;
    }
    return _result;
  }
  factory RuleResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RuleResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RuleResult clone() => RuleResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RuleResult copyWith(void Function(RuleResult) updates) => super.copyWith((message) => updates(message as RuleResult)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RuleResult create() => RuleResult._();
  RuleResult createEmptyInstance() => create();
  static $pb.PbList<RuleResult> createRepeated() => $pb.PbList<RuleResult>();
  @$core.pragma('dart2js:noInline')
  static RuleResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RuleResult>(create);
  static RuleResult _defaultInstance;

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
  SetRuleResult get setRuleResult => $_getN(3);
  @$pb.TagNumber(4)
  set setRuleResult(SetRuleResult v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSetRuleResult() => $_has(3);
  @$pb.TagNumber(4)
  void clearSetRuleResult() => clearField(4);
  @$pb.TagNumber(4)
  SetRuleResult ensureSetRuleResult() => $_ensure(3);

  @$pb.TagNumber(5)
  DeleteRuleResult get deleteRuleResult => $_getN(4);
  @$pb.TagNumber(5)
  set deleteRuleResult(DeleteRuleResult v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasDeleteRuleResult() => $_has(4);
  @$pb.TagNumber(5)
  void clearDeleteRuleResult() => clearField(5);
  @$pb.TagNumber(5)
  DeleteRuleResult ensureDeleteRuleResult() => $_ensure(4);

  @$pb.TagNumber(6)
  RulesListResult get rulesListResult => $_getN(5);
  @$pb.TagNumber(6)
  set rulesListResult(RulesListResult v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasRulesListResult() => $_has(5);
  @$pb.TagNumber(6)
  void clearRulesListResult() => clearField(6);
  @$pb.TagNumber(6)
  RulesListResult ensureRulesListResult() => $_ensure(5);

  @$pb.TagNumber(7)
  NotificationHistoryResult get notificationHistoryResult => $_getN(6);
  @$pb.TagNumber(7)
  set notificationHistoryResult(NotificationHistoryResult v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasNotificationHistoryResult() => $_has(6);
  @$pb.TagNumber(7)
  void clearNotificationHistoryResult() => clearField(7);
  @$pb.TagNumber(7)
  NotificationHistoryResult ensureNotificationHistoryResult() => $_ensure(6);
}

class RuleDefinition extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RuleDefinition', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rules_1'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ruleId')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ruleTag')
    ..aOM<$1.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expirationUtcTimestamp', subBuilder: $1.Timestamp.create)
    ..pc<Action>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'action', $pb.PbFieldType.PM, subBuilder: Action.create)
    ..aOM<OrderEventRule>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderEventRule', subBuilder: OrderEventRule.create)
    ..a<$core.bool>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enabled', $pb.PbFieldType.OB, defaultOrMaker: true)
  ;

  RuleDefinition._() : super();
  factory RuleDefinition({
    $core.String ruleId,
  @$core.Deprecated('This field is deprecated.')
    $core.Iterable<$core.String> ruleTag,
  @$core.Deprecated('This field is deprecated.')
    $1.Timestamp expirationUtcTimestamp,
    $core.Iterable<Action> action,
    OrderEventRule orderEventRule,
    $core.bool enabled,
  }) {
    final _result = create();
    if (ruleId != null) {
      _result.ruleId = ruleId;
    }
    if (ruleTag != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.ruleTag.addAll(ruleTag);
    }
    if (expirationUtcTimestamp != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.expirationUtcTimestamp = expirationUtcTimestamp;
    }
    if (action != null) {
      _result.action.addAll(action);
    }
    if (orderEventRule != null) {
      _result.orderEventRule = orderEventRule;
    }
    if (enabled != null) {
      _result.enabled = enabled;
    }
    return _result;
  }
  factory RuleDefinition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RuleDefinition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RuleDefinition clone() => RuleDefinition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RuleDefinition copyWith(void Function(RuleDefinition) updates) => super.copyWith((message) => updates(message as RuleDefinition)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RuleDefinition create() => RuleDefinition._();
  RuleDefinition createEmptyInstance() => create();
  static $pb.PbList<RuleDefinition> createRepeated() => $pb.PbList<RuleDefinition>();
  @$core.pragma('dart2js:noInline')
  static RuleDefinition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RuleDefinition>(create);
  static RuleDefinition _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ruleId => $_getSZ(0);
  @$pb.TagNumber(1)
  set ruleId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRuleId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRuleId() => clearField(1);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.List<$core.String> get ruleTag => $_getList(1);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $1.Timestamp get expirationUtcTimestamp => $_getN(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  set expirationUtcTimestamp($1.Timestamp v) { setField(3, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.bool hasExpirationUtcTimestamp() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  void clearExpirationUtcTimestamp() => clearField(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $1.Timestamp ensureExpirationUtcTimestamp() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<Action> get action => $_getList(3);

  @$pb.TagNumber(5)
  OrderEventRule get orderEventRule => $_getN(4);
  @$pb.TagNumber(5)
  set orderEventRule(OrderEventRule v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasOrderEventRule() => $_has(4);
  @$pb.TagNumber(5)
  void clearOrderEventRule() => clearField(5);
  @$pb.TagNumber(5)
  OrderEventRule ensureOrderEventRule() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.bool get enabled => $_getB(5, true);
  @$pb.TagNumber(6)
  set enabled($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEnabled() => $_has(5);
  @$pb.TagNumber(6)
  void clearEnabled() => clearField(6);
}

class Action extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Action', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rules_1'), createEmptyInstance: create)
    ..pc<$0.Destination>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'destination', $pb.PbFieldType.PM, subBuilder: $0.Destination.create)
  ;

  Action._() : super();
  factory Action({
    $core.Iterable<$0.Destination> destination,
  }) {
    final _result = create();
    if (destination != null) {
      _result.destination.addAll(destination);
    }
    return _result;
  }
  factory Action.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Action.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Action clone() => Action()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Action copyWith(void Function(Action) updates) => super.copyWith((message) => updates(message as Action)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Action create() => Action._();
  Action createEmptyInstance() => create();
  static $pb.PbList<Action> createRepeated() => $pb.PbList<Action>();
  @$core.pragma('dart2js:noInline')
  static Action getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Action>(create);
  static Action _defaultInstance;

  @$pb.TagNumber(4)
  $core.List<$0.Destination> get destination => $_getList(0);
}

class OrderEventRule extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OrderEventRule', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rules_1'), createEmptyInstance: create)
    ..p<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId', $pb.PbFieldType.PS3)
    ..p<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderStatus', $pb.PbFieldType.PU3)
    ..p<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transactionStatus', $pb.PbFieldType.PU3)
    ..hasRequiredFields = false
  ;

  OrderEventRule._() : super();
  factory OrderEventRule({
    $core.Iterable<$core.int> accountId,
    $core.Iterable<$core.int> orderStatus,
    $core.Iterable<$core.int> transactionStatus,
  }) {
    final _result = create();
    if (accountId != null) {
      _result.accountId.addAll(accountId);
    }
    if (orderStatus != null) {
      _result.orderStatus.addAll(orderStatus);
    }
    if (transactionStatus != null) {
      _result.transactionStatus.addAll(transactionStatus);
    }
    return _result;
  }
  factory OrderEventRule.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderEventRule.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrderEventRule clone() => OrderEventRule()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrderEventRule copyWith(void Function(OrderEventRule) updates) => super.copyWith((message) => updates(message as OrderEventRule)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrderEventRule create() => OrderEventRule._();
  OrderEventRule createEmptyInstance() => create();
  static $pb.PbList<OrderEventRule> createRepeated() => $pb.PbList<OrderEventRule>();
  @$core.pragma('dart2js:noInline')
  static OrderEventRule getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrderEventRule>(create);
  static OrderEventRule _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get accountId => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get orderStatus => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get transactionStatus => $_getList(2);
}

class NotificationReport extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NotificationReport', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rules_1'), createEmptyInstance: create)
    ..aQM<$0.Text>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title', subBuilder: $0.Text.create)
    ..aQM<$0.Text>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: $0.Text.create)
    ..aQS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ruleId')
    ..pc<$0.NotificationProperty>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notificationProperty', $pb.PbFieldType.PM, subBuilder: $0.NotificationProperty.create)
    ..aQM<$1.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'whenUtcTimestamp', subBuilder: $1.Timestamp.create)
  ;

  NotificationReport._() : super();
  factory NotificationReport({
    $0.Text title,
    $0.Text body,
    $core.String ruleId,
    $core.Iterable<$0.NotificationProperty> notificationProperty,
    $1.Timestamp whenUtcTimestamp,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (body != null) {
      _result.body = body;
    }
    if (ruleId != null) {
      _result.ruleId = ruleId;
    }
    if (notificationProperty != null) {
      _result.notificationProperty.addAll(notificationProperty);
    }
    if (whenUtcTimestamp != null) {
      _result.whenUtcTimestamp = whenUtcTimestamp;
    }
    return _result;
  }
  factory NotificationReport.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotificationReport.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NotificationReport clone() => NotificationReport()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NotificationReport copyWith(void Function(NotificationReport) updates) => super.copyWith((message) => updates(message as NotificationReport)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotificationReport create() => NotificationReport._();
  NotificationReport createEmptyInstance() => create();
  static $pb.PbList<NotificationReport> createRepeated() => $pb.PbList<NotificationReport>();
  @$core.pragma('dart2js:noInline')
  static NotificationReport getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotificationReport>(create);
  static NotificationReport _defaultInstance;

  @$pb.TagNumber(1)
  $0.Text get title => $_getN(0);
  @$pb.TagNumber(1)
  set title($0.Text v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);
  @$pb.TagNumber(1)
  $0.Text ensureTitle() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.Text get body => $_getN(1);
  @$pb.TagNumber(2)
  set body($0.Text v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBody() => $_has(1);
  @$pb.TagNumber(2)
  void clearBody() => clearField(2);
  @$pb.TagNumber(2)
  $0.Text ensureBody() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get ruleId => $_getSZ(2);
  @$pb.TagNumber(3)
  set ruleId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRuleId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRuleId() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$0.NotificationProperty> get notificationProperty => $_getList(3);

  @$pb.TagNumber(5)
  $1.Timestamp get whenUtcTimestamp => $_getN(4);
  @$pb.TagNumber(5)
  set whenUtcTimestamp($1.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasWhenUtcTimestamp() => $_has(4);
  @$pb.TagNumber(5)
  void clearWhenUtcTimestamp() => clearField(5);
  @$pb.TagNumber(5)
  $1.Timestamp ensureWhenUtcTimestamp() => $_ensure(4);
}

class SetRuleRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetRuleRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rules_1'), createEmptyInstance: create)
    ..aQM<RuleDefinition>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ruleDefinition', subBuilder: RuleDefinition.create)
  ;

  SetRuleRequest._() : super();
  factory SetRuleRequest({
    RuleDefinition ruleDefinition,
  }) {
    final _result = create();
    if (ruleDefinition != null) {
      _result.ruleDefinition = ruleDefinition;
    }
    return _result;
  }
  factory SetRuleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetRuleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetRuleRequest clone() => SetRuleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetRuleRequest copyWith(void Function(SetRuleRequest) updates) => super.copyWith((message) => updates(message as SetRuleRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetRuleRequest create() => SetRuleRequest._();
  SetRuleRequest createEmptyInstance() => create();
  static $pb.PbList<SetRuleRequest> createRepeated() => $pb.PbList<SetRuleRequest>();
  @$core.pragma('dart2js:noInline')
  static SetRuleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetRuleRequest>(create);
  static SetRuleRequest _defaultInstance;

  @$pb.TagNumber(1)
  RuleDefinition get ruleDefinition => $_getN(0);
  @$pb.TagNumber(1)
  set ruleDefinition(RuleDefinition v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRuleDefinition() => $_has(0);
  @$pb.TagNumber(1)
  void clearRuleDefinition() => clearField(1);
  @$pb.TagNumber(1)
  RuleDefinition ensureRuleDefinition() => $_ensure(0);
}

class SetRuleResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetRuleResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rules_1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  SetRuleResult._() : super();
  factory SetRuleResult() => create();
  factory SetRuleResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetRuleResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetRuleResult clone() => SetRuleResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetRuleResult copyWith(void Function(SetRuleResult) updates) => super.copyWith((message) => updates(message as SetRuleResult)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetRuleResult create() => SetRuleResult._();
  SetRuleResult createEmptyInstance() => create();
  static $pb.PbList<SetRuleResult> createRepeated() => $pb.PbList<SetRuleResult>();
  @$core.pragma('dart2js:noInline')
  static SetRuleResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetRuleResult>(create);
  static SetRuleResult _defaultInstance;
}

class DeleteRuleRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteRuleRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rules_1'), createEmptyInstance: create)
    ..aQS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ruleId')
  ;

  DeleteRuleRequest._() : super();
  factory DeleteRuleRequest({
    $core.String ruleId,
  }) {
    final _result = create();
    if (ruleId != null) {
      _result.ruleId = ruleId;
    }
    return _result;
  }
  factory DeleteRuleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteRuleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteRuleRequest clone() => DeleteRuleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteRuleRequest copyWith(void Function(DeleteRuleRequest) updates) => super.copyWith((message) => updates(message as DeleteRuleRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteRuleRequest create() => DeleteRuleRequest._();
  DeleteRuleRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteRuleRequest> createRepeated() => $pb.PbList<DeleteRuleRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteRuleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteRuleRequest>(create);
  static DeleteRuleRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ruleId => $_getSZ(0);
  @$pb.TagNumber(1)
  set ruleId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRuleId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRuleId() => clearField(1);
}

class DeleteRuleResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteRuleResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rules_1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteRuleResult._() : super();
  factory DeleteRuleResult() => create();
  factory DeleteRuleResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteRuleResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteRuleResult clone() => DeleteRuleResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteRuleResult copyWith(void Function(DeleteRuleResult) updates) => super.copyWith((message) => updates(message as DeleteRuleResult)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteRuleResult create() => DeleteRuleResult._();
  DeleteRuleResult createEmptyInstance() => create();
  static $pb.PbList<DeleteRuleResult> createRepeated() => $pb.PbList<DeleteRuleResult>();
  @$core.pragma('dart2js:noInline')
  static DeleteRuleResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteRuleResult>(create);
  static DeleteRuleResult _defaultInstance;
}

class RulesListRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RulesListRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rules_1'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ruleTag')
    ..hasRequiredFields = false
  ;

  RulesListRequest._() : super();
  factory RulesListRequest({
  @$core.Deprecated('This field is deprecated.')
    $core.Iterable<$core.String> ruleTag,
  }) {
    final _result = create();
    if (ruleTag != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.ruleTag.addAll(ruleTag);
    }
    return _result;
  }
  factory RulesListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RulesListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RulesListRequest clone() => RulesListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RulesListRequest copyWith(void Function(RulesListRequest) updates) => super.copyWith((message) => updates(message as RulesListRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RulesListRequest create() => RulesListRequest._();
  RulesListRequest createEmptyInstance() => create();
  static $pb.PbList<RulesListRequest> createRepeated() => $pb.PbList<RulesListRequest>();
  @$core.pragma('dart2js:noInline')
  static RulesListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RulesListRequest>(create);
  static RulesListRequest _defaultInstance;

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.List<$core.String> get ruleTag => $_getList(0);
}

class RulesListResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RulesListResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rules_1'), createEmptyInstance: create)
    ..pc<RuleDefinition>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ruleDefinition', $pb.PbFieldType.PM, subBuilder: RuleDefinition.create)
  ;

  RulesListResult._() : super();
  factory RulesListResult({
    $core.Iterable<RuleDefinition> ruleDefinition,
  }) {
    final _result = create();
    if (ruleDefinition != null) {
      _result.ruleDefinition.addAll(ruleDefinition);
    }
    return _result;
  }
  factory RulesListResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RulesListResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RulesListResult clone() => RulesListResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RulesListResult copyWith(void Function(RulesListResult) updates) => super.copyWith((message) => updates(message as RulesListResult)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RulesListResult create() => RulesListResult._();
  RulesListResult createEmptyInstance() => create();
  static $pb.PbList<RulesListResult> createRepeated() => $pb.PbList<RulesListResult>();
  @$core.pragma('dart2js:noInline')
  static RulesListResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RulesListResult>(create);
  static RulesListResult _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RuleDefinition> get ruleDefinition => $_getList(0);
}

class NotificationHistoryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NotificationHistoryRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rules_1'), createEmptyInstance: create)
    ..aOM<$1.Timestamp>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fromUtcTimestamp', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toUtcTimestamp', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  NotificationHistoryRequest._() : super();
  factory NotificationHistoryRequest({
    $1.Timestamp fromUtcTimestamp,
    $1.Timestamp toUtcTimestamp,
  }) {
    final _result = create();
    if (fromUtcTimestamp != null) {
      _result.fromUtcTimestamp = fromUtcTimestamp;
    }
    if (toUtcTimestamp != null) {
      _result.toUtcTimestamp = toUtcTimestamp;
    }
    return _result;
  }
  factory NotificationHistoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotificationHistoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NotificationHistoryRequest clone() => NotificationHistoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NotificationHistoryRequest copyWith(void Function(NotificationHistoryRequest) updates) => super.copyWith((message) => updates(message as NotificationHistoryRequest)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotificationHistoryRequest create() => NotificationHistoryRequest._();
  NotificationHistoryRequest createEmptyInstance() => create();
  static $pb.PbList<NotificationHistoryRequest> createRepeated() => $pb.PbList<NotificationHistoryRequest>();
  @$core.pragma('dart2js:noInline')
  static NotificationHistoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotificationHistoryRequest>(create);
  static NotificationHistoryRequest _defaultInstance;

  @$pb.TagNumber(1)
  $1.Timestamp get fromUtcTimestamp => $_getN(0);
  @$pb.TagNumber(1)
  set fromUtcTimestamp($1.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFromUtcTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearFromUtcTimestamp() => clearField(1);
  @$pb.TagNumber(1)
  $1.Timestamp ensureFromUtcTimestamp() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.Timestamp get toUtcTimestamp => $_getN(1);
  @$pb.TagNumber(2)
  set toUtcTimestamp($1.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasToUtcTimestamp() => $_has(1);
  @$pb.TagNumber(2)
  void clearToUtcTimestamp() => clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureToUtcTimestamp() => $_ensure(1);
}

class NotificationHistoryResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NotificationHistoryResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rules_1'), createEmptyInstance: create)
    ..pc<NotificationReport>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notificationReport', $pb.PbFieldType.PM, subBuilder: NotificationReport.create)
  ;

  NotificationHistoryResult._() : super();
  factory NotificationHistoryResult({
    $core.Iterable<NotificationReport> notificationReport,
  }) {
    final _result = create();
    if (notificationReport != null) {
      _result.notificationReport.addAll(notificationReport);
    }
    return _result;
  }
  factory NotificationHistoryResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotificationHistoryResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NotificationHistoryResult clone() => NotificationHistoryResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NotificationHistoryResult copyWith(void Function(NotificationHistoryResult) updates) => super.copyWith((message) => updates(message as NotificationHistoryResult)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotificationHistoryResult create() => NotificationHistoryResult._();
  NotificationHistoryResult createEmptyInstance() => create();
  static $pb.PbList<NotificationHistoryResult> createRepeated() => $pb.PbList<NotificationHistoryResult>();
  @$core.pragma('dart2js:noInline')
  static NotificationHistoryResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotificationHistoryResult>(create);
  static NotificationHistoryResult _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<NotificationReport> get notificationReport => $_getList(0);
}

