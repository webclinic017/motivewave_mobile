///
//  Generated code. Do not modify.
//  source: WebAPI/webapi_1.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ProtocolVersionMajor extends $pb.ProtobufEnum {
  static const ProtocolVersionMajor PROTOCOL_VERSION_MAJOR = ProtocolVersionMajor._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PROTOCOL_VERSION_MAJOR');

  static const $core.List<ProtocolVersionMajor> values = <ProtocolVersionMajor> [
    PROTOCOL_VERSION_MAJOR,
  ];

  static final $core.Map<$core.int, ProtocolVersionMajor> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ProtocolVersionMajor valueOf($core.int value) => _byValue[value];

  const ProtocolVersionMajor._($core.int v, $core.String n) : super(v, n);
}

class ProtocolVersionMinor extends $pb.ProtobufEnum {
  static const ProtocolVersionMinor PROTOCOL_VERSION_MINOR = ProtocolVersionMinor._(155, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PROTOCOL_VERSION_MINOR');

  static const $core.List<ProtocolVersionMinor> values = <ProtocolVersionMinor> [
    PROTOCOL_VERSION_MINOR,
  ];

  static final $core.Map<$core.int, ProtocolVersionMinor> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ProtocolVersionMinor valueOf($core.int value) => _byValue[value];

  const ProtocolVersionMinor._($core.int v, $core.String n) : super(v, n);
}

class PositionTrackingType extends $pb.ProtobufEnum {
  static const PositionTrackingType NET_POSITION = PositionTrackingType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NET_POSITION');
  static const PositionTrackingType LONG_SHORT_WITH_IMPLIED_CLOSE = PositionTrackingType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LONG_SHORT_WITH_IMPLIED_CLOSE');
  static const PositionTrackingType LONG_SHORT_WITH_EXPLICIT_CLOSE = PositionTrackingType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LONG_SHORT_WITH_EXPLICIT_CLOSE');

  static const $core.List<PositionTrackingType> values = <PositionTrackingType> [
    NET_POSITION,
    LONG_SHORT_WITH_IMPLIED_CLOSE,
    LONG_SHORT_WITH_EXPLICIT_CLOSE,
  ];

  static final $core.Map<$core.int, PositionTrackingType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PositionTrackingType valueOf($core.int value) => _byValue[value];

  const PositionTrackingType._($core.int v, $core.String n) : super(v, n);
}

class PriceDisplayMode extends $pb.ProtobufEnum {
  static const PriceDisplayMode NUMERATOR = PriceDisplayMode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NUMERATOR');
  static const PriceDisplayMode ROUNDED = PriceDisplayMode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ROUNDED');
  static const PriceDisplayMode TRUNCATED = PriceDisplayMode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TRUNCATED');

  static const $core.List<PriceDisplayMode> values = <PriceDisplayMode> [
    NUMERATOR,
    ROUNDED,
    TRUNCATED,
  ];

  static final $core.Map<$core.int, PriceDisplayMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PriceDisplayMode valueOf($core.int value) => _byValue[value];

  const PriceDisplayMode._($core.int v, $core.String n) : super(v, n);
}

class PeriodType extends $pb.ProtobufEnum {
  static const PeriodType MONTH = PeriodType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MONTH');
  static const PeriodType QUARTER = PeriodType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'QUARTER');
  static const PeriodType SEMI_ANNUAL = PeriodType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SEMI_ANNUAL');
  static const PeriodType YEAR = PeriodType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'YEAR');
  static const PeriodType DAY_OF_WEEK = PeriodType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DAY_OF_WEEK');
  static const PeriodType DAY_OF_MONTH = PeriodType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DAY_OF_MONTH');
  static const PeriodType DAY_OF_YEAR = PeriodType._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DAY_OF_YEAR');
  static const PeriodType WEEK_OF_MONTH = PeriodType._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WEEK_OF_MONTH');
  static const PeriodType WEEK_OF_YEAR = PeriodType._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WEEK_OF_YEAR');
  static const PeriodType SECOND = PeriodType._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SECOND');
  static const PeriodType MINUTE = PeriodType._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MINUTE');
  static const PeriodType HOUR = PeriodType._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HOUR');
  static const PeriodType DATE = PeriodType._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATE');

  static const $core.List<PeriodType> values = <PeriodType> [
    MONTH,
    QUARTER,
    SEMI_ANNUAL,
    YEAR,
    DAY_OF_WEEK,
    DAY_OF_MONTH,
    DAY_OF_YEAR,
    WEEK_OF_MONTH,
    WEEK_OF_YEAR,
    SECOND,
    MINUTE,
    HOUR,
    DATE,
  ];

  static final $core.Map<$core.int, PeriodType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PeriodType valueOf($core.int value) => _byValue[value];

  const PeriodType._($core.int v, $core.String n) : super(v, n);
}

class DayOfWeek extends $pb.ProtobufEnum {
  static const DayOfWeek Sunday = DayOfWeek._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Sunday');
  static const DayOfWeek Monday = DayOfWeek._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Monday');
  static const DayOfWeek Tuesday = DayOfWeek._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Tuesday');
  static const DayOfWeek Wednesday = DayOfWeek._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Wednesday');
  static const DayOfWeek Thursday = DayOfWeek._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Thursday');
  static const DayOfWeek Friday = DayOfWeek._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Friday');
  static const DayOfWeek Saturday = DayOfWeek._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Saturday');

  static const $core.List<DayOfWeek> values = <DayOfWeek> [
    Sunday,
    Monday,
    Tuesday,
    Wednesday,
    Thursday,
    Friday,
    Saturday,
  ];

  static final $core.Map<$core.int, DayOfWeek> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DayOfWeek valueOf($core.int value) => _byValue[value];

  const DayOfWeek._($core.int v, $core.String n) : super(v, n);
}

class MiFIDAlgorithmIdType extends $pb.ProtobufEnum {
  static const MiFIDAlgorithmIdType EXTERNAL_MIFID_ALGO_ID = MiFIDAlgorithmIdType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EXTERNAL_MIFID_ALGO_ID');
  static const MiFIDAlgorithmIdType CQG_MIFID_ALGO_ID = MiFIDAlgorithmIdType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CQG_MIFID_ALGO_ID');

  static const $core.List<MiFIDAlgorithmIdType> values = <MiFIDAlgorithmIdType> [
    EXTERNAL_MIFID_ALGO_ID,
    CQG_MIFID_ALGO_ID,
  ];

  static final $core.Map<$core.int, MiFIDAlgorithmIdType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MiFIDAlgorithmIdType valueOf($core.int value) => _byValue[value];

  const MiFIDAlgorithmIdType._($core.int v, $core.String n) : super(v, n);
}

class MiFIDInvestmentDecisionIdType extends $pb.ProtobufEnum {
  static const MiFIDInvestmentDecisionIdType EXTERNAL_TRADER_ID = MiFIDInvestmentDecisionIdType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EXTERNAL_TRADER_ID');
  static const MiFIDInvestmentDecisionIdType EXTERNAL_ALGO_ID = MiFIDInvestmentDecisionIdType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EXTERNAL_ALGO_ID');
  static const MiFIDInvestmentDecisionIdType CQG_ALGO_ID = MiFIDInvestmentDecisionIdType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CQG_ALGO_ID');

  static const $core.List<MiFIDInvestmentDecisionIdType> values = <MiFIDInvestmentDecisionIdType> [
    EXTERNAL_TRADER_ID,
    EXTERNAL_ALGO_ID,
    CQG_ALGO_ID,
  ];

  static final $core.Map<$core.int, MiFIDInvestmentDecisionIdType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MiFIDInvestmentDecisionIdType valueOf($core.int value) => _byValue[value];

  const MiFIDInvestmentDecisionIdType._($core.int v, $core.String n) : super(v, n);
}

class SpeculationType extends $pb.ProtobufEnum {
  static const SpeculationType SPECULATION = SpeculationType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SPECULATION');
  static const SpeculationType ARBITRAGE = SpeculationType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ARBITRAGE');
  static const SpeculationType HEDGE = SpeculationType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HEDGE');

  static const $core.List<SpeculationType> values = <SpeculationType> [
    SPECULATION,
    ARBITRAGE,
    HEDGE,
  ];

  static final $core.Map<$core.int, SpeculationType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SpeculationType valueOf($core.int value) => _byValue[value];

  const SpeculationType._($core.int v, $core.String n) : super(v, n);
}

class RealTimeCollapsing_Level extends $pb.ProtobufEnum {
  static const RealTimeCollapsing_Level NONE = RealTimeCollapsing_Level._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NONE');
  static const RealTimeCollapsing_Level DOM = RealTimeCollapsing_Level._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DOM');
  static const RealTimeCollapsing_Level DOM_BBA = RealTimeCollapsing_Level._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DOM_BBA');
  static const RealTimeCollapsing_Level DOM_BBA_TRADES = RealTimeCollapsing_Level._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DOM_BBA_TRADES');

  static const $core.List<RealTimeCollapsing_Level> values = <RealTimeCollapsing_Level> [
    NONE,
    DOM,
    DOM_BBA,
    DOM_BBA_TRADES,
  ];

  static final $core.Map<$core.int, RealTimeCollapsing_Level> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RealTimeCollapsing_Level valueOf($core.int value) => _byValue[value];

  const RealTimeCollapsing_Level._($core.int v, $core.String n) : super(v, n);
}

class Logon_SessionSetting extends $pb.ProtobufEnum {
  static const Logon_SessionSetting ALLOW_SESSION_RESTORE = Logon_SessionSetting._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ALLOW_SESSION_RESTORE');
  static const Logon_SessionSetting ALLOW_SESSION_JOIN = Logon_SessionSetting._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ALLOW_SESSION_JOIN');

  static const $core.List<Logon_SessionSetting> values = <Logon_SessionSetting> [
    ALLOW_SESSION_RESTORE,
    ALLOW_SESSION_JOIN,
  ];

  static final $core.Map<$core.int, Logon_SessionSetting> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Logon_SessionSetting valueOf($core.int value) => _byValue[value];

  const Logon_SessionSetting._($core.int v, $core.String n) : super(v, n);
}

class LogonResult_ResultCode extends $pb.ProtobufEnum {
  static const LogonResult_ResultCode SUCCESS = LogonResult_ResultCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const LogonResult_ResultCode FAILURE = LogonResult_ResultCode._(101, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILURE');
  static const LogonResult_ResultCode NO_ONETIME_PASSWORD = LogonResult_ResultCode._(103, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NO_ONETIME_PASSWORD');
  static const LogonResult_ResultCode PASSWORD_EXPIRED = LogonResult_ResultCode._(104, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PASSWORD_EXPIRED');
  static const LogonResult_ResultCode CONCURRENT_SESSION = LogonResult_ResultCode._(105, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CONCURRENT_SESSION');
  static const LogonResult_ResultCode REDIRECTED = LogonResult_ResultCode._(106, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REDIRECTED');
  static const LogonResult_ResultCode ROUTINE_ERROR = LogonResult_ResultCode._(107, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ROUTINE_ERROR');
  static const LogonResult_ResultCode ACCESS_TOKEN_EXPIRED = LogonResult_ResultCode._(108, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACCESS_TOKEN_EXPIRED');

  static const $core.List<LogonResult_ResultCode> values = <LogonResult_ResultCode> [
    SUCCESS,
    FAILURE,
    NO_ONETIME_PASSWORD,
    PASSWORD_EXPIRED,
    CONCURRENT_SESSION,
    REDIRECTED,
    ROUTINE_ERROR,
    ACCESS_TOKEN_EXPIRED,
  ];

  static final $core.Map<$core.int, LogonResult_ResultCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LogonResult_ResultCode valueOf($core.int value) => _byValue[value];

  const LogonResult_ResultCode._($core.int v, $core.String n) : super(v, n);
}

class SetCollapsingLevelResult_ResultCode extends $pb.ProtobufEnum {
  static const SetCollapsingLevelResult_ResultCode SUCCESS = SetCollapsingLevelResult_ResultCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const SetCollapsingLevelResult_ResultCode FAILURE = SetCollapsingLevelResult_ResultCode._(101, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILURE');
  static const SetCollapsingLevelResult_ResultCode BANDWIDTH_IS_SET = SetCollapsingLevelResult_ResultCode._(102, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BANDWIDTH_IS_SET');

  static const $core.List<SetCollapsingLevelResult_ResultCode> values = <SetCollapsingLevelResult_ResultCode> [
    SUCCESS,
    FAILURE,
    BANDWIDTH_IS_SET,
  ];

  static final $core.Map<$core.int, SetCollapsingLevelResult_ResultCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SetCollapsingLevelResult_ResultCode valueOf($core.int value) => _byValue[value];

  const SetCollapsingLevelResult_ResultCode._($core.int v, $core.String n) : super(v, n);
}

class PasswordRequest_PasswordType extends $pb.ProtobufEnum {
  static const PasswordRequest_PasswordType STATIC = PasswordRequest_PasswordType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STATIC');
  static const PasswordRequest_PasswordType ONE_TIME = PasswordRequest_PasswordType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ONE_TIME');
  static const PasswordRequest_PasswordType NEW_STATIC = PasswordRequest_PasswordType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NEW_STATIC');
  static const PasswordRequest_PasswordType CUR_AND_NEW_STATIC = PasswordRequest_PasswordType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CUR_AND_NEW_STATIC');
  static const PasswordRequest_PasswordType TEXT = PasswordRequest_PasswordType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TEXT');

  static const $core.List<PasswordRequest_PasswordType> values = <PasswordRequest_PasswordType> [
    STATIC,
    ONE_TIME,
    NEW_STATIC,
    CUR_AND_NEW_STATIC,
    TEXT,
  ];

  static final $core.Map<$core.int, PasswordRequest_PasswordType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PasswordRequest_PasswordType valueOf($core.int value) => _byValue[value];

  const PasswordRequest_PasswordType._($core.int v, $core.String n) : super(v, n);
}

class RestoreOrJoinSessionResult_ResultCode extends $pb.ProtobufEnum {
  static const RestoreOrJoinSessionResult_ResultCode SUCCESS = RestoreOrJoinSessionResult_ResultCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const RestoreOrJoinSessionResult_ResultCode FAILURE = RestoreOrJoinSessionResult_ResultCode._(104, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILURE');
  static const RestoreOrJoinSessionResult_ResultCode UNKNOWN_SESSION = RestoreOrJoinSessionResult_ResultCode._(101, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN_SESSION');
  static const RestoreOrJoinSessionResult_ResultCode ACCESS_DENIED = RestoreOrJoinSessionResult_ResultCode._(102, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACCESS_DENIED');
  static const RestoreOrJoinSessionResult_ResultCode INVALID_PARAMS = RestoreOrJoinSessionResult_ResultCode._(103, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INVALID_PARAMS');

  static const $core.List<RestoreOrJoinSessionResult_ResultCode> values = <RestoreOrJoinSessionResult_ResultCode> [
    SUCCESS,
    FAILURE,
    UNKNOWN_SESSION,
    ACCESS_DENIED,
    INVALID_PARAMS,
  ];

  static final $core.Map<$core.int, RestoreOrJoinSessionResult_ResultCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RestoreOrJoinSessionResult_ResultCode valueOf($core.int value) => _byValue[value];

  const RestoreOrJoinSessionResult_ResultCode._($core.int v, $core.String n) : super(v, n);
}

class LoggedOff_LogoffReason extends $pb.ProtobufEnum {
  static const LoggedOff_LogoffReason BY_REQUEST = LoggedOff_LogoffReason._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BY_REQUEST');
  static const LoggedOff_LogoffReason REDIRECTED = LoggedOff_LogoffReason._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REDIRECTED');
  static const LoggedOff_LogoffReason FORCED = LoggedOff_LogoffReason._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FORCED');
  static const LoggedOff_LogoffReason REASSIGNED = LoggedOff_LogoffReason._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REASSIGNED');

  static const $core.List<LoggedOff_LogoffReason> values = <LoggedOff_LogoffReason> [
    BY_REQUEST,
    REDIRECTED,
    FORCED,
    REASSIGNED,
  ];

  static final $core.Map<$core.int, LoggedOff_LogoffReason> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LoggedOff_LogoffReason valueOf($core.int value) => _byValue[value];

  const LoggedOff_LogoffReason._($core.int v, $core.String n) : super(v, n);
}

class PasswordChangeResult_ResultCode extends $pb.ProtobufEnum {
  static const PasswordChangeResult_ResultCode SUCCESS = PasswordChangeResult_ResultCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const PasswordChangeResult_ResultCode FAILURE = PasswordChangeResult_ResultCode._(101, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILURE');
  static const PasswordChangeResult_ResultCode ROUTINE_ERROR = PasswordChangeResult_ResultCode._(102, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ROUTINE_ERROR');

  static const $core.List<PasswordChangeResult_ResultCode> values = <PasswordChangeResult_ResultCode> [
    SUCCESS,
    FAILURE,
    ROUTINE_ERROR,
  ];

  static final $core.Map<$core.int, PasswordChangeResult_ResultCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PasswordChangeResult_ResultCode valueOf($core.int value) => _byValue[value];

  const PasswordChangeResult_ResultCode._($core.int v, $core.String n) : super(v, n);
}

class ObtainDemoCredentialsResult_ResultCode extends $pb.ProtobufEnum {
  static const ObtainDemoCredentialsResult_ResultCode SUCCESS = ObtainDemoCredentialsResult_ResultCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const ObtainDemoCredentialsResult_ResultCode FAILURE = ObtainDemoCredentialsResult_ResultCode._(101, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILURE');

  static const $core.List<ObtainDemoCredentialsResult_ResultCode> values = <ObtainDemoCredentialsResult_ResultCode> [
    SUCCESS,
    FAILURE,
  ];

  static final $core.Map<$core.int, ObtainDemoCredentialsResult_ResultCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ObtainDemoCredentialsResult_ResultCode valueOf($core.int value) => _byValue[value];

  const ObtainDemoCredentialsResult_ResultCode._($core.int v, $core.String n) : super(v, n);
}

class UserMessage_MessageType extends $pb.ProtobufEnum {
  static const UserMessage_MessageType CRITICAL_ERROR = UserMessage_MessageType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CRITICAL_ERROR');
  static const UserMessage_MessageType WARNING = UserMessage_MessageType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WARNING');
  static const UserMessage_MessageType INFO = UserMessage_MessageType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INFO');
  static const UserMessage_MessageType LOG = UserMessage_MessageType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LOG');

  static const $core.List<UserMessage_MessageType> values = <UserMessage_MessageType> [
    CRITICAL_ERROR,
    WARNING,
    INFO,
    LOG,
  ];

  static final $core.Map<$core.int, UserMessage_MessageType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserMessage_MessageType valueOf($core.int value) => _byValue[value];

  const UserMessage_MessageType._($core.int v, $core.String n) : super(v, n);
}

class UserSessionStateResult_ResultCode extends $pb.ProtobufEnum {
  static const UserSessionStateResult_ResultCode SUCCESS = UserSessionStateResult_ResultCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const UserSessionStateResult_ResultCode FAILURE = UserSessionStateResult_ResultCode._(101, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILURE');
  static const UserSessionStateResult_ResultCode UNKNOWN_SESSION = UserSessionStateResult_ResultCode._(102, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN_SESSION');
  static const UserSessionStateResult_ResultCode ACCESS_DENIED = UserSessionStateResult_ResultCode._(103, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACCESS_DENIED');

  static const $core.List<UserSessionStateResult_ResultCode> values = <UserSessionStateResult_ResultCode> [
    SUCCESS,
    FAILURE,
    UNKNOWN_SESSION,
    ACCESS_DENIED,
  ];

  static final $core.Map<$core.int, UserSessionStateResult_ResultCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserSessionStateResult_ResultCode valueOf($core.int value) => _byValue[value];

  const UserSessionStateResult_ResultCode._($core.int v, $core.String n) : super(v, n);
}

class StrategyDefinition_RoundLegMode extends $pb.ProtobufEnum {
  static const StrategyDefinition_RoundLegMode DOWN = StrategyDefinition_RoundLegMode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DOWN');
  static const StrategyDefinition_RoundLegMode UP = StrategyDefinition_RoundLegMode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UP');
  static const StrategyDefinition_RoundLegMode MATH = StrategyDefinition_RoundLegMode._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MATH');

  static const $core.List<StrategyDefinition_RoundLegMode> values = <StrategyDefinition_RoundLegMode> [
    DOWN,
    UP,
    MATH,
  ];

  static final $core.Map<$core.int, StrategyDefinition_RoundLegMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static StrategyDefinition_RoundLegMode valueOf($core.int value) => _byValue[value];

  const StrategyDefinition_RoundLegMode._($core.int v, $core.String n) : super(v, n);
}

class StrategyNodeDefinition_NodeOperation extends $pb.ProtobufEnum {
  static const StrategyNodeDefinition_NodeOperation SUM = StrategyNodeDefinition_NodeOperation._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUM');
  static const StrategyNodeDefinition_NodeOperation MUL = StrategyNodeDefinition_NodeOperation._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MUL');
  static const StrategyNodeDefinition_NodeOperation DIV = StrategyNodeDefinition_NodeOperation._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DIV');

  static const $core.List<StrategyNodeDefinition_NodeOperation> values = <StrategyNodeDefinition_NodeOperation> [
    SUM,
    MUL,
    DIV,
  ];

  static final $core.Map<$core.int, StrategyNodeDefinition_NodeOperation> _byValue = $pb.ProtobufEnum.initByValue(values);
  static StrategyNodeDefinition_NodeOperation valueOf($core.int value) => _byValue[value];

  const StrategyNodeDefinition_NodeOperation._($core.int v, $core.String n) : super(v, n);
}

class ContractMetadata_MarginStyle extends $pb.ProtobufEnum {
  static const ContractMetadata_MarginStyle FUTURE = ContractMetadata_MarginStyle._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FUTURE');
  static const ContractMetadata_MarginStyle PREMIUM = ContractMetadata_MarginStyle._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PREMIUM');

  static const $core.List<ContractMetadata_MarginStyle> values = <ContractMetadata_MarginStyle> [
    FUTURE,
    PREMIUM,
  ];

  static final $core.Map<$core.int, ContractMetadata_MarginStyle> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ContractMetadata_MarginStyle valueOf($core.int value) => _byValue[value];

  const ContractMetadata_MarginStyle._($core.int v, $core.String n) : super(v, n);
}

class InformationReport_StatusCode extends $pb.ProtobufEnum {
  static const InformationReport_StatusCode SUCCESS = InformationReport_StatusCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const InformationReport_StatusCode SUBSCRIBED = InformationReport_StatusCode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUBSCRIBED');
  static const InformationReport_StatusCode DROPPED = InformationReport_StatusCode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DROPPED');
  static const InformationReport_StatusCode UPDATE = InformationReport_StatusCode._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UPDATE');
  static const InformationReport_StatusCode DISCONNECTED = InformationReport_StatusCode._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DISCONNECTED');
  static const InformationReport_StatusCode FAILURE = InformationReport_StatusCode._(101, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILURE');
  static const InformationReport_StatusCode NOT_FOUND = InformationReport_StatusCode._(104, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NOT_FOUND');
  static const InformationReport_StatusCode REQUEST_RATE_LIMIT_VIOLATION = InformationReport_StatusCode._(105, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REQUEST_RATE_LIMIT_VIOLATION');
  static const InformationReport_StatusCode SUBSCRIPTION_LIMIT_VIOLATION = InformationReport_StatusCode._(106, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUBSCRIPTION_LIMIT_VIOLATION');
  static const InformationReport_StatusCode ACTIVE_REQUESTS_LIMIT_VIOLATION = InformationReport_StatusCode._(107, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTIVE_REQUESTS_LIMIT_VIOLATION');

  static const $core.List<InformationReport_StatusCode> values = <InformationReport_StatusCode> [
    SUCCESS,
    SUBSCRIBED,
    DROPPED,
    UPDATE,
    DISCONNECTED,
    FAILURE,
    NOT_FOUND,
    REQUEST_RATE_LIMIT_VIOLATION,
    SUBSCRIPTION_LIMIT_VIOLATION,
    ACTIVE_REQUESTS_LIMIT_VIOLATION,
  ];

  static final $core.Map<$core.int, InformationReport_StatusCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static InformationReport_StatusCode valueOf($core.int value) => _byValue[value];

  const InformationReport_StatusCode._($core.int v, $core.String n) : super(v, n);
}

class Account_AccountConnectionStatus extends $pb.ProtobufEnum {
  static const Account_AccountConnectionStatus OFFLINE = Account_AccountConnectionStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OFFLINE');
  static const Account_AccountConnectionStatus DISCONNECTED = Account_AccountConnectionStatus._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DISCONNECTED');
  static const Account_AccountConnectionStatus CONNECTING = Account_AccountConnectionStatus._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CONNECTING');
  static const Account_AccountConnectionStatus CONNECTED = Account_AccountConnectionStatus._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CONNECTED');

  static const $core.List<Account_AccountConnectionStatus> values = <Account_AccountConnectionStatus> [
    OFFLINE,
    DISCONNECTED,
    CONNECTING,
    CONNECTED,
  ];

  static final $core.Map<$core.int, Account_AccountConnectionStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Account_AccountConnectionStatus valueOf($core.int value) => _byValue[value];

  const Account_AccountConnectionStatus._($core.int v, $core.String n) : super(v, n);
}

class AccountLogonResult_ResultCode extends $pb.ProtobufEnum {
  static const AccountLogonResult_ResultCode SUCCESS = AccountLogonResult_ResultCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const AccountLogonResult_ResultCode PASSWORD_CHANGE_REQUIRED = AccountLogonResult_ResultCode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PASSWORD_CHANGE_REQUIRED');
  static const AccountLogonResult_ResultCode PASSWORD_EXPIRED = AccountLogonResult_ResultCode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PASSWORD_EXPIRED');
  static const AccountLogonResult_ResultCode FAILURE = AccountLogonResult_ResultCode._(101, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILURE');

  static const $core.List<AccountLogonResult_ResultCode> values = <AccountLogonResult_ResultCode> [
    SUCCESS,
    PASSWORD_CHANGE_REQUIRED,
    PASSWORD_EXPIRED,
    FAILURE,
  ];

  static final $core.Map<$core.int, AccountLogonResult_ResultCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AccountLogonResult_ResultCode valueOf($core.int value) => _byValue[value];

  const AccountLogonResult_ResultCode._($core.int v, $core.String n) : super(v, n);
}

class AccountPasswordChangeResult_ResultCode extends $pb.ProtobufEnum {
  static const AccountPasswordChangeResult_ResultCode SUCCESS = AccountPasswordChangeResult_ResultCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const AccountPasswordChangeResult_ResultCode FAILURE = AccountPasswordChangeResult_ResultCode._(101, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILURE');

  static const $core.List<AccountPasswordChangeResult_ResultCode> values = <AccountPasswordChangeResult_ResultCode> [
    SUCCESS,
    FAILURE,
  ];

  static final $core.Map<$core.int, AccountPasswordChangeResult_ResultCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AccountPasswordChangeResult_ResultCode valueOf($core.int value) => _byValue[value];

  const AccountPasswordChangeResult_ResultCode._($core.int v, $core.String n) : super(v, n);
}

class AccountLogoffResult_ResultCode extends $pb.ProtobufEnum {
  static const AccountLogoffResult_ResultCode SUCCESS = AccountLogoffResult_ResultCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const AccountLogoffResult_ResultCode FAILURE = AccountLogoffResult_ResultCode._(101, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILURE');

  static const $core.List<AccountLogoffResult_ResultCode> values = <AccountLogoffResult_ResultCode> [
    SUCCESS,
    FAILURE,
  ];

  static final $core.Map<$core.int, AccountLogoffResult_ResultCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AccountLogoffResult_ResultCode valueOf($core.int value) => _byValue[value];

  const AccountLogoffResult_ResultCode._($core.int v, $core.String n) : super(v, n);
}

class TradeSubscription_SubscriptionScope extends $pb.ProtobufEnum {
  static const TradeSubscription_SubscriptionScope ORDERS = TradeSubscription_SubscriptionScope._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ORDERS');
  static const TradeSubscription_SubscriptionScope POSITIONS = TradeSubscription_SubscriptionScope._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'POSITIONS');
  static const TradeSubscription_SubscriptionScope COLLATERAL = TradeSubscription_SubscriptionScope._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'COLLATERAL');

  static const $core.List<TradeSubscription_SubscriptionScope> values = <TradeSubscription_SubscriptionScope> [
    ORDERS,
    POSITIONS,
    COLLATERAL,
  ];

  static final $core.Map<$core.int, TradeSubscription_SubscriptionScope> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TradeSubscription_SubscriptionScope valueOf($core.int value) => _byValue[value];

  const TradeSubscription_SubscriptionScope._($core.int v, $core.String n) : super(v, n);
}

class TradeSubscription_PublicationType extends $pb.ProtobufEnum {
  static const TradeSubscription_PublicationType ACCOUNT = TradeSubscription_PublicationType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACCOUNT');
  static const TradeSubscription_PublicationType SALES_SERIES = TradeSubscription_PublicationType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SALES_SERIES');
  static const TradeSubscription_PublicationType BROKERAGE = TradeSubscription_PublicationType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BROKERAGE');
  static const TradeSubscription_PublicationType ALL_AUTHORIZED = TradeSubscription_PublicationType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ALL_AUTHORIZED');

  static const $core.List<TradeSubscription_PublicationType> values = <TradeSubscription_PublicationType> [
    ACCOUNT,
    SALES_SERIES,
    BROKERAGE,
    ALL_AUTHORIZED,
  ];

  static final $core.Map<$core.int, TradeSubscription_PublicationType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TradeSubscription_PublicationType valueOf($core.int value) => _byValue[value];

  const TradeSubscription_PublicationType._($core.int v, $core.String n) : super(v, n);
}

class TradeSubscription_MatchingAlgorithm extends $pb.ProtobufEnum {
  static const TradeSubscription_MatchingAlgorithm FIFO = TradeSubscription_MatchingAlgorithm._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FIFO');
  static const TradeSubscription_MatchingAlgorithm HBHS = TradeSubscription_MatchingAlgorithm._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HBHS');
  static const TradeSubscription_MatchingAlgorithm LIFO = TradeSubscription_MatchingAlgorithm._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LIFO');

  static const $core.List<TradeSubscription_MatchingAlgorithm> values = <TradeSubscription_MatchingAlgorithm> [
    FIFO,
    HBHS,
    LIFO,
  ];

  static final $core.Map<$core.int, TradeSubscription_MatchingAlgorithm> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TradeSubscription_MatchingAlgorithm valueOf($core.int value) => _byValue[value];

  const TradeSubscription_MatchingAlgorithm._($core.int v, $core.String n) : super(v, n);
}

class TradeSubscriptionStatus_StatusCode extends $pb.ProtobufEnum {
  static const TradeSubscriptionStatus_StatusCode SUCCESS = TradeSubscriptionStatus_StatusCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const TradeSubscriptionStatus_StatusCode DISCONNECTED = TradeSubscriptionStatus_StatusCode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DISCONNECTED');
  static const TradeSubscriptionStatus_StatusCode FAILURE = TradeSubscriptionStatus_StatusCode._(101, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILURE');
  static const TradeSubscriptionStatus_StatusCode SUBSCRIPTION_LIMIT_VIOLATION = TradeSubscriptionStatus_StatusCode._(102, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUBSCRIPTION_LIMIT_VIOLATION');
  static const TradeSubscriptionStatus_StatusCode INVALID_PUBLICATION_ID = TradeSubscriptionStatus_StatusCode._(103, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INVALID_PUBLICATION_ID');
  static const TradeSubscriptionStatus_StatusCode SUBSCRIBED_ACCOUNTS_LIMIT_VIOLATION = TradeSubscriptionStatus_StatusCode._(104, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUBSCRIBED_ACCOUNTS_LIMIT_VIOLATION');

  static const $core.List<TradeSubscriptionStatus_StatusCode> values = <TradeSubscriptionStatus_StatusCode> [
    SUCCESS,
    DISCONNECTED,
    FAILURE,
    SUBSCRIPTION_LIMIT_VIOLATION,
    INVALID_PUBLICATION_ID,
    SUBSCRIBED_ACCOUNTS_LIMIT_VIOLATION,
  ];

  static final $core.Map<$core.int, TradeSubscriptionStatus_StatusCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TradeSubscriptionStatus_StatusCode valueOf($core.int value) => _byValue[value];

  const TradeSubscriptionStatus_StatusCode._($core.int v, $core.String n) : super(v, n);
}

class Order_Side extends $pb.ProtobufEnum {
  static const Order_Side BUY = Order_Side._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BUY');
  static const Order_Side SELL = Order_Side._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SELL');

  static const $core.List<Order_Side> values = <Order_Side> [
    BUY,
    SELL,
  ];

  static final $core.Map<$core.int, Order_Side> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Order_Side valueOf($core.int value) => _byValue[value];

  const Order_Side._($core.int v, $core.String n) : super(v, n);
}

class Order_OrderType extends $pb.ProtobufEnum {
  static const Order_OrderType MKT = Order_OrderType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MKT');
  static const Order_OrderType LMT = Order_OrderType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LMT');
  static const Order_OrderType STP = Order_OrderType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STP');
  static const Order_OrderType STL = Order_OrderType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STL');
  static const Order_OrderType CROSS = Order_OrderType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CROSS');

  static const $core.List<Order_OrderType> values = <Order_OrderType> [
    MKT,
    LMT,
    STP,
    STL,
    CROSS,
  ];

  static final $core.Map<$core.int, Order_OrderType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Order_OrderType valueOf($core.int value) => _byValue[value];

  const Order_OrderType._($core.int v, $core.String n) : super(v, n);
}

class Order_ExecInstruction extends $pb.ProtobufEnum {
  static const Order_ExecInstruction AON = Order_ExecInstruction._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AON');
  static const Order_ExecInstruction ICEBERG = Order_ExecInstruction._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ICEBERG');
  static const Order_ExecInstruction QT = Order_ExecInstruction._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'QT');
  static const Order_ExecInstruction TRAIL = Order_ExecInstruction._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TRAIL');
  static const Order_ExecInstruction FUNARI = Order_ExecInstruction._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FUNARI');
  static const Order_ExecInstruction MIT = Order_ExecInstruction._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MIT');
  static const Order_ExecInstruction MLM = Order_ExecInstruction._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MLM');
  static const Order_ExecInstruction POSTONLY = Order_ExecInstruction._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'POSTONLY');
  static const Order_ExecInstruction DISCRETION = Order_ExecInstruction._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DISCRETION');
  static const Order_ExecInstruction MTL = Order_ExecInstruction._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MTL');
  static const Order_ExecInstruction AUCTION = Order_ExecInstruction._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AUCTION');
  static const Order_ExecInstruction NONE = Order_ExecInstruction._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NONE');

  static const $core.List<Order_ExecInstruction> values = <Order_ExecInstruction> [
    AON,
    ICEBERG,
    QT,
    TRAIL,
    FUNARI,
    MIT,
    MLM,
    POSTONLY,
    DISCRETION,
    MTL,
    AUCTION,
    NONE,
  ];

  static final $core.Map<$core.int, Order_ExecInstruction> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Order_ExecInstruction valueOf($core.int value) => _byValue[value];

  const Order_ExecInstruction._($core.int v, $core.String n) : super(v, n);
}

class Order_Duration extends $pb.ProtobufEnum {
  static const Order_Duration DAY = Order_Duration._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DAY');
  static const Order_Duration GTC = Order_Duration._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GTC');
  static const Order_Duration GTD = Order_Duration._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GTD');
  static const Order_Duration GTT = Order_Duration._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GTT');
  static const Order_Duration FAK = Order_Duration._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAK');
  static const Order_Duration FOK = Order_Duration._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FOK');
  static const Order_Duration ATO = Order_Duration._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ATO');
  static const Order_Duration ATC = Order_Duration._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ATC');

  static const $core.List<Order_Duration> values = <Order_Duration> [
    DAY,
    GTC,
    GTD,
    GTT,
    FAK,
    FOK,
    ATO,
    ATC,
  ];

  static final $core.Map<$core.int, Order_Duration> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Order_Duration valueOf($core.int value) => _byValue[value];

  const Order_Duration._($core.int v, $core.String n) : super(v, n);
}

class Order_TrailingPeg extends $pb.ProtobufEnum {
  static const Order_TrailingPeg BESTBID = Order_TrailingPeg._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BESTBID');
  static const Order_TrailingPeg BESTASK = Order_TrailingPeg._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BESTASK');
  static const Order_TrailingPeg LASTTRADE = Order_TrailingPeg._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LASTTRADE');

  static const $core.List<Order_TrailingPeg> values = <Order_TrailingPeg> [
    BESTBID,
    BESTASK,
    LASTTRADE,
  ];

  static final $core.Map<$core.int, Order_TrailingPeg> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Order_TrailingPeg valueOf($core.int value) => _byValue[value];

  const Order_TrailingPeg._($core.int v, $core.String n) : super(v, n);
}

class Order_OpenCloseInstruction extends $pb.ProtobufEnum {
  static const Order_OpenCloseInstruction OPEN = Order_OpenCloseInstruction._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OPEN');
  static const Order_OpenCloseInstruction CLOSE = Order_OpenCloseInstruction._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CLOSE');
  static const Order_OpenCloseInstruction CLOSE_YESTERDAY = Order_OpenCloseInstruction._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CLOSE_YESTERDAY');

  static const $core.List<Order_OpenCloseInstruction> values = <Order_OpenCloseInstruction> [
    OPEN,
    CLOSE,
    CLOSE_YESTERDAY,
  ];

  static final $core.Map<$core.int, Order_OpenCloseInstruction> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Order_OpenCloseInstruction valueOf($core.int value) => _byValue[value];

  const Order_OpenCloseInstruction._($core.int v, $core.String n) : super(v, n);
}

class CompoundOrder_Type extends $pb.ProtobufEnum {
  static const CompoundOrder_Type OPO = CompoundOrder_Type._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OPO');
  static const CompoundOrder_Type OCO = CompoundOrder_Type._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OCO');
  static const CompoundOrder_Type INDEPENDENT = CompoundOrder_Type._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INDEPENDENT');

  static const $core.List<CompoundOrder_Type> values = <CompoundOrder_Type> [
    OPO,
    OCO,
    INDEPENDENT,
  ];

  static final $core.Map<$core.int, CompoundOrder_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CompoundOrder_Type valueOf($core.int value) => _byValue[value];

  const CompoundOrder_Type._($core.int v, $core.String n) : super(v, n);
}

class PrimaryOrdersLimit_FarFromMarketMode extends $pb.ProtobufEnum {
  static const PrimaryOrdersLimit_FarFromMarketMode NO_ORDERS = PrimaryOrdersLimit_FarFromMarketMode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NO_ORDERS');
  static const PrimaryOrdersLimit_FarFromMarketMode MOVE_AWAY_ONLY = PrimaryOrdersLimit_FarFromMarketMode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MOVE_AWAY_ONLY');
  static const PrimaryOrdersLimit_FarFromMarketMode DONT_MOVE = PrimaryOrdersLimit_FarFromMarketMode._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DONT_MOVE');

  static const $core.List<PrimaryOrdersLimit_FarFromMarketMode> values = <PrimaryOrdersLimit_FarFromMarketMode> [
    NO_ORDERS,
    MOVE_AWAY_ONLY,
    DONT_MOVE,
  ];

  static final $core.Map<$core.int, PrimaryOrdersLimit_FarFromMarketMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PrimaryOrdersLimit_FarFromMarketMode valueOf($core.int value) => _byValue[value];

  const PrimaryOrdersLimit_FarFromMarketMode._($core.int v, $core.String n) : super(v, n);
}

class PrimaryOrdersLimit_DOMUsageMode extends $pb.ProtobufEnum {
  static const PrimaryOrdersLimit_DOMUsageMode TOP_ONLY = PrimaryOrdersLimit_DOMUsageMode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TOP_ONLY');
  static const PrimaryOrdersLimit_DOMUsageMode MULTILEVELS = PrimaryOrdersLimit_DOMUsageMode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MULTILEVELS');
  static const PrimaryOrdersLimit_DOMUsageMode FULL_SIZE_WORST_PRICE = PrimaryOrdersLimit_DOMUsageMode._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FULL_SIZE_WORST_PRICE');
  static const PrimaryOrdersLimit_DOMUsageMode FULL_SIZE_AVERAGE_PRICE = PrimaryOrdersLimit_DOMUsageMode._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FULL_SIZE_AVERAGE_PRICE');

  static const $core.List<PrimaryOrdersLimit_DOMUsageMode> values = <PrimaryOrdersLimit_DOMUsageMode> [
    TOP_ONLY,
    MULTILEVELS,
    FULL_SIZE_WORST_PRICE,
    FULL_SIZE_AVERAGE_PRICE,
  ];

  static final $core.Map<$core.int, PrimaryOrdersLimit_DOMUsageMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PrimaryOrdersLimit_DOMUsageMode valueOf($core.int value) => _byValue[value];

  const PrimaryOrdersLimit_DOMUsageMode._($core.int v, $core.String n) : super(v, n);
}

class PrimaryOrdersSniper_LegDuration extends $pb.ProtobufEnum {
  static const PrimaryOrdersSniper_LegDuration DAY = PrimaryOrdersSniper_LegDuration._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DAY');
  static const PrimaryOrdersSniper_LegDuration FAK = PrimaryOrdersSniper_LegDuration._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAK');
  static const PrimaryOrdersSniper_LegDuration FOK = PrimaryOrdersSniper_LegDuration._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FOK');

  static const $core.List<PrimaryOrdersSniper_LegDuration> values = <PrimaryOrdersSniper_LegDuration> [
    DAY,
    FAK,
    FOK,
  ];

  static final $core.Map<$core.int, PrimaryOrdersSniper_LegDuration> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PrimaryOrdersSniper_LegDuration valueOf($core.int value) => _byValue[value];

  const PrimaryOrdersSniper_LegDuration._($core.int v, $core.String n) : super(v, n);
}

class StrategyLimitOrderParameters_OverfillMode extends $pb.ProtobufEnum {
  static const StrategyLimitOrderParameters_OverfillMode MANUAL = StrategyLimitOrderParameters_OverfillMode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MANUAL');
  static const StrategyLimitOrderParameters_OverfillMode AUTOMATIC_HEDGING = StrategyLimitOrderParameters_OverfillMode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AUTOMATIC_HEDGING');
  static const StrategyLimitOrderParameters_OverfillMode AVOID_OVERFILLS = StrategyLimitOrderParameters_OverfillMode._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AVOID_OVERFILLS');

  static const $core.List<StrategyLimitOrderParameters_OverfillMode> values = <StrategyLimitOrderParameters_OverfillMode> [
    MANUAL,
    AUTOMATIC_HEDGING,
    AVOID_OVERFILLS,
  ];

  static final $core.Map<$core.int, StrategyLimitOrderParameters_OverfillMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static StrategyLimitOrderParameters_OverfillMode valueOf($core.int value) => _byValue[value];

  const StrategyLimitOrderParameters_OverfillMode._($core.int v, $core.String n) : super(v, n);
}

class StrategyLimitOrderParameters_AlignToStrategyLots extends $pb.ProtobufEnum {
  static const StrategyLimitOrderParameters_AlignToStrategyLots NONE = StrategyLimitOrderParameters_AlignToStrategyLots._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NONE');
  static const StrategyLimitOrderParameters_AlignToStrategyLots SECONDARY_ONLY = StrategyLimitOrderParameters_AlignToStrategyLots._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SECONDARY_ONLY');
  static const StrategyLimitOrderParameters_AlignToStrategyLots ALL = StrategyLimitOrderParameters_AlignToStrategyLots._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ALL');

  static const $core.List<StrategyLimitOrderParameters_AlignToStrategyLots> values = <StrategyLimitOrderParameters_AlignToStrategyLots> [
    NONE,
    SECONDARY_ONLY,
    ALL,
  ];

  static final $core.Map<$core.int, StrategyLimitOrderParameters_AlignToStrategyLots> _byValue = $pb.ProtobufEnum.initByValue(values);
  static StrategyLimitOrderParameters_AlignToStrategyLots valueOf($core.int value) => _byValue[value];

  const StrategyLimitOrderParameters_AlignToStrategyLots._($core.int v, $core.String n) : super(v, n);
}

class StrategyLimitOrderParameters_PricingMethod extends $pb.ProtobufEnum {
  static const StrategyLimitOrderParameters_PricingMethod INDEPENDENT_LOT_PRICE = StrategyLimitOrderParameters_PricingMethod._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INDEPENDENT_LOT_PRICE');
  static const StrategyLimitOrderParameters_PricingMethod AVERAGE_ORDER_PRICE = StrategyLimitOrderParameters_PricingMethod._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AVERAGE_ORDER_PRICE');

  static const $core.List<StrategyLimitOrderParameters_PricingMethod> values = <StrategyLimitOrderParameters_PricingMethod> [
    INDEPENDENT_LOT_PRICE,
    AVERAGE_ORDER_PRICE,
  ];

  static final $core.Map<$core.int, StrategyLimitOrderParameters_PricingMethod> _byValue = $pb.ProtobufEnum.initByValue(values);
  static StrategyLimitOrderParameters_PricingMethod valueOf($core.int value) => _byValue[value];

  const StrategyLimitOrderParameters_PricingMethod._($core.int v, $core.String n) : super(v, n);
}

class StrategyStopOrderParameters_StopSide extends $pb.ProtobufEnum {
  static const StrategyStopOrderParameters_StopSide BID = StrategyStopOrderParameters_StopSide._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BID');
  static const StrategyStopOrderParameters_StopSide ASK = StrategyStopOrderParameters_StopSide._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ASK');

  static const $core.List<StrategyStopOrderParameters_StopSide> values = <StrategyStopOrderParameters_StopSide> [
    BID,
    ASK,
  ];

  static final $core.Map<$core.int, StrategyStopOrderParameters_StopSide> _byValue = $pb.ProtobufEnum.initByValue(values);
  static StrategyStopOrderParameters_StopSide valueOf($core.int value) => _byValue[value];

  const StrategyStopOrderParameters_StopSide._($core.int v, $core.String n) : super(v, n);
}

class MarketTakingParameters_MarketTakingLimitOrderType extends $pb.ProtobufEnum {
  static const MarketTakingParameters_MarketTakingLimitOrderType LMT = MarketTakingParameters_MarketTakingLimitOrderType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LMT');
  static const MarketTakingParameters_MarketTakingLimitOrderType MKT = MarketTakingParameters_MarketTakingLimitOrderType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MKT');

  static const $core.List<MarketTakingParameters_MarketTakingLimitOrderType> values = <MarketTakingParameters_MarketTakingLimitOrderType> [
    LMT,
    MKT,
  ];

  static final $core.Map<$core.int, MarketTakingParameters_MarketTakingLimitOrderType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MarketTakingParameters_MarketTakingLimitOrderType valueOf($core.int value) => _byValue[value];

  const MarketTakingParameters_MarketTakingLimitOrderType._($core.int v, $core.String n) : super(v, n);
}

class StrategyAggregationParameters_AggrOverfillMode extends $pb.ProtobufEnum {
  static const StrategyAggregationParameters_AggrOverfillMode AVOID_OVERFILLS = StrategyAggregationParameters_AggrOverfillMode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AVOID_OVERFILLS');
  static const StrategyAggregationParameters_AggrOverfillMode ACCEPT_OVERFILL = StrategyAggregationParameters_AggrOverfillMode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACCEPT_OVERFILL');
  static const StrategyAggregationParameters_AggrOverfillMode PRESERVE_QUEUE_POSITION = StrategyAggregationParameters_AggrOverfillMode._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PRESERVE_QUEUE_POSITION');

  static const $core.List<StrategyAggregationParameters_AggrOverfillMode> values = <StrategyAggregationParameters_AggrOverfillMode> [
    AVOID_OVERFILLS,
    ACCEPT_OVERFILL,
    PRESERVE_QUEUE_POSITION,
  ];

  static final $core.Map<$core.int, StrategyAggregationParameters_AggrOverfillMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static StrategyAggregationParameters_AggrOverfillMode valueOf($core.int value) => _byValue[value];

  const StrategyAggregationParameters_AggrOverfillMode._($core.int v, $core.String n) : super(v, n);
}

class ApproveOrder_Action extends $pb.ProtobufEnum {
  static const ApproveOrder_Action APPROVE_ORDER_ACTION_APPROVE = ApproveOrder_Action._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'APPROVE_ORDER_ACTION_APPROVE');
  static const ApproveOrder_Action APPROVE_ORDER_ACTION_REJECT = ApproveOrder_Action._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'APPROVE_ORDER_ACTION_REJECT');

  static const $core.List<ApproveOrder_Action> values = <ApproveOrder_Action> [
    APPROVE_ORDER_ACTION_APPROVE,
    APPROVE_ORDER_ACTION_REJECT,
  ];

  static final $core.Map<$core.int, ApproveOrder_Action> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ApproveOrder_Action valueOf($core.int value) => _byValue[value];

  const ApproveOrder_Action._($core.int v, $core.String n) : super(v, n);
}

class MarketDataSubscription_Level extends $pb.ProtobufEnum {
  static const MarketDataSubscription_Level NONE = MarketDataSubscription_Level._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NONE');
  static const MarketDataSubscription_Level SETTLEMENTS = MarketDataSubscription_Level._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SETTLEMENTS');
  static const MarketDataSubscription_Level MARKET_VALUES = MarketDataSubscription_Level._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MARKET_VALUES');
  static const MarketDataSubscription_Level TRADES = MarketDataSubscription_Level._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TRADES');
  static const MarketDataSubscription_Level TRADES_BBA = MarketDataSubscription_Level._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TRADES_BBA');
  static const MarketDataSubscription_Level TRADES_BBA_VOLUMES = MarketDataSubscription_Level._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TRADES_BBA_VOLUMES');
  static const MarketDataSubscription_Level TRADES_BBA_DOM = MarketDataSubscription_Level._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TRADES_BBA_DOM');
  static const MarketDataSubscription_Level TRADES_BBA_DETAILED_DOM = MarketDataSubscription_Level._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TRADES_BBA_DETAILED_DOM');

  static const $core.List<MarketDataSubscription_Level> values = <MarketDataSubscription_Level> [
    NONE,
    SETTLEMENTS,
    MARKET_VALUES,
    TRADES,
    TRADES_BBA,
    TRADES_BBA_VOLUMES,
    TRADES_BBA_DOM,
    TRADES_BBA_DETAILED_DOM,
  ];

  static final $core.Map<$core.int, MarketDataSubscription_Level> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MarketDataSubscription_Level valueOf($core.int value) => _byValue[value];

  const MarketDataSubscription_Level._($core.int v, $core.String n) : super(v, n);
}

class MarketDataSubscriptionStatus_StatusCode extends $pb.ProtobufEnum {
  static const MarketDataSubscriptionStatus_StatusCode SUCCESS = MarketDataSubscriptionStatus_StatusCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const MarketDataSubscriptionStatus_StatusCode DISCONNECTED = MarketDataSubscriptionStatus_StatusCode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DISCONNECTED');
  static const MarketDataSubscriptionStatus_StatusCode FAILURE = MarketDataSubscriptionStatus_StatusCode._(101, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILURE');
  static const MarketDataSubscriptionStatus_StatusCode INVALID_PARAMS = MarketDataSubscriptionStatus_StatusCode._(102, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INVALID_PARAMS');
  static const MarketDataSubscriptionStatus_StatusCode ACCESS_DENIED = MarketDataSubscriptionStatus_StatusCode._(103, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACCESS_DENIED');
  static const MarketDataSubscriptionStatus_StatusCode DELETED = MarketDataSubscriptionStatus_StatusCode._(104, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DELETED');
  static const MarketDataSubscriptionStatus_StatusCode SUBSCRIPTION_LIMIT_VIOLATION = MarketDataSubscriptionStatus_StatusCode._(105, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUBSCRIPTION_LIMIT_VIOLATION');
  static const MarketDataSubscriptionStatus_StatusCode CONTRIBUTOR_REQUIRED = MarketDataSubscriptionStatus_StatusCode._(106, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CONTRIBUTOR_REQUIRED');
  static const MarketDataSubscriptionStatus_StatusCode SUBSCRIPTION_RATE_LIMIT_VIOLATION = MarketDataSubscriptionStatus_StatusCode._(107, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUBSCRIPTION_RATE_LIMIT_VIOLATION');
  static const MarketDataSubscriptionStatus_StatusCode NOT_SUPPORTED = MarketDataSubscriptionStatus_StatusCode._(110, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NOT_SUPPORTED');

  static const $core.List<MarketDataSubscriptionStatus_StatusCode> values = <MarketDataSubscriptionStatus_StatusCode> [
    SUCCESS,
    DISCONNECTED,
    FAILURE,
    INVALID_PARAMS,
    ACCESS_DENIED,
    DELETED,
    SUBSCRIPTION_LIMIT_VIOLATION,
    CONTRIBUTOR_REQUIRED,
    SUBSCRIPTION_RATE_LIMIT_VIOLATION,
    NOT_SUPPORTED,
  ];

  static final $core.Map<$core.int, MarketDataSubscriptionStatus_StatusCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MarketDataSubscriptionStatus_StatusCode valueOf($core.int value) => _byValue[value];

  const MarketDataSubscriptionStatus_StatusCode._($core.int v, $core.String n) : super(v, n);
}

class Quote_Type extends $pb.ProtobufEnum {
  static const Quote_Type TRADE = Quote_Type._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TRADE');
  static const Quote_Type BESTBID = Quote_Type._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BESTBID');
  static const Quote_Type BESTASK = Quote_Type._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BESTASK');
  static const Quote_Type BID = Quote_Type._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BID');
  static const Quote_Type ASK = Quote_Type._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ASK');
  static const Quote_Type SETTLEMENT = Quote_Type._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SETTLEMENT');
  static const Quote_Type BESTDISCRBID = Quote_Type._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BESTDISCRBID');
  static const Quote_Type BESTDISCRASK = Quote_Type._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BESTDISCRASK');
  static const Quote_Type DISCRBID = Quote_Type._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DISCRBID');
  static const Quote_Type DISCRASK = Quote_Type._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DISCRASK');

  static const $core.List<Quote_Type> values = <Quote_Type> [
    TRADE,
    BESTBID,
    BESTASK,
    BID,
    ASK,
    SETTLEMENT,
    BESTDISCRBID,
    BESTDISCRASK,
    DISCRBID,
    DISCRASK,
  ];

  static final $core.Map<$core.int, Quote_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Quote_Type valueOf($core.int value) => _byValue[value];

  const Quote_Type._($core.int v, $core.String n) : super(v, n);
}

class Quote_Indicator extends $pb.ProtobufEnum {
  static const Quote_Indicator OPEN = Quote_Indicator._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OPEN');
  static const Quote_Indicator HIGH = Quote_Indicator._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HIGH');
  static const Quote_Indicator LOW = Quote_Indicator._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LOW');
  static const Quote_Indicator CLOSE = Quote_Indicator._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CLOSE');
  static const Quote_Indicator PAST = Quote_Indicator._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PAST');
  static const Quote_Indicator FALL_BACK_TO_TRADE_OR_SETTLEMENT = Quote_Indicator._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FALL_BACK_TO_TRADE_OR_SETTLEMENT');

  static const $core.List<Quote_Indicator> values = <Quote_Indicator> [
    OPEN,
    HIGH,
    LOW,
    CLOSE,
    PAST,
    FALL_BACK_TO_TRADE_OR_SETTLEMENT,
  ];

  static final $core.Map<$core.int, Quote_Indicator> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Quote_Indicator valueOf($core.int value) => _byValue[value];

  const Quote_Indicator._($core.int v, $core.String n) : super(v, n);
}

class Quote_SalesCondition extends $pb.ProtobufEnum {
  static const Quote_SalesCondition HIT = Quote_SalesCondition._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HIT');
  static const Quote_SalesCondition TAKE = Quote_SalesCondition._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TAKE');
  static const Quote_SalesCondition SPREAD_LEG = Quote_SalesCondition._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SPREAD_LEG');
  static const Quote_SalesCondition BUY_SIDE_AGGRESSOR = Quote_SalesCondition._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BUY_SIDE_AGGRESSOR');
  static const Quote_SalesCondition SELL_SIDE_AGGRESSOR = Quote_SalesCondition._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SELL_SIDE_AGGRESSOR');

  static const $core.List<Quote_SalesCondition> values = <Quote_SalesCondition> [
    HIT,
    TAKE,
    SPREAD_LEG,
    BUY_SIDE_AGGRESSOR,
    SELL_SIDE_AGGRESSOR,
  ];

  static final $core.Map<$core.int, Quote_SalesCondition> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Quote_SalesCondition valueOf($core.int value) => _byValue[value];

  const Quote_SalesCondition._($core.int v, $core.String n) : super(v, n);
}

class DetailedDOMOrder_Operation extends $pb.ProtobufEnum {
  static const DetailedDOMOrder_Operation INSERT = DetailedDOMOrder_Operation._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INSERT');
  static const DetailedDOMOrder_Operation REMOVE = DetailedDOMOrder_Operation._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REMOVE');
  static const DetailedDOMOrder_Operation MODIFY = DetailedDOMOrder_Operation._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MODIFY');
  static const DetailedDOMOrder_Operation MOVE_FROM_PRICE = DetailedDOMOrder_Operation._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MOVE_FROM_PRICE');
  static const DetailedDOMOrder_Operation MOVE_TO_PRICE = DetailedDOMOrder_Operation._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MOVE_TO_PRICE');

  static const $core.List<DetailedDOMOrder_Operation> values = <DetailedDOMOrder_Operation> [
    INSERT,
    REMOVE,
    MODIFY,
    MOVE_FROM_PRICE,
    MOVE_TO_PRICE,
  ];

  static final $core.Map<$core.int, DetailedDOMOrder_Operation> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DetailedDOMOrder_Operation valueOf($core.int value) => _byValue[value];

  const DetailedDOMOrder_Operation._($core.int v, $core.String n) : super(v, n);
}

class ReadUserAttributeResult_ResultCode extends $pb.ProtobufEnum {
  static const ReadUserAttributeResult_ResultCode SUCCESS = ReadUserAttributeResult_ResultCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const ReadUserAttributeResult_ResultCode FAILURE = ReadUserAttributeResult_ResultCode._(101, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILURE');
  static const ReadUserAttributeResult_ResultCode REQUEST_RATE_LIMIT_VIOLATION = ReadUserAttributeResult_ResultCode._(102, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REQUEST_RATE_LIMIT_VIOLATION');

  static const $core.List<ReadUserAttributeResult_ResultCode> values = <ReadUserAttributeResult_ResultCode> [
    SUCCESS,
    FAILURE,
    REQUEST_RATE_LIMIT_VIOLATION,
  ];

  static final $core.Map<$core.int, ReadUserAttributeResult_ResultCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ReadUserAttributeResult_ResultCode valueOf($core.int value) => _byValue[value];

  const ReadUserAttributeResult_ResultCode._($core.int v, $core.String n) : super(v, n);
}

class ModifyUserAttributeResult_ResultCode extends $pb.ProtobufEnum {
  static const ModifyUserAttributeResult_ResultCode SUCCESS = ModifyUserAttributeResult_ResultCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const ModifyUserAttributeResult_ResultCode FAILURE = ModifyUserAttributeResult_ResultCode._(101, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILURE');
  static const ModifyUserAttributeResult_ResultCode REQUEST_RATE_LIMIT_VIOLATION = ModifyUserAttributeResult_ResultCode._(102, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REQUEST_RATE_LIMIT_VIOLATION');
  static const ModifyUserAttributeResult_ResultCode STORAGE_SPACE_LIMIT_VIOLATION = ModifyUserAttributeResult_ResultCode._(103, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STORAGE_SPACE_LIMIT_VIOLATION');

  static const $core.List<ModifyUserAttributeResult_ResultCode> values = <ModifyUserAttributeResult_ResultCode> [
    SUCCESS,
    FAILURE,
    REQUEST_RATE_LIMIT_VIOLATION,
    STORAGE_SPACE_LIMIT_VIOLATION,
  ];

  static final $core.Map<$core.int, ModifyUserAttributeResult_ResultCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ModifyUserAttributeResult_ResultCode valueOf($core.int value) => _byValue[value];

  const ModifyUserAttributeResult_ResultCode._($core.int v, $core.String n) : super(v, n);
}

class TimeAndSalesParameters_Level extends $pb.ProtobufEnum {
  static const TimeAndSalesParameters_Level TRADES = TimeAndSalesParameters_Level._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TRADES');
  static const TimeAndSalesParameters_Level TRADES_BBA_VOLUMES = TimeAndSalesParameters_Level._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TRADES_BBA_VOLUMES');

  static const $core.List<TimeAndSalesParameters_Level> values = <TimeAndSalesParameters_Level> [
    TRADES,
    TRADES_BBA_VOLUMES,
  ];

  static final $core.Map<$core.int, TimeAndSalesParameters_Level> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TimeAndSalesParameters_Level valueOf($core.int value) => _byValue[value];

  const TimeAndSalesParameters_Level._($core.int v, $core.String n) : super(v, n);
}

class TimeAndSalesRequest_RequestType extends $pb.ProtobufEnum {
  static const TimeAndSalesRequest_RequestType GET = TimeAndSalesRequest_RequestType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GET');
  static const TimeAndSalesRequest_RequestType DROP = TimeAndSalesRequest_RequestType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DROP');

  static const $core.List<TimeAndSalesRequest_RequestType> values = <TimeAndSalesRequest_RequestType> [
    GET,
    DROP,
  ];

  static final $core.Map<$core.int, TimeAndSalesRequest_RequestType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TimeAndSalesRequest_RequestType valueOf($core.int value) => _byValue[value];

  const TimeAndSalesRequest_RequestType._($core.int v, $core.String n) : super(v, n);
}

class TimeAndSalesReport_ResultCode extends $pb.ProtobufEnum {
  static const TimeAndSalesReport_ResultCode SUCCESS = TimeAndSalesReport_ResultCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const TimeAndSalesReport_ResultCode DROPPED = TimeAndSalesReport_ResultCode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DROPPED');
  static const TimeAndSalesReport_ResultCode DISCONNECTED = TimeAndSalesReport_ResultCode._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DISCONNECTED');
  static const TimeAndSalesReport_ResultCode FAILURE = TimeAndSalesReport_ResultCode._(101, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILURE');
  static const TimeAndSalesReport_ResultCode ACCESS_DENIED = TimeAndSalesReport_ResultCode._(103, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACCESS_DENIED');
  static const TimeAndSalesReport_ResultCode NOT_FOUND = TimeAndSalesReport_ResultCode._(104, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NOT_FOUND');
  static const TimeAndSalesReport_ResultCode OUTSIDE_ALLOWED_RANGE = TimeAndSalesReport_ResultCode._(105, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OUTSIDE_ALLOWED_RANGE');
  static const TimeAndSalesReport_ResultCode ACTIVE_REQUESTS_LIMIT_VIOLATION = TimeAndSalesReport_ResultCode._(106, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTIVE_REQUESTS_LIMIT_VIOLATION');
  static const TimeAndSalesReport_ResultCode REQUEST_RATE_LIMIT_VIOLATION = TimeAndSalesReport_ResultCode._(107, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REQUEST_RATE_LIMIT_VIOLATION');
  static const TimeAndSalesReport_ResultCode NOT_SUPPORTED = TimeAndSalesReport_ResultCode._(110, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NOT_SUPPORTED');

  static const $core.List<TimeAndSalesReport_ResultCode> values = <TimeAndSalesReport_ResultCode> [
    SUCCESS,
    DROPPED,
    DISCONNECTED,
    FAILURE,
    ACCESS_DENIED,
    NOT_FOUND,
    OUTSIDE_ALLOWED_RANGE,
    ACTIVE_REQUESTS_LIMIT_VIOLATION,
    REQUEST_RATE_LIMIT_VIOLATION,
    NOT_SUPPORTED,
  ];

  static final $core.Map<$core.int, TimeAndSalesReport_ResultCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TimeAndSalesReport_ResultCode valueOf($core.int value) => _byValue[value];

  const TimeAndSalesReport_ResultCode._($core.int v, $core.String n) : super(v, n);
}

class ContinuationParameters_ContinuationType extends $pb.ProtobufEnum {
  static const ContinuationParameters_ContinuationType ACTIVE = ContinuationParameters_ContinuationType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTIVE');
  static const ContinuationParameters_ContinuationType STANDARD = ContinuationParameters_ContinuationType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STANDARD');

  static const $core.List<ContinuationParameters_ContinuationType> values = <ContinuationParameters_ContinuationType> [
    ACTIVE,
    STANDARD,
  ];

  static final $core.Map<$core.int, ContinuationParameters_ContinuationType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ContinuationParameters_ContinuationType valueOf($core.int value) => _byValue[value];

  const ContinuationParameters_ContinuationType._($core.int v, $core.String n) : super(v, n);
}

class BarBuildingTick_Type extends $pb.ProtobufEnum {
  static const BarBuildingTick_Type BID = BarBuildingTick_Type._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BID');
  static const BarBuildingTick_Type ASK = BarBuildingTick_Type._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ASK');
  static const BarBuildingTick_Type TRADE = BarBuildingTick_Type._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TRADE');
  static const BarBuildingTick_Type SETTLEMENT = BarBuildingTick_Type._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SETTLEMENT');

  static const $core.List<BarBuildingTick_Type> values = <BarBuildingTick_Type> [
    BID,
    ASK,
    TRADE,
    SETTLEMENT,
  ];

  static final $core.Map<$core.int, BarBuildingTick_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BarBuildingTick_Type valueOf($core.int value) => _byValue[value];

  const BarBuildingTick_Type._($core.int v, $core.String n) : super(v, n);
}

class TimeBarParameters_BarUnit extends $pb.ProtobufEnum {
  static const TimeBarParameters_BarUnit YEAR = TimeBarParameters_BarUnit._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'YEAR');
  static const TimeBarParameters_BarUnit SEMI_ANNUAL = TimeBarParameters_BarUnit._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SEMI_ANNUAL');
  static const TimeBarParameters_BarUnit QUARTER = TimeBarParameters_BarUnit._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'QUARTER');
  static const TimeBarParameters_BarUnit MONTH = TimeBarParameters_BarUnit._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MONTH');
  static const TimeBarParameters_BarUnit WEEK = TimeBarParameters_BarUnit._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WEEK');
  static const TimeBarParameters_BarUnit DAY = TimeBarParameters_BarUnit._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DAY');
  static const TimeBarParameters_BarUnit HOUR = TimeBarParameters_BarUnit._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HOUR');
  static const TimeBarParameters_BarUnit MIN = TimeBarParameters_BarUnit._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MIN');

  static const $core.List<TimeBarParameters_BarUnit> values = <TimeBarParameters_BarUnit> [
    YEAR,
    SEMI_ANNUAL,
    QUARTER,
    MONTH,
    WEEK,
    DAY,
    HOUR,
    MIN,
  ];

  static final $core.Map<$core.int, TimeBarParameters_BarUnit> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TimeBarParameters_BarUnit valueOf($core.int value) => _byValue[value];

  const TimeBarParameters_BarUnit._($core.int v, $core.String n) : super(v, n);
}

class TimeBarRequest_RequestType extends $pb.ProtobufEnum {
  static const TimeBarRequest_RequestType GET = TimeBarRequest_RequestType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GET');
  static const TimeBarRequest_RequestType SUBSCRIBE = TimeBarRequest_RequestType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUBSCRIBE');
  static const TimeBarRequest_RequestType DROP = TimeBarRequest_RequestType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DROP');

  static const $core.List<TimeBarRequest_RequestType> values = <TimeBarRequest_RequestType> [
    GET,
    SUBSCRIBE,
    DROP,
  ];

  static final $core.Map<$core.int, TimeBarRequest_RequestType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TimeBarRequest_RequestType valueOf($core.int value) => _byValue[value];

  const TimeBarRequest_RequestType._($core.int v, $core.String n) : super(v, n);
}

class BarReportStatus_Code extends $pb.ProtobufEnum {
  static const BarReportStatus_Code SUCCESS = BarReportStatus_Code._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const BarReportStatus_Code SUBSCRIBED = BarReportStatus_Code._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUBSCRIBED');
  static const BarReportStatus_Code DROPPED = BarReportStatus_Code._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DROPPED');
  static const BarReportStatus_Code UPDATE = BarReportStatus_Code._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UPDATE');
  static const BarReportStatus_Code DISCONNECTED = BarReportStatus_Code._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DISCONNECTED');
  static const BarReportStatus_Code INVALIDATED = BarReportStatus_Code._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INVALIDATED');
  static const BarReportStatus_Code FAILURE = BarReportStatus_Code._(101, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILURE');
  static const BarReportStatus_Code ACCESS_DENIED = BarReportStatus_Code._(103, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACCESS_DENIED');
  static const BarReportStatus_Code NOT_FOUND = BarReportStatus_Code._(104, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NOT_FOUND');
  static const BarReportStatus_Code OUTSIDE_ALLOWED_RANGE = BarReportStatus_Code._(105, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OUTSIDE_ALLOWED_RANGE');
  static const BarReportStatus_Code INVALID_PARAMS = BarReportStatus_Code._(106, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INVALID_PARAMS');
  static const BarReportStatus_Code ACTIVE_REQUESTS_LIMIT_VIOLATION = BarReportStatus_Code._(107, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTIVE_REQUESTS_LIMIT_VIOLATION');
  static const BarReportStatus_Code SUBSCRIPTION_LIMIT_VIOLATION = BarReportStatus_Code._(108, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUBSCRIPTION_LIMIT_VIOLATION');
  static const BarReportStatus_Code REQUEST_RATE_LIMIT_VIOLATION = BarReportStatus_Code._(109, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REQUEST_RATE_LIMIT_VIOLATION');
  static const BarReportStatus_Code NOT_SUPPORTED = BarReportStatus_Code._(110, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NOT_SUPPORTED');

  static const $core.List<BarReportStatus_Code> values = <BarReportStatus_Code> [
    SUCCESS,
    SUBSCRIBED,
    DROPPED,
    UPDATE,
    DISCONNECTED,
    INVALIDATED,
    FAILURE,
    ACCESS_DENIED,
    NOT_FOUND,
    OUTSIDE_ALLOWED_RANGE,
    INVALID_PARAMS,
    ACTIVE_REQUESTS_LIMIT_VIOLATION,
    SUBSCRIPTION_LIMIT_VIOLATION,
    REQUEST_RATE_LIMIT_VIOLATION,
    NOT_SUPPORTED,
  ];

  static final $core.Map<$core.int, BarReportStatus_Code> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BarReportStatus_Code valueOf($core.int value) => _byValue[value];

  const BarReportStatus_Code._($core.int v, $core.String n) : super(v, n);
}

class VolumeProfileRequest_RequestType extends $pb.ProtobufEnum {
  static const VolumeProfileRequest_RequestType GET = VolumeProfileRequest_RequestType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GET');
  static const VolumeProfileRequest_RequestType DROP = VolumeProfileRequest_RequestType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DROP');

  static const $core.List<VolumeProfileRequest_RequestType> values = <VolumeProfileRequest_RequestType> [
    GET,
    DROP,
  ];

  static final $core.Map<$core.int, VolumeProfileRequest_RequestType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static VolumeProfileRequest_RequestType valueOf($core.int value) => _byValue[value];

  const VolumeProfileRequest_RequestType._($core.int v, $core.String n) : super(v, n);
}

class VolumeProfileReport_ResultCode extends $pb.ProtobufEnum {
  static const VolumeProfileReport_ResultCode SUCCESS = VolumeProfileReport_ResultCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const VolumeProfileReport_ResultCode DROPPED = VolumeProfileReport_ResultCode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DROPPED');
  static const VolumeProfileReport_ResultCode DISCONNECTED = VolumeProfileReport_ResultCode._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DISCONNECTED');
  static const VolumeProfileReport_ResultCode FAILURE = VolumeProfileReport_ResultCode._(101, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILURE');
  static const VolumeProfileReport_ResultCode ACCESS_DENIED = VolumeProfileReport_ResultCode._(103, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACCESS_DENIED');
  static const VolumeProfileReport_ResultCode NOT_FOUND = VolumeProfileReport_ResultCode._(104, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NOT_FOUND');
  static const VolumeProfileReport_ResultCode OUTSIDE_ALLOWED_RANGE = VolumeProfileReport_ResultCode._(105, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OUTSIDE_ALLOWED_RANGE');
  static const VolumeProfileReport_ResultCode ACTIVE_REQUESTS_LIMIT_VIOLATION = VolumeProfileReport_ResultCode._(106, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTIVE_REQUESTS_LIMIT_VIOLATION');
  static const VolumeProfileReport_ResultCode NOT_SUPPORTED = VolumeProfileReport_ResultCode._(110, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NOT_SUPPORTED');

  static const $core.List<VolumeProfileReport_ResultCode> values = <VolumeProfileReport_ResultCode> [
    SUCCESS,
    DROPPED,
    DISCONNECTED,
    FAILURE,
    ACCESS_DENIED,
    NOT_FOUND,
    OUTSIDE_ALLOWED_RANGE,
    ACTIVE_REQUESTS_LIMIT_VIOLATION,
    NOT_SUPPORTED,
  ];

  static final $core.Map<$core.int, VolumeProfileReport_ResultCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static VolumeProfileReport_ResultCode valueOf($core.int value) => _byValue[value];

  const VolumeProfileReport_ResultCode._($core.int v, $core.String n) : super(v, n);
}

class NonTimedBarRequest_RequestType extends $pb.ProtobufEnum {
  static const NonTimedBarRequest_RequestType GET = NonTimedBarRequest_RequestType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GET');
  static const NonTimedBarRequest_RequestType SUBSCRIBE = NonTimedBarRequest_RequestType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUBSCRIBE');
  static const NonTimedBarRequest_RequestType DROP = NonTimedBarRequest_RequestType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DROP');

  static const $core.List<NonTimedBarRequest_RequestType> values = <NonTimedBarRequest_RequestType> [
    GET,
    SUBSCRIBE,
    DROP,
  ];

  static final $core.Map<$core.int, NonTimedBarRequest_RequestType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static NonTimedBarRequest_RequestType valueOf($core.int value) => _byValue[value];

  const NonTimedBarRequest_RequestType._($core.int v, $core.String n) : super(v, n);
}

