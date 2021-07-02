///
//  Generated code. Do not modify.
//  source: WebAPI/webapi_1.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const ProtocolVersionMajor$json = const {
  '1': 'ProtocolVersionMajor',
  '2': const [
    const {'1': 'PROTOCOL_VERSION_MAJOR', '2': 1},
  ],
};

const ProtocolVersionMinor$json = const {
  '1': 'ProtocolVersionMinor',
  '2': const [
    const {'1': 'PROTOCOL_VERSION_MINOR', '2': 155},
  ],
};

const PositionTrackingType$json = const {
  '1': 'PositionTrackingType',
  '2': const [
    const {'1': 'NET_POSITION', '2': 1},
    const {'1': 'LONG_SHORT_WITH_IMPLIED_CLOSE', '2': 2},
    const {'1': 'LONG_SHORT_WITH_EXPLICIT_CLOSE', '2': 3},
  ],
};

const PriceDisplayMode$json = const {
  '1': 'PriceDisplayMode',
  '2': const [
    const {'1': 'NUMERATOR', '2': 0},
    const {'1': 'ROUNDED', '2': 1},
    const {'1': 'TRUNCATED', '2': 2},
  ],
};

const PeriodType$json = const {
  '1': 'PeriodType',
  '2': const [
    const {'1': 'MONTH', '2': 0},
    const {'1': 'QUARTER', '2': 1},
    const {'1': 'SEMI_ANNUAL', '2': 2},
    const {'1': 'YEAR', '2': 3},
    const {'1': 'DAY_OF_WEEK', '2': 4},
    const {'1': 'DAY_OF_MONTH', '2': 5},
    const {'1': 'DAY_OF_YEAR', '2': 6},
    const {'1': 'WEEK_OF_MONTH', '2': 7},
    const {'1': 'WEEK_OF_YEAR', '2': 8},
    const {'1': 'SECOND', '2': 9},
    const {'1': 'MINUTE', '2': 10},
    const {'1': 'HOUR', '2': 11},
    const {'1': 'DATE', '2': 12},
  ],
};

const DayOfWeek$json = const {
  '1': 'DayOfWeek',
  '2': const [
    const {'1': 'Sunday', '2': 0},
    const {'1': 'Monday', '2': 1},
    const {'1': 'Tuesday', '2': 2},
    const {'1': 'Wednesday', '2': 3},
    const {'1': 'Thursday', '2': 4},
    const {'1': 'Friday', '2': 5},
    const {'1': 'Saturday', '2': 6},
  ],
};

const MiFIDAlgorithmIdType$json = const {
  '1': 'MiFIDAlgorithmIdType',
  '2': const [
    const {'1': 'EXTERNAL_MIFID_ALGO_ID', '2': 1},
    const {'1': 'CQG_MIFID_ALGO_ID', '2': 2},
  ],
};

const MiFIDInvestmentDecisionIdType$json = const {
  '1': 'MiFIDInvestmentDecisionIdType',
  '2': const [
    const {'1': 'EXTERNAL_TRADER_ID', '2': 1},
    const {'1': 'EXTERNAL_ALGO_ID', '2': 2},
    const {'1': 'CQG_ALGO_ID', '2': 3},
  ],
};

const SpeculationType$json = const {
  '1': 'SpeculationType',
  '2': const [
    const {'1': 'SPECULATION', '2': 1},
    const {'1': 'ARBITRAGE', '2': 2},
    const {'1': 'HEDGE', '2': 3},
  ],
};

const ClientMsg$json = const {
  '1': 'ClientMsg',
  '2': const [
    const {'1': 'logon', '3': 100, '4': 1, '5': 11, '6': '.WebAPI_1.Logon', '10': 'logon'},
    const {'1': 'restore_or_join_session', '3': 101, '4': 1, '5': 11, '6': '.WebAPI_1.RestoreOrJoinSession', '10': 'restoreOrJoinSession'},
    const {'1': 'logoff', '3': 102, '4': 1, '5': 11, '6': '.WebAPI_1.Logoff', '10': 'logoff'},
    const {'1': 'password_change', '3': 103, '4': 1, '5': 11, '6': '.WebAPI_1.PasswordChange', '10': 'passwordChange'},
    const {'1': 'obtain_demo_credentials', '3': 104, '4': 1, '5': 11, '6': '.WebAPI_1.ObtainDemoCredentials', '10': 'obtainDemoCredentials'},
    const {'1': 'user_session_state_request', '3': 105, '4': 1, '5': 11, '6': '.WebAPI_1.UserSessionStateRequest', '10': 'userSessionStateRequest'},
    const {'1': 'ping', '3': 107, '4': 1, '5': 11, '6': '.WebAPI_1.Ping', '10': 'ping'},
    const {'1': 'pong', '3': 108, '4': 1, '5': 11, '6': '.WebAPI_1.Pong', '10': 'pong'},
    const {'1': 'logon_routine_client', '3': 109, '4': 1, '5': 11, '6': '.WebAPI_1.LogonRoutineClient', '10': 'logonRoutineClient'},
    const {'1': 'password_change_routine_client', '3': 110, '4': 1, '5': 11, '6': '.WebAPI_1.PasswordChangeRoutineClient', '10': 'passwordChangeRoutineClient'},
    const {'1': 'set_collapsing_level_request', '3': 111, '4': 1, '5': 11, '6': '.WebAPI_1.SetCollapsingLevelRequest', '10': 'setCollapsingLevelRequest'},
    const {'1': 'information_request', '3': 1, '4': 3, '5': 11, '6': '.WebAPI_1.InformationRequest', '10': 'informationRequest'},
    const {'1': 'trade_subscription', '3': 2, '4': 3, '5': 11, '6': '.WebAPI_1.TradeSubscription', '10': 'tradeSubscription'},
    const {'1': 'order_request', '3': 3, '4': 3, '5': 11, '6': '.WebAPI_1.OrderRequest', '10': 'orderRequest'},
    const {'1': 'market_data_subscription', '3': 4, '4': 3, '5': 11, '6': '.WebAPI_1.MarketDataSubscription', '10': 'marketDataSubscription'},
    const {'1': 'read_user_attribute_request', '3': 5, '4': 3, '5': 11, '6': '.WebAPI_1.ReadUserAttributeRequest', '10': 'readUserAttributeRequest'},
    const {'1': 'modify_user_attribute_request', '3': 6, '4': 3, '5': 11, '6': '.WebAPI_1.ModifyUserAttributeRequest', '10': 'modifyUserAttributeRequest'},
    const {'1': 'time_and_sales_request', '3': 7, '4': 3, '5': 11, '6': '.WebAPI_1.TimeAndSalesRequest', '10': 'timeAndSalesRequest'},
    const {'1': 'time_bar_request', '3': 8, '4': 3, '5': 11, '6': '.WebAPI_1.TimeBarRequest', '10': 'timeBarRequest'},
    const {'1': 'volume_profile_request', '3': 9, '4': 3, '5': 11, '6': '.WebAPI_1.VolumeProfileRequest', '10': 'volumeProfileRequest'},
    const {'1': 'non_timed_bar_request', '3': 14, '4': 3, '5': 11, '6': '.WebAPI_1.NonTimedBarRequest', '10': 'nonTimedBarRequest'},
    const {'1': 'rule_request', '3': 10, '4': 3, '5': 11, '6': '.rules_1.RuleRequest', '10': 'ruleRequest'},
    const {'1': 'account_logon', '3': 11, '4': 3, '5': 11, '6': '.WebAPI_1.AccountLogon', '10': 'accountLogon'},
    const {'1': 'account_password_change', '3': 12, '4': 3, '5': 11, '6': '.WebAPI_1.AccountPasswordChange', '10': 'accountPasswordChange'},
    const {'1': 'account_logoff', '3': 13, '4': 3, '5': 11, '6': '.WebAPI_1.AccountLogoff', '10': 'accountLogoff'},
    const {'1': 'metadata_admin_request', '3': 15, '4': 3, '5': 11, '6': '.metadata_1.MetadataAdminRequest', '10': 'metadataAdminRequest'},
    const {'1': 'otc_request', '3': 16, '4': 3, '5': 11, '6': '.otc_1.OtcRequest', '10': 'otcRequest'},
  ],
};

const ServerMsg$json = const {
  '1': 'ServerMsg',
  '2': const [
    const {'1': 'logon_result', '3': 100, '4': 1, '5': 11, '6': '.WebAPI_1.LogonResult', '10': 'logonResult'},
    const {'1': 'restore_or_join_session_result', '3': 101, '4': 1, '5': 11, '6': '.WebAPI_1.RestoreOrJoinSessionResult', '10': 'restoreOrJoinSessionResult'},
    const {'1': 'concurrent_connection_join', '3': 111, '4': 3, '5': 11, '6': '.WebAPI_1.ConcurrentConnectionJoin', '10': 'concurrentConnectionJoin'},
    const {'1': 'logged_off', '3': 102, '4': 1, '5': 11, '6': '.WebAPI_1.LoggedOff', '10': 'loggedOff'},
    const {'1': 'password_change_result', '3': 103, '4': 1, '5': 11, '6': '.WebAPI_1.PasswordChangeResult', '10': 'passwordChangeResult'},
    const {'1': 'user_message', '3': 104, '4': 3, '5': 11, '6': '.WebAPI_1.UserMessage', '10': 'userMessage'},
    const {'1': 'obtain_demo_credentials_result', '3': 105, '4': 3, '5': 11, '6': '.WebAPI_1.ObtainDemoCredentialsResult', '10': 'obtainDemoCredentialsResult'},
    const {'1': 'user_session_state_result', '3': 106, '4': 3, '5': 11, '6': '.WebAPI_1.UserSessionStateResult', '10': 'userSessionStateResult'},
    const {'1': 'ping', '3': 107, '4': 1, '5': 11, '6': '.WebAPI_1.Ping', '10': 'ping'},
    const {'1': 'pong', '3': 108, '4': 1, '5': 11, '6': '.WebAPI_1.Pong', '10': 'pong'},
    const {'1': 'logon_routine_server', '3': 109, '4': 1, '5': 11, '6': '.WebAPI_1.LogonRoutineServer', '10': 'logonRoutineServer'},
    const {'1': 'password_change_routine_server', '3': 110, '4': 1, '5': 11, '6': '.WebAPI_1.PasswordChangeRoutineServer', '10': 'passwordChangeRoutineServer'},
    const {'1': 'set_collapsing_level_result', '3': 112, '4': 3, '5': 11, '6': '.WebAPI_1.SetCollapsingLevelResult', '10': 'setCollapsingLevelResult'},
    const {'1': 'information_report', '3': 1, '4': 3, '5': 11, '6': '.WebAPI_1.InformationReport', '10': 'informationReport'},
    const {'1': 'order_request_reject', '3': 2, '4': 3, '5': 11, '6': '.WebAPI_1.OrderRequestReject', '10': 'orderRequestReject'},
    const {'1': 'trade_subscription_status', '3': 3, '4': 3, '5': 11, '6': '.WebAPI_1.TradeSubscriptionStatus', '10': 'tradeSubscriptionStatus'},
    const {'1': 'trade_snapshot_completion', '3': 4, '4': 3, '5': 11, '6': '.WebAPI_1.TradeSnapshotCompletion', '10': 'tradeSnapshotCompletion'},
    const {'1': 'order_status', '3': 5, '4': 3, '5': 11, '6': '.WebAPI_1.OrderStatus', '10': 'orderStatus'},
    const {'1': 'position_status', '3': 6, '4': 3, '5': 11, '6': '.WebAPI_1.PositionStatus', '10': 'positionStatus'},
    const {'1': 'collateral_status', '3': 7, '4': 3, '5': 11, '6': '.WebAPI_1.CollateralStatus', '10': 'collateralStatus'},
    const {'1': 'market_data_subscription_status', '3': 8, '4': 3, '5': 11, '6': '.WebAPI_1.MarketDataSubscriptionStatus', '10': 'marketDataSubscriptionStatus'},
    const {'1': 'real_time_market_data', '3': 9, '4': 3, '5': 11, '6': '.WebAPI_1.RealTimeMarketData', '10': 'realTimeMarketData'},
    const {'1': 'read_user_attribute_result', '3': 10, '4': 3, '5': 11, '6': '.WebAPI_1.ReadUserAttributeResult', '10': 'readUserAttributeResult'},
    const {'1': 'modify_user_attribute_result', '3': 11, '4': 3, '5': 11, '6': '.WebAPI_1.ModifyUserAttributeResult', '10': 'modifyUserAttributeResult'},
    const {'1': 'time_and_sales_report', '3': 12, '4': 3, '5': 11, '6': '.WebAPI_1.TimeAndSalesReport', '10': 'timeAndSalesReport'},
    const {'1': 'time_bar_report', '3': 13, '4': 3, '5': 11, '6': '.WebAPI_1.TimeBarReport', '10': 'timeBarReport'},
    const {'1': 'volume_profile_report', '3': 14, '4': 3, '5': 11, '6': '.WebAPI_1.VolumeProfileReport', '10': 'volumeProfileReport'},
    const {'1': 'non_timed_bar_report', '3': 19, '4': 3, '5': 11, '6': '.WebAPI_1.NonTimedBarReport', '10': 'nonTimedBarReport'},
    const {'1': 'rule_result', '3': 15, '4': 3, '5': 11, '6': '.rules_1.RuleResult', '10': 'ruleResult'},
    const {'1': 'account_logon_result', '3': 16, '4': 3, '5': 11, '6': '.WebAPI_1.AccountLogonResult', '10': 'accountLogonResult'},
    const {'1': 'account_password_change_result', '3': 17, '4': 3, '5': 11, '6': '.WebAPI_1.AccountPasswordChangeResult', '10': 'accountPasswordChangeResult'},
    const {'1': 'account_logoff_result', '3': 18, '4': 3, '5': 11, '6': '.WebAPI_1.AccountLogoffResult', '10': 'accountLogoffResult'},
    const {'1': 'metadata_admin_result', '3': 20, '4': 3, '5': 11, '6': '.metadata_1.MetadataAdminResult', '10': 'metadataAdminResult'},
    const {'1': 'otc_report', '3': 21, '4': 3, '5': 11, '6': '.otc_1.OtcReport', '10': 'otcReport'},
  ],
};

const RealTimeCollapsing$json = const {
  '1': 'RealTimeCollapsing',
  '4': const [RealTimeCollapsing_Level$json],
};

const RealTimeCollapsing_Level$json = const {
  '1': 'Level',
  '2': const [
    const {'1': 'NONE', '2': 0},
    const {'1': 'DOM', '2': 1},
    const {'1': 'DOM_BBA', '2': 2},
    const {'1': 'DOM_BBA_TRADES', '2': 3},
  ],
};

const Logon$json = const {
  '1': 'Logon',
  '2': const [
    const {'1': 'user_name', '3': 1, '4': 1, '5': 9, '10': 'userName'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'access_token', '3': 14, '4': 1, '5': 9, '10': 'accessToken'},
    const {'1': 'partner_token', '3': 19, '4': 1, '5': 9, '10': 'partnerToken'},
    const {'1': 'one_time_password', '3': 3, '4': 1, '5': 9, '10': 'oneTimePassword'},
    const {'1': 'private_label', '3': 4, '4': 1, '5': 9, '10': 'privateLabel'},
    const {'1': 'client_app_id', '3': 5, '4': 2, '5': 9, '10': 'clientAppId'},
    const {'1': 'client_version', '3': 6, '4': 2, '5': 9, '10': 'clientVersion'},
    const {'1': 'drop_concurrent_session', '3': 7, '4': 1, '5': 8, '10': 'dropConcurrentSession'},
    const {'1': 'max_collapsing_level', '3': 8, '4': 1, '5': 13, '10': 'maxCollapsingLevel'},
    const {'1': 'protocol_version_minor', '3': 9, '4': 1, '5': 13, '10': 'protocolVersionMinor'},
    const {'1': 'protocol_version_major', '3': 10, '4': 1, '5': 13, '10': 'protocolVersionMajor'},
    const {'1': 'session_settings', '3': 11, '4': 3, '5': 13, '10': 'sessionSettings'},
    const {'1': 'bandwidth', '3': 12, '4': 1, '5': 13, '10': 'bandwidth'},
    const {'1': 'dialect_id', '3': 13, '4': 1, '5': 9, '10': 'dialectId'},
    const {'1': 'fingerprint', '3': 15, '4': 1, '5': 9, '10': 'fingerprint'},
    const {'1': 'operating_system', '3': 16, '4': 1, '5': 9, '10': 'operatingSystem'},
    const {'1': 'browser', '3': 17, '4': 1, '5': 9, '10': 'browser'},
    const {'1': 'device_model', '3': 18, '4': 1, '5': 9, '10': 'deviceModel'},
  ],
  '4': const [Logon_SessionSetting$json],
};

const Logon_SessionSetting$json = const {
  '1': 'SessionSetting',
  '2': const [
    const {'1': 'ALLOW_SESSION_RESTORE', '2': 1},
    const {'1': 'ALLOW_SESSION_JOIN', '2': 2},
  ],
};

const LogonResult$json = const {
  '1': 'LogonResult',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 2, '5': 13, '10': 'resultCode'},
    const {'1': 'base_time', '3': 2, '4': 2, '5': 9, '10': 'baseTime'},
    const {'1': 'session_token', '3': 3, '4': 1, '5': 9, '10': 'sessionToken'},
    const {'1': 'text_message', '3': 4, '4': 1, '5': 9, '10': 'textMessage'},
    const {'1': 'redirect_url', '3': 5, '4': 1, '5': 9, '10': 'redirectUrl'},
    const {'1': 'protocol_version_minor', '3': 6, '4': 2, '5': 13, '10': 'protocolVersionMinor'},
    const {'1': 'protocol_version_major', '3': 7, '4': 2, '5': 13, '10': 'protocolVersionMajor'},
    const {'1': 'user_id', '3': 8, '4': 1, '5': 17, '10': 'userId'},
    const {'1': 'server_time', '3': 9, '4': 2, '5': 18, '10': 'serverTime'},
    const {'1': 'inactivity_timeout', '3': 10, '4': 1, '5': 13, '10': 'inactivityTimeout'},
  ],
  '4': const [LogonResult_ResultCode$json],
};

const LogonResult_ResultCode$json = const {
  '1': 'ResultCode',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'FAILURE', '2': 101},
    const {'1': 'NO_ONETIME_PASSWORD', '2': 103},
    const {'1': 'PASSWORD_EXPIRED', '2': 104},
    const {'1': 'CONCURRENT_SESSION', '2': 105},
    const {'1': 'REDIRECTED', '2': 106},
    const {'1': 'ROUTINE_ERROR', '2': 107},
    const {'1': 'ACCESS_TOKEN_EXPIRED', '2': 108},
  ],
};

const LogonRoutineClient$json = const {
  '1': 'LogonRoutineClient',
  '2': const [
    const {'1': 'logon_init', '3': 1, '4': 1, '5': 11, '6': '.WebAPI_1.LogonInit', '10': 'logonInit'},
    const {'1': 'password_response', '3': 2, '4': 3, '5': 11, '6': '.WebAPI_1.PasswordResponse', '10': 'passwordResponse'},
    const {'1': 'trader_agreement_accepted', '3': 3, '4': 1, '5': 8, '10': 'traderAgreementAccepted'},
    const {'1': 'abort_logon', '3': 4, '4': 1, '5': 11, '6': '.WebAPI_1.AbortRoutine', '10': 'abortLogon'},
  ],
};

const LogonRoutineServer$json = const {
  '1': 'LogonRoutineServer',
  '2': const [
    const {'1': 'logon_result', '3': 1, '4': 1, '5': 11, '6': '.WebAPI_1.LogonResult', '10': 'logonResult'},
    const {'1': 'password_request', '3': 2, '4': 3, '5': 11, '6': '.WebAPI_1.PasswordRequest', '10': 'passwordRequest'},
    const {'1': 'trader_agreement_url', '3': 3, '4': 1, '5': 9, '10': 'traderAgreementUrl'},
  ],
};

const PasswordChangeRoutineClient$json = const {
  '1': 'PasswordChangeRoutineClient',
  '2': const [
    const {'1': 'init_password_change', '3': 1, '4': 1, '5': 8, '10': 'initPasswordChange'},
    const {'1': 'password_response', '3': 2, '4': 3, '5': 11, '6': '.WebAPI_1.PasswordResponse', '10': 'passwordResponse'},
    const {'1': 'abort_password_change', '3': 3, '4': 1, '5': 11, '6': '.WebAPI_1.AbortRoutine', '10': 'abortPasswordChange'},
  ],
};

const PasswordChangeRoutineServer$json = const {
  '1': 'PasswordChangeRoutineServer',
  '2': const [
    const {'1': 'password_request', '3': 1, '4': 3, '5': 11, '6': '.WebAPI_1.PasswordRequest', '10': 'passwordRequest'},
    const {'1': 'password_change_result', '3': 2, '4': 1, '5': 11, '6': '.WebAPI_1.PasswordChangeResult', '10': 'passwordChangeResult'},
  ],
};

const SetCollapsingLevelRequest$json = const {
  '1': 'SetCollapsingLevelRequest',
  '2': const [
    const {'1': 'max_collapsing_level', '3': 1, '4': 1, '5': 13, '10': 'maxCollapsingLevel'},
  ],
};

const SetCollapsingLevelResult$json = const {
  '1': 'SetCollapsingLevelResult',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 2, '5': 13, '10': 'resultCode'},
    const {'1': 'text_message', '3': 2, '4': 1, '5': 11, '6': '.shared_1.Text', '10': 'textMessage'},
    const {'1': 'max_collapsing_level', '3': 3, '4': 1, '5': 13, '10': 'maxCollapsingLevel'},
  ],
  '4': const [SetCollapsingLevelResult_ResultCode$json],
};

const SetCollapsingLevelResult_ResultCode$json = const {
  '1': 'ResultCode',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'FAILURE', '2': 101},
    const {'1': 'BANDWIDTH_IS_SET', '2': 102},
  ],
};

const AbortRoutine$json = const {
  '1': 'AbortRoutine',
  '2': const [
    const {'1': 'comment', '3': 1, '4': 1, '5': 9, '10': 'comment'},
  ],
};

const LogonInit$json = const {
  '1': 'LogonInit',
  '2': const [
    const {'1': 'user_name', '3': 1, '4': 2, '5': 9, '10': 'userName'},
    const {'1': 'private_label', '3': 2, '4': 1, '5': 9, '10': 'privateLabel'},
    const {'1': 'client_app_id', '3': 3, '4': 2, '5': 9, '10': 'clientAppId'},
    const {'1': 'client_version', '3': 4, '4': 2, '5': 9, '10': 'clientVersion'},
    const {'1': 'drop_concurrent_session', '3': 5, '4': 1, '5': 8, '10': 'dropConcurrentSession'},
    const {'1': 'max_collapsing_level', '3': 6, '4': 1, '5': 13, '10': 'maxCollapsingLevel'},
    const {'1': 'protocol_version_minor', '3': 7, '4': 1, '5': 13, '10': 'protocolVersionMinor'},
    const {'1': 'protocol_version_major', '3': 8, '4': 1, '5': 13, '10': 'protocolVersionMajor'},
    const {'1': 'session_settings', '3': 9, '4': 3, '5': 13, '10': 'sessionSettings'},
    const {'1': 'bandwidth', '3': 10, '4': 1, '5': 13, '10': 'bandwidth'},
    const {'1': 'dialect_id', '3': 11, '4': 1, '5': 9, '10': 'dialectId'},
    const {'1': 'fingerprint', '3': 12, '4': 1, '5': 9, '10': 'fingerprint'},
    const {'1': 'operating_system', '3': 13, '4': 1, '5': 9, '10': 'operatingSystem'},
    const {'1': 'browser', '3': 14, '4': 1, '5': 9, '10': 'browser'},
    const {'1': 'device_model', '3': 15, '4': 1, '5': 9, '10': 'deviceModel'},
  ],
};

const PasswordRequest$json = const {
  '1': 'PasswordRequest',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 13, '10': 'requestId'},
    const {'1': 'password_type', '3': 2, '4': 2, '5': 13, '10': 'passwordType'},
    const {'1': 'user_prompt_type', '3': 3, '4': 1, '5': 9, '10': 'userPromptType'},
    const {'1': 'user_prompt_type_alt', '3': 4, '4': 1, '5': 9, '10': 'userPromptTypeAlt'},
    const {'1': 'user_prompt', '3': 5, '4': 1, '5': 9, '10': 'userPrompt'},
    const {'1': 'encoding', '3': 6, '4': 3, '5': 11, '6': '.WebAPI_1.Encoding', '10': 'encoding'},
  ],
  '4': const [PasswordRequest_PasswordType$json],
};

const PasswordRequest_PasswordType$json = const {
  '1': 'PasswordType',
  '2': const [
    const {'1': 'STATIC', '2': 1},
    const {'1': 'ONE_TIME', '2': 2},
    const {'1': 'NEW_STATIC', '2': 3},
    const {'1': 'CUR_AND_NEW_STATIC', '2': 4},
    const {'1': 'TEXT', '2': 5},
  ],
};

const PasswordResponse$json = const {
  '1': 'PasswordResponse',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 13, '10': 'requestId'},
    const {'1': 'encoding_type', '3': 2, '4': 2, '5': 9, '10': 'encodingType'},
    const {'1': 'password', '3': 3, '4': 2, '5': 9, '10': 'password'},
  ],
};

const Encoding$json = const {
  '1': 'Encoding',
  '2': const [
    const {'1': 'encoding_type', '3': 1, '4': 2, '5': 9, '10': 'encodingType'},
    const {'1': 'priority_rank', '3': 2, '4': 2, '5': 13, '10': 'priorityRank'},
    const {'1': 'encoding_parameter', '3': 3, '4': 3, '5': 11, '6': '.WebAPI_1.EncodingParameter', '10': 'encodingParameter'},
  ],
};

const EncodingParameter$json = const {
  '1': 'EncodingParameter',
  '2': const [
    const {'1': 'name', '3': 1, '4': 2, '5': 9, '10': 'name'},
    const {'1': 'value', '3': 2, '4': 2, '5': 9, '10': 'value'},
  ],
};

const RestoreOrJoinSession$json = const {
  '1': 'RestoreOrJoinSession',
  '2': const [
    const {'1': 'session_token', '3': 1, '4': 2, '5': 9, '10': 'sessionToken'},
    const {'1': 'private_label', '3': 2, '4': 1, '5': 9, '10': 'privateLabel'},
    const {'1': 'client_app_id', '3': 3, '4': 1, '5': 9, '10': 'clientAppId'},
    const {'1': 'max_collapsing_level', '3': 4, '4': 1, '5': 13, '10': 'maxCollapsingLevel'},
    const {'1': 'protocol_version_minor', '3': 5, '4': 1, '5': 13, '10': 'protocolVersionMinor'},
    const {'1': 'protocol_version_major', '3': 6, '4': 1, '5': 13, '10': 'protocolVersionMajor'},
    const {'1': 'bandwidth', '3': 7, '4': 1, '5': 13, '10': 'bandwidth'},
  ],
};

const RestoreOrJoinSessionResult$json = const {
  '1': 'RestoreOrJoinSessionResult',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 2, '5': 13, '10': 'resultCode'},
    const {'1': 'base_time', '3': 2, '4': 2, '5': 9, '10': 'baseTime'},
    const {'1': 'text_message', '3': 3, '4': 1, '5': 9, '10': 'textMessage'},
    const {'1': 'server_time', '3': 4, '4': 2, '5': 18, '10': 'serverTime'},
    const {'1': 'dialect_id', '3': 5, '4': 1, '5': 9, '10': 'dialectId'},
    const {'1': 'inactivity_timeout', '3': 6, '4': 1, '5': 13, '10': 'inactivityTimeout'},
  ],
  '4': const [RestoreOrJoinSessionResult_ResultCode$json],
};

const RestoreOrJoinSessionResult_ResultCode$json = const {
  '1': 'ResultCode',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'FAILURE', '2': 104},
    const {'1': 'UNKNOWN_SESSION', '2': 101},
    const {'1': 'ACCESS_DENIED', '2': 102},
    const {'1': 'INVALID_PARAMS', '2': 103},
  ],
};

const ConcurrentConnectionJoin$json = const {
  '1': 'ConcurrentConnectionJoin',
  '2': const [
    const {'1': 'is_same_app_type', '3': 1, '4': 2, '5': 8, '10': 'isSameAppType'},
  ],
};

const Logoff$json = const {
  '1': 'Logoff',
  '2': const [
    const {'1': 'text_message', '3': 1, '4': 1, '5': 9, '10': 'textMessage'},
  ],
};

const LoggedOff$json = const {
  '1': 'LoggedOff',
  '2': const [
    const {'1': 'logoff_reason', '3': 1, '4': 2, '5': 13, '10': 'logoffReason'},
    const {'1': 'text_message', '3': 2, '4': 1, '5': 9, '10': 'textMessage'},
    const {'1': 'redirect_url', '3': 3, '4': 1, '5': 9, '10': 'redirectUrl'},
  ],
  '4': const [LoggedOff_LogoffReason$json],
};

const LoggedOff_LogoffReason$json = const {
  '1': 'LogoffReason',
  '2': const [
    const {'1': 'BY_REQUEST', '2': 1},
    const {'1': 'REDIRECTED', '2': 2},
    const {'1': 'FORCED', '2': 3},
    const {'1': 'REASSIGNED', '2': 4},
  ],
};

const PasswordChange$json = const {
  '1': 'PasswordChange',
  '2': const [
    const {'1': 'old_password', '3': 1, '4': 2, '5': 9, '10': 'oldPassword'},
    const {'1': 'new_password', '3': 2, '4': 2, '5': 9, '10': 'newPassword'},
  ],
};

const PasswordChangeResult$json = const {
  '1': 'PasswordChangeResult',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 2, '5': 13, '10': 'resultCode'},
    const {'1': 'text_message', '3': 2, '4': 1, '5': 9, '10': 'textMessage'},
  ],
  '4': const [PasswordChangeResult_ResultCode$json],
};

const PasswordChangeResult_ResultCode$json = const {
  '1': 'ResultCode',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'FAILURE', '2': 101},
    const {'1': 'ROUTINE_ERROR', '2': 102},
  ],
};

const ObtainDemoCredentials$json = const {
  '1': 'ObtainDemoCredentials',
  '2': const [
    const {'1': 'client_app_id', '3': 1, '4': 2, '5': 9, '10': 'clientAppId'},
    const {'1': 'first_name', '3': 2, '4': 2, '5': 9, '10': 'firstName'},
    const {'1': 'second_name', '3': 3, '4': 2, '5': 9, '10': 'secondName'},
    const {'1': 'e_mail', '3': 4, '4': 2, '5': 9, '10': 'eMail'},
    const {'1': 'private_label', '3': 5, '4': 1, '5': 9, '10': 'privateLabel'},
  ],
};

const ObtainDemoCredentialsResult$json = const {
  '1': 'ObtainDemoCredentialsResult',
  '2': const [
    const {'1': 'result_code', '3': 1, '4': 2, '5': 13, '10': 'resultCode'},
    const {'1': 'user_name', '3': 2, '4': 1, '5': 9, '10': 'userName'},
    const {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'text_message', '3': 4, '4': 1, '5': 9, '10': 'textMessage'},
    const {'1': 'user_id', '3': 5, '4': 1, '5': 17, '10': 'userId'},
    const {'1': 'expiration_utc', '3': 6, '4': 1, '5': 9, '10': 'expirationUtc'},
  ],
  '4': const [ObtainDemoCredentialsResult_ResultCode$json],
};

const ObtainDemoCredentialsResult_ResultCode$json = const {
  '1': 'ResultCode',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'FAILURE', '2': 101},
  ],
};

const UserMessage$json = const {
  '1': 'UserMessage',
  '2': const [
    const {'1': 'message_type', '3': 1, '4': 2, '5': 13, '10': 'messageType'},
    const {'1': 'source', '3': 2, '4': 2, '5': 9, '10': 'source'},
    const {'1': 'subject', '3': 3, '4': 1, '5': 9, '10': 'subject'},
    const {'1': 'text', '3': 4, '4': 2, '5': 9, '10': 'text'},
    const {'1': 'expiration_utc_time', '3': 5, '4': 1, '5': 18, '10': 'expirationUtcTime'},
  ],
  '4': const [UserMessage_MessageType$json],
};

const UserMessage_MessageType$json = const {
  '1': 'MessageType',
  '2': const [
    const {'1': 'CRITICAL_ERROR', '2': 1},
    const {'1': 'WARNING', '2': 2},
    const {'1': 'INFO', '2': 3},
    const {'1': 'LOG', '2': 4},
  ],
};

const UserSessionStateRequest$json = const {
  '1': 'UserSessionStateRequest',
  '2': const [
    const {'1': 'session_token', '3': 1, '4': 2, '5': 9, '10': 'sessionToken'},
  ],
};

const UserSessionStateResult$json = const {
  '1': 'UserSessionStateResult',
  '2': const [
    const {'1': 'session_token', '3': 1, '4': 2, '5': 9, '10': 'sessionToken'},
    const {'1': 'result_code', '3': 2, '4': 2, '5': 13, '10': 'resultCode'},
    const {'1': 'user_id', '3': 3, '4': 1, '5': 17, '10': 'userId'},
    const {'1': 'username', '3': 4, '4': 1, '5': 9, '10': 'username'},
  ],
  '4': const [UserSessionStateResult_ResultCode$json],
};

const UserSessionStateResult_ResultCode$json = const {
  '1': 'ResultCode',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'FAILURE', '2': 101},
    const {'1': 'UNKNOWN_SESSION', '2': 102},
    const {'1': 'ACCESS_DENIED', '2': 103},
  ],
};

const Ping$json = const {
  '1': 'Ping',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'ping_utc_time', '3': 2, '4': 2, '5': 18, '10': 'pingUtcTime'},
  ],
};

const Pong$json = const {
  '1': 'Pong',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'ping_utc_time', '3': 2, '4': 2, '5': 18, '10': 'pingUtcTime'},
    const {'1': 'pong_utc_time', '3': 3, '4': 2, '5': 18, '10': 'pongUtcTime'},
  ],
};

const StrategyDefinition$json = const {
  '1': 'StrategyDefinition',
  '2': const [
    const {'1': 'aggregation', '3': 1, '4': 1, '5': 8, '10': 'aggregation'},
    const {'1': 'exchange_strategy', '3': 2, '4': 1, '5': 11, '6': '.WebAPI_1.ExchangeStrategy', '10': 'exchangeStrategy'},
    const {'1': 'tick_size', '3': 3, '4': 1, '5': 1, '10': 'tickSize'},
    const {'1': 'price_offset', '3': 4, '4': 1, '5': 1, '10': 'priceOffset'},
    const {'1': 'round_leg_mode', '3': 5, '4': 1, '5': 13, '10': 'roundLegMode'},
    const {'1': 'node_index', '3': 6, '4': 2, '5': 13, '10': 'nodeIndex'},
    const {'1': 'node_definition', '3': 7, '4': 3, '5': 11, '6': '.WebAPI_1.StrategyNodeDefinition', '10': 'nodeDefinition'},
    const {'1': 'user_description', '3': 8, '4': 1, '5': 9, '10': 'userDescription'},
  ],
  '4': const [StrategyDefinition_RoundLegMode$json],
};

const StrategyDefinition_RoundLegMode$json = const {
  '1': 'RoundLegMode',
  '2': const [
    const {'1': 'DOWN', '2': 1},
    const {'1': 'UP', '2': 2},
    const {'1': 'MATH', '2': 3},
  ],
};

const ExchangeStrategy$json = const {
  '1': 'ExchangeStrategy',
  '2': const [
    const {'1': 'exchange_strategy_type', '3': 1, '4': 1, '5': 9, '10': 'exchangeStrategyType'},
  ],
};

const LegDefinition$json = const {
  '1': 'LegDefinition',
  '2': const [
    const {'1': 'contract_id', '3': 1, '4': 2, '5': 13, '10': 'contractId'},
    const {'1': 'node_index', '3': 2, '4': 2, '5': 13, '10': 'nodeIndex'},
    const {'1': 'qty_ratio', '3': 3, '4': 2, '5': 1, '10': 'qtyRatio'},
    const {'1': 'price_ratio', '3': 4, '4': 1, '5': 1, '10': 'priceRatio'},
    const {'1': 'price_offset', '3': 5, '4': 1, '5': 1, '10': 'priceOffset'},
  ],
};

const NestedStrategy$json = const {
  '1': 'NestedStrategy',
  '2': const [
    const {'1': 'definition', '3': 1, '4': 2, '5': 11, '6': '.WebAPI_1.StrategyDefinition', '10': 'definition'},
    const {'1': 'qty_ratio', '3': 2, '4': 1, '5': 1, '10': 'qtyRatio'},
    const {'1': 'price_ratio', '3': 3, '4': 1, '5': 1, '10': 'priceRatio'},
  ],
};

const StrategyNodeDefinition$json = const {
  '1': 'StrategyNodeDefinition',
  '2': const [
    const {'1': 'node_operation', '3': 2, '4': 1, '5': 13, '10': 'nodeOperation'},
    const {'1': 'leg', '3': 3, '4': 1, '5': 11, '6': '.WebAPI_1.LegDefinition', '10': 'leg'},
    const {'1': 'nested_strategy', '3': 4, '4': 1, '5': 11, '6': '.WebAPI_1.NestedStrategy', '10': 'nestedStrategy'},
  ],
  '4': const [StrategyNodeDefinition_NodeOperation$json],
};

const StrategyNodeDefinition_NodeOperation$json = const {
  '1': 'NodeOperation',
  '2': const [
    const {'1': 'SUM', '2': 1},
    const {'1': 'MUL', '2': 2},
    const {'1': 'DIV', '2': 3},
  ],
};

const TickSizeByPrice$json = const {
  '1': 'TickSizeByPrice',
  '2': const [
    const {'1': 'tick_size', '3': 1, '4': 2, '5': 1, '10': 'tickSize'},
    const {'1': 'tick_value', '3': 2, '4': 2, '5': 1, '10': 'tickValue'},
    const {'1': 'minimum_price', '3': 3, '4': 2, '5': 1, '10': 'minimumPrice'},
  ],
};

const TickSizeByDateTillExpiration$json = const {
  '1': 'TickSizeByDateTillExpiration',
  '2': const [
    const {'1': 'id', '3': 1, '4': 2, '5': 13, '10': 'id'},
    const {'1': 'tick_size', '3': 2, '4': 2, '5': 1, '10': 'tickSize'},
    const {'1': 'tick_value', '3': 3, '4': 2, '5': 1, '10': 'tickValue'},
  ],
};

const ContractMetadata$json = const {
  '1': 'ContractMetadata',
  '2': const [
    const {'1': 'contract_id', '3': 1, '4': 2, '5': 13, '10': 'contractId'},
    const {'1': 'contract_symbol', '3': 2, '4': 2, '5': 9, '10': 'contractSymbol'},
    const {'1': 'correct_price_scale', '3': 3, '4': 2, '5': 1, '10': 'correctPriceScale'},
    const {'1': 'display_price_scale', '3': 4, '4': 2, '5': 13, '10': 'displayPriceScale'},
    const {'1': 'discretionary_display_price_scale', '3': 37, '4': 1, '5': 13, '10': 'discretionaryDisplayPriceScale'},
    const {'1': 'description', '3': 5, '4': 2, '5': 9, '10': 'description'},
    const {'1': 'extended_description', '3': 43, '4': 1, '5': 9, '10': 'extendedDescription'},
    const {'1': 'title', '3': 6, '4': 2, '5': 9, '10': 'title'},
    const {'1': 'tick_size', '3': 7, '4': 2, '5': 1, '10': 'tickSize'},
    const {'1': 'discretionary_tick_size', '3': 36, '4': 1, '5': 1, '10': 'discretionaryTickSize'},
    const {'1': 'currency', '3': 8, '4': 2, '5': 9, '10': 'currency'},
    const {'1': 'tick_value', '3': 9, '4': 2, '5': 1, '10': 'tickValue'},
    const {'1': 'cfi_code', '3': 10, '4': 2, '5': 9, '10': 'cfiCode'},
    const {'1': 'is_most_active', '3': 11, '4': 1, '5': 8, '10': 'isMostActive'},
    const {'1': 'last_trading_date', '3': 12, '4': 1, '5': 18, '10': 'lastTradingDate'},
    const {'1': 'first_notice_date', '3': 13, '4': 1, '5': 18, '10': 'firstNoticeDate'},
    const {'1': 'underlying_contract_symbol', '3': 14, '4': 1, '5': 9, '10': 'underlyingContractSymbol'},
    const {'1': 'margin_style', '3': 15, '4': 1, '5': 13, '10': 'marginStyle'},
    const {'1': 'instrument_group_name', '3': 16, '4': 2, '5': 9, '10': 'instrumentGroupName'},
    const {'1': 'session_info_id', '3': 17, '4': 2, '5': 17, '10': 'sessionInfoId'},
    const {'1': 'mic', '3': 18, '4': 1, '5': 9, '10': 'mic'},
    const {'1': 'mic_description', '3': 44, '4': 1, '5': 9, '10': 'micDescription'},
    const {'1': 'market_data_delay', '3': 20, '4': 1, '5': 18, '10': 'marketDataDelay'},
    const {'1': 'end_of_day_delay', '3': 59, '4': 1, '5': 18, '10': 'endOfDayDelay'},
    const {'1': 'short_instrument_group_name', '3': 21, '4': 2, '5': 9, '10': 'shortInstrumentGroupName'},
    const {'1': 'instrument_group_description', '3': 22, '4': 2, '5': 9, '10': 'instrumentGroupDescription'},
    const {'1': 'tick_sizes_by_price', '3': 23, '4': 3, '5': 11, '6': '.WebAPI_1.TickSizeByPrice', '10': 'tickSizesByPrice'},
    const {'1': 'tick_sizes_by_dte', '3': 24, '4': 3, '5': 11, '6': '.WebAPI_1.TickSizeByDateTillExpiration', '10': 'tickSizesByDte'},
    const {'1': 'tick_sizes_by_dte_id', '3': 25, '4': 1, '5': 13, '10': 'tickSizesByDteId'},
    const {'1': 'strike', '3': 26, '4': 1, '5': 17, '10': 'strike'},
    const {'1': 'strike_price', '3': 27, '4': 1, '5': 1, '10': 'strikePrice'},
    const {'1': 'dialect_id', '3': 28, '4': 1, '5': 9, '10': 'dialectId'},
    const {'1': 'country_code', '3': 29, '4': 2, '5': 9, '10': 'countryCode'},
    const {'1': 'strategy_definition', '3': 30, '4': 1, '5': 11, '6': '.WebAPI_1.StrategyDefinition', '10': 'strategyDefinition'},
    const {'1': 'contract_size', '3': 31, '4': 1, '5': 9, '10': 'contractSize'},
    const {'1': 'position_tracking', '3': 32, '4': 1, '5': 13, '10': 'positionTracking'},
    const {'1': 'speculation_type_required', '3': 33, '4': 1, '5': 8, '7': 'false', '10': 'speculationTypeRequired'},
    const {'1': 'maturity_month_year', '3': 34, '4': 1, '5': 9, '10': 'maturityMonthYear'},
    const {'1': 'maturity_date', '3': 53, '4': 1, '5': 18, '10': 'maturityDate'},
    const {'1': 'price_display_mode', '3': 35, '4': 1, '5': 14, '6': '.WebAPI_1.PriceDisplayMode', '10': 'priceDisplayMode'},
    const {'1': 'discretionary_price_display_mode', '3': 38, '4': 1, '5': 14, '6': '.WebAPI_1.PriceDisplayMode', '10': 'discretionaryPriceDisplayMode'},
    const {'1': 'foreign_currency', '3': 39, '4': 1, '5': 9, '10': 'foreignCurrency'},
    const {'1': 'volume_scale', '3': 40, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'volumeScale'},
    const {'1': 'volume_display_exponent', '3': 41, '4': 1, '5': 17, '7': '0', '10': 'volumeDisplayExponent'},
    const {'1': 'trade_size_increment', '3': 42, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'tradeSizeIncrement'},
    const {'1': 'has_inverted_price_ladder', '3': 60, '4': 1, '5': 8, '10': 'hasInvertedPriceLadder'},
    const {'1': 'dom_ladder_compression_ratio', '3': 45, '4': 1, '5': 13, '10': 'domLadderCompressionRatio'},
    const {'1': 'expect_off_tick_prices', '3': 46, '4': 1, '5': 8, '7': 'false', '10': 'expectOffTickPrices'},
    const {'1': 'has_exchange_volume', '3': 47, '4': 1, '5': 8, '7': 'true', '10': 'hasExchangeVolume'},
    const {'1': 'has_yields', '3': 61, '4': 1, '5': 8, '10': 'hasYields'},
    const {'1': 'isin', '3': 48, '4': 1, '5': 9, '10': 'isin'},
    const {'1': 'maintenance_margin', '3': 49, '4': 1, '5': 1, '10': 'maintenanceMargin'},
    const {'1': 'contract_size_in_units', '3': 50, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'contractSizeInUnits'},
    const {'1': 'contract_size_unit', '3': 51, '4': 1, '5': 11, '6': '.shared_1.Text', '10': 'contractSizeUnit'},
    const {'1': 'last_delivery_date', '3': 52, '4': 1, '5': 18, '10': 'lastDeliveryDate'},
    const {'1': 'contributor_parameters', '3': 54, '4': 3, '5': 11, '6': '.metadata_1.ContributorParameters', '10': 'contributorParameters'},
    const {'1': 'period_type', '3': 55, '4': 1, '5': 13, '10': 'periodType'},
    const {'1': 'period_value', '3': 56, '4': 1, '5': 13, '10': 'periodValue'},
    const {'1': 'symbol_id', '3': 57, '4': 1, '5': 9, '10': 'symbolId'},
    const {'1': 'deleted', '3': 58, '4': 1, '5': 8, '7': 'false', '10': 'deleted'},
  ],
  '4': const [ContractMetadata_MarginStyle$json],
};

const ContractMetadata_MarginStyle$json = const {
  '1': 'MarginStyle',
  '2': const [
    const {'1': 'FUTURE', '2': 1},
    const {'1': 'PREMIUM', '2': 2},
  ],
};

const InformationRequest$json = const {
  '1': 'InformationRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 2, '5': 13, '10': 'id'},
    const {'1': 'subscribe', '3': 2, '4': 1, '5': 8, '10': 'subscribe'},
    const {'1': 'accounts_request', '3': 3, '4': 1, '5': 11, '6': '.WebAPI_1.AccountsRequest', '10': 'accountsRequest'},
    const {'1': 'symbol_resolution_request', '3': 4, '4': 1, '5': 11, '6': '.WebAPI_1.SymbolResolutionRequest', '10': 'symbolResolutionRequest'},
    const {'1': 'last_statement_balances_request', '3': 5, '4': 1, '5': 11, '6': '.WebAPI_1.LastStatementBalancesRequest', '10': 'lastStatementBalancesRequest'},
    const {'1': 'currency_rates_request', '3': 6, '4': 1, '5': 11, '6': '.WebAPI_1.CurrencyRatesRequest', '10': 'currencyRatesRequest'},
    const {'1': 'session_information_request', '3': 7, '4': 1, '5': 11, '6': '.WebAPI_1.SessionInformationRequest', '10': 'sessionInformationRequest'},
    const {'1': 'historical_orders_request', '3': 13, '4': 1, '5': 11, '6': '.WebAPI_1.HistoricalOrdersRequest', '10': 'historicalOrdersRequest'},
    const {'1': 'symbols_by_underlying_request', '3': 14, '4': 1, '5': 11, '6': '.WebAPI_1.SymbolsByUnderlyingRequest', '10': 'symbolsByUnderlyingRequest'},
    const {'1': 'child_symbols_request', '3': 15, '4': 1, '5': 11, '6': '.WebAPI_1.ChildSymbolsRequest', '10': 'childSymbolsRequest'},
    const {'1': 'at_the_money_strike_request', '3': 16, '4': 1, '5': 11, '6': '.WebAPI_1.AtTheMoneyStrikeRequest', '10': 'atTheMoneyStrikeRequest'},
    const {'1': 'strategy_definition_request', '3': 17, '4': 1, '5': 11, '6': '.WebAPI_1.StrategyDefinitionRequest', '10': 'strategyDefinitionRequest'},
    const {'1': 'session_timerange_request', '3': 18, '4': 1, '5': 11, '6': '.WebAPI_1.SessionTimeRangeRequest', '10': 'sessionTimerangeRequest'},
    const {'1': 'trading_day_timerange_request', '3': 19, '4': 1, '5': 11, '6': '.WebAPI_1.TradingDayTimeRangeRequest', '10': 'tradingDayTimerangeRequest'},
    const {'1': 'order_entitlement_request', '3': 20, '4': 1, '5': 11, '6': '.WebAPI_1.OrderEntitlementRequest', '10': 'orderEntitlementRequest'},
    const {'1': 'symbol_category_list_request', '3': 21, '4': 1, '5': 11, '6': '.WebAPI_1.SymbolCategoryListRequest', '10': 'symbolCategoryListRequest'},
    const {'1': 'symbol_category_request', '3': 27, '4': 1, '5': 11, '6': '.WebAPI_1.SymbolCategoryRequest', '10': 'symbolCategoryRequest'},
    const {'1': 'symbol_list_request', '3': 22, '4': 1, '5': 11, '6': '.WebAPI_1.SymbolListRequest', '10': 'symbolListRequest'},
    const {'1': 'symbol_request', '3': 23, '4': 1, '5': 11, '6': '.WebAPI_1.SymbolRequest', '10': 'symbolRequest'},
    const {'1': 'entitlement_request', '3': 24, '4': 1, '5': 11, '6': '.shared_1.EntitlementRequest', '10': 'entitlementRequest'},
    const {'1': 'contract_metadata_request', '3': 25, '4': 1, '5': 11, '6': '.WebAPI_1.ContractMetadataRequest', '10': 'contractMetadataRequest'},
    const {'1': 'algo_strategy_definition_request', '3': 26, '4': 1, '5': 11, '6': '.WebAPI_1.AlgoStrategyDefinitionRequest', '10': 'algoStrategyDefinitionRequest'},
  ],
};

const InformationReport$json = const {
  '1': 'InformationReport',
  '2': const [
    const {'1': 'id', '3': 1, '4': 2, '5': 13, '10': 'id'},
    const {'1': 'is_report_complete', '3': 2, '4': 1, '5': 8, '7': 'true', '10': 'isReportComplete'},
    const {'1': 'status_code', '3': 3, '4': 2, '5': 13, '10': 'statusCode'},
    const {'1': 'text_message', '3': 4, '4': 1, '5': 9, '10': 'textMessage'},
    const {'1': 'accounts_report', '3': 5, '4': 1, '5': 11, '6': '.WebAPI_1.AccountsReport', '10': 'accountsReport'},
    const {'1': 'symbol_resolution_report', '3': 6, '4': 1, '5': 11, '6': '.WebAPI_1.SymbolResolutionReport', '10': 'symbolResolutionReport'},
    const {'1': 'last_statement_balances_report', '3': 7, '4': 1, '5': 11, '6': '.WebAPI_1.LastStatementBalancesReport', '10': 'lastStatementBalancesReport'},
    const {'1': 'currency_rates_report', '3': 8, '4': 1, '5': 11, '6': '.WebAPI_1.CurrencyRatesReport', '10': 'currencyRatesReport'},
    const {'1': 'session_information_report', '3': 9, '4': 1, '5': 11, '6': '.WebAPI_1.SessionInformationReport', '10': 'sessionInformationReport'},
    const {'1': 'historical_orders_report', '3': 15, '4': 1, '5': 11, '6': '.WebAPI_1.HistoricalOrdersReport', '10': 'historicalOrdersReport'},
    const {'1': 'symbols_by_underlying_report', '3': 16, '4': 1, '5': 11, '6': '.WebAPI_1.SymbolsByUnderlyingReport', '10': 'symbolsByUnderlyingReport'},
    const {'1': 'child_symbols_report', '3': 17, '4': 1, '5': 11, '6': '.WebAPI_1.ChildSymbolsReport', '10': 'childSymbolsReport'},
    const {'1': 'at_the_money_strike_report', '3': 18, '4': 1, '5': 11, '6': '.WebAPI_1.AtTheMoneyStrikeReport', '10': 'atTheMoneyStrikeReport'},
    const {'1': 'strategy_definition_report', '3': 19, '4': 1, '5': 11, '6': '.WebAPI_1.StrategyDefinitionReport', '10': 'strategyDefinitionReport'},
    const {'1': 'session_timerange_report', '3': 20, '4': 1, '5': 11, '6': '.WebAPI_1.SessionTimeRangeReport', '10': 'sessionTimerangeReport'},
    const {'1': 'trading_day_timerange_report', '3': 21, '4': 1, '5': 11, '6': '.WebAPI_1.TradingDayTimeRangeReport', '10': 'tradingDayTimerangeReport'},
    const {'1': 'order_entitlement_report', '3': 22, '4': 1, '5': 11, '6': '.WebAPI_1.OrderEntitlementReport', '10': 'orderEntitlementReport'},
    const {'1': 'symbol_category_list_report', '3': 23, '4': 1, '5': 11, '6': '.WebAPI_1.SymbolCategoryListReport', '10': 'symbolCategoryListReport'},
    const {'1': 'symbol_category_report', '3': 29, '4': 1, '5': 11, '6': '.WebAPI_1.SymbolCategoryReport', '10': 'symbolCategoryReport'},
    const {'1': 'symbol_list_report', '3': 24, '4': 1, '5': 11, '6': '.WebAPI_1.SymbolListReport', '10': 'symbolListReport'},
    const {'1': 'symbol_report', '3': 25, '4': 1, '5': 11, '6': '.WebAPI_1.SymbolReport', '10': 'symbolReport'},
    const {'1': 'entitlement_report', '3': 26, '4': 1, '5': 11, '6': '.shared_1.EntitlementReport', '10': 'entitlementReport'},
    const {'1': 'contract_metadata_report', '3': 27, '4': 1, '5': 11, '6': '.WebAPI_1.ContractMetadataReport', '10': 'contractMetadataReport'},
    const {'1': 'algo_strategy_definition_report', '3': 28, '4': 1, '5': 11, '6': '.WebAPI_1.AlgoStrategyDefinitionReport', '10': 'algoStrategyDefinitionReport'},
  ],
  '4': const [InformationReport_StatusCode$json],
};

const InformationReport_StatusCode$json = const {
  '1': 'StatusCode',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'SUBSCRIBED', '2': 1},
    const {'1': 'DROPPED', '2': 2},
    const {'1': 'UPDATE', '2': 3},
    const {'1': 'DISCONNECTED', '2': 4},
    const {'1': 'FAILURE', '2': 101},
    const {'1': 'NOT_FOUND', '2': 104},
    const {'1': 'REQUEST_RATE_LIMIT_VIOLATION', '2': 105},
    const {'1': 'SUBSCRIPTION_LIMIT_VIOLATION', '2': 106},
    const {'1': 'ACTIVE_REQUESTS_LIMIT_VIOLATION', '2': 107},
  ],
};

const AccountsRequest$json = const {
  '1': 'AccountsRequest',
};

const AccountsReport$json = const {
  '1': 'AccountsReport',
  '2': const [
    const {'1': 'brokerage', '3': 1, '4': 3, '5': 11, '6': '.WebAPI_1.Brokerage', '10': 'brokerage'},
  ],
};

const Brokerage$json = const {
  '1': 'Brokerage',
  '2': const [
    const {'1': 'id', '3': 1, '4': 2, '5': 13, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 2, '5': 9, '10': 'name'},
    const {'1': 'sales_series', '3': 3, '4': 3, '5': 11, '6': '.WebAPI_1.SalesSeries', '10': 'salesSeries'},
  ],
};

const SalesSeries$json = const {
  '1': 'SalesSeries',
  '2': const [
    const {'1': 'number', '3': 1, '4': 2, '5': 9, '10': 'number'},
    const {'1': 'name', '3': 2, '4': 2, '5': 9, '10': 'name'},
    const {'1': 'account', '3': 3, '4': 3, '5': 11, '6': '.WebAPI_1.Account', '10': 'account'},
  ],
};

const Account$json = const {
  '1': 'Account',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 2, '5': 17, '10': 'accountId'},
    const {'1': 'brokerage_account_id', '3': 2, '4': 2, '5': 9, '10': 'brokerageAccountId'},
    const {'1': 'name', '3': 3, '4': 2, '5': 9, '10': 'name'},
    const {'1': 'last_statement_date', '3': 4, '4': 2, '5': 18, '10': 'lastStatementDate'},
    const {'1': 'is_view_only', '3': 5, '4': 1, '5': 8, '10': 'isViewOnly'},
    const {'1': 'is_unauthorized', '3': 6, '4': 1, '5': 8, '10': 'isUnauthorized'},
    const {'1': 'reserved1', '3': 7, '4': 1, '5': 18, '10': 'reserved1'},
    const {'1': 'account_connection_status', '3': 8, '4': 1, '5': 13, '10': 'accountConnectionStatus'},
    const {'1': 'account_connection_status_utc_timestamp', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'accountConnectionStatusUtcTimestamp'},
    const {'1': 'contributor_id', '3': 10, '4': 3, '5': 9, '10': 'contributorId'},
    const {'1': 'pre_trade_mid_market_mark_required', '3': 11, '4': 1, '5': 8, '10': 'preTradeMidMarketMarkRequired'},
  ],
  '4': const [Account_AccountConnectionStatus$json],
};

const Account_AccountConnectionStatus$json = const {
  '1': 'AccountConnectionStatus',
  '2': const [
    const {'1': 'OFFLINE', '2': 1},
    const {'1': 'DISCONNECTED', '2': 2},
    const {'1': 'CONNECTING', '2': 3},
    const {'1': 'CONNECTED', '2': 4},
  ],
};

const SymbolResolutionRequest$json = const {
  '1': 'SymbolResolutionRequest',
  '2': const [
    const {'1': 'symbol', '3': 1, '4': 2, '5': 9, '10': 'symbol'},
  ],
};

const SymbolResolutionReport$json = const {
  '1': 'SymbolResolutionReport',
  '2': const [
    const {'1': 'contract_metadata', '3': 1, '4': 2, '5': 11, '6': '.WebAPI_1.ContractMetadata', '10': 'contractMetadata'},
    const {'1': 'deleted', '3': 2, '4': 1, '5': 8, '10': 'deleted'},
  ],
};

const LastStatementBalancesRequest$json = const {
  '1': 'LastStatementBalancesRequest',
};

const LastStatementBalancesReport$json = const {
  '1': 'LastStatementBalancesReport',
  '2': const [
    const {'1': 'balance', '3': 1, '4': 3, '5': 11, '6': '.WebAPI_1.Balance', '10': 'balance'},
  ],
};

const Balance$json = const {
  '1': 'Balance',
  '2': const [
    const {'1': 'id', '3': 1, '4': 2, '5': 17, '10': 'id'},
    const {'1': 'account_id', '3': 2, '4': 2, '5': 17, '10': 'accountId'},
    const {'1': 'statement_date', '3': 3, '4': 2, '5': 18, '10': 'statementDate'},
    const {'1': 'currency', '3': 4, '4': 2, '5': 9, '10': 'currency'},
    const {'1': 'balance', '3': 5, '4': 2, '5': 1, '10': 'balance'},
    const {'1': 'total_value', '3': 6, '4': 2, '5': 1, '10': 'totalValue'},
    const {'1': 'ote', '3': 7, '4': 2, '5': 1, '10': 'ote'},
    const {'1': 'upl', '3': 8, '4': 2, '5': 1, '10': 'upl'},
    const {'1': 'mvo', '3': 9, '4': 2, '5': 1, '10': 'mvo'},
    const {'1': 'cash_excess', '3': 10, '4': 2, '5': 1, '10': 'cashExcess'},
    const {'1': 'collateral', '3': 11, '4': 2, '5': 1, '10': 'collateral'},
    const {'1': 'initial_margin', '3': 12, '4': 2, '5': 1, '10': 'initialMargin'},
  ],
};

const CurrencyRatesRequest$json = const {
  '1': 'CurrencyRatesRequest',
};

const CurrencyRatesReport$json = const {
  '1': 'CurrencyRatesReport',
  '2': const [
    const {'1': 'brokerage_currency_rates', '3': 1, '4': 3, '5': 11, '6': '.WebAPI_1.BrokerageCurrencyRates', '10': 'brokerageCurrencyRates'},
  ],
};

const BrokerageCurrencyRates$json = const {
  '1': 'BrokerageCurrencyRates',
  '2': const [
    const {'1': 'brokerage_id', '3': 1, '4': 2, '5': 13, '10': 'brokerageId'},
    const {'1': 'master_currency', '3': 2, '4': 2, '5': 9, '10': 'masterCurrency'},
    const {'1': 'statement_date', '3': 3, '4': 2, '5': 18, '10': 'statementDate'},
    const {'1': 'currency_rate', '3': 4, '4': 3, '5': 11, '6': '.WebAPI_1.CurrencyRate', '10': 'currencyRate'},
  ],
};

const CurrencyRate$json = const {
  '1': 'CurrencyRate',
  '2': const [
    const {'1': 'currency', '3': 2, '4': 2, '5': 9, '10': 'currency'},
    const {'1': 'rate', '3': 3, '4': 2, '5': 1, '10': 'rate'},
    const {'1': 'decimal_places', '3': 4, '4': 1, '5': 13, '10': 'decimalPlaces'},
  ],
};

const SessionInformationRequest$json = const {
  '1': 'SessionInformationRequest',
  '2': const [
    const {'1': 'session_info_id', '3': 1, '4': 2, '5': 17, '10': 'sessionInfoId'},
    const {'1': 'from_utc_time', '3': 2, '4': 1, '5': 18, '10': 'fromUtcTime'},
    const {'1': 'to_utc_time', '3': 3, '4': 1, '5': 18, '10': 'toUtcTime'},
  ],
};

const SessionInformationReport$json = const {
  '1': 'SessionInformationReport',
  '2': const [
    const {'1': 'session_info_id', '3': 1, '4': 2, '5': 17, '10': 'sessionInfoId'},
    const {'1': 'session_segment', '3': 2, '4': 3, '5': 11, '6': '.WebAPI_1.SessionSegment', '10': 'sessionSegment'},
  ],
};

const SessionSegment$json = const {
  '1': 'SessionSegment',
  '2': const [
    const {'1': 'session_segment_id', '3': 1, '4': 2, '5': 18, '10': 'sessionSegmentId'},
    const {'1': 'deleted', '3': 2, '4': 1, '5': 8, '10': 'deleted'},
    const {'1': 'from_utc_time', '3': 3, '4': 1, '5': 18, '10': 'fromUtcTime'},
    const {'1': 'to_utc_time', '3': 4, '4': 1, '5': 18, '10': 'toUtcTime'},
    const {'1': 'session_schedule', '3': 5, '4': 3, '5': 11, '6': '.WebAPI_1.SessionSchedule', '10': 'sessionSchedule'},
    const {'1': 'trading_day', '3': 6, '4': 3, '5': 11, '6': '.WebAPI_1.TradingDay', '10': 'tradingDay'},
    const {'1': 'daily_holiday', '3': 7, '4': 3, '5': 11, '6': '.WebAPI_1.SessionHoliday', '10': 'dailyHoliday'},
  ],
};

const SessionSchedule$json = const {
  '1': 'SessionSchedule',
  '2': const [
    const {'1': 'name', '3': 1, '4': 2, '5': 9, '10': 'name'},
    const {'1': 'session_day', '3': 2, '4': 3, '5': 11, '6': '.WebAPI_1.SessionDay', '10': 'sessionDay'},
    const {'1': 'session_holiday', '3': 3, '4': 3, '5': 11, '6': '.WebAPI_1.SessionHoliday', '10': 'sessionHoliday'},
    const {'1': 'is_primary', '3': 4, '4': 1, '5': 8, '10': 'isPrimary'},
  ],
};

const TradingDay$json = const {
  '1': 'TradingDay',
  '2': const [
    const {'1': 'day_of_week', '3': 1, '4': 3, '5': 14, '6': '.WebAPI_1.DayOfWeek', '10': 'dayOfWeek'},
    const {'1': 'start_offset', '3': 2, '4': 1, '5': 18, '10': 'startOffset'},
  ],
};

const SessionDay$json = const {
  '1': 'SessionDay',
  '2': const [
    const {'1': 'day_of_week', '3': 1, '4': 3, '5': 14, '6': '.WebAPI_1.DayOfWeek', '10': 'dayOfWeek'},
    const {'1': 'pre_open_offset', '3': 2, '4': 1, '5': 18, '10': 'preOpenOffset'},
    const {'1': 'open_offset', '3': 3, '4': 1, '5': 18, '10': 'openOffset'},
    const {'1': 'close_offset', '3': 4, '4': 1, '5': 18, '10': 'closeOffset'},
    const {'1': 'post_close_offset', '3': 5, '4': 1, '5': 18, '10': 'postCloseOffset'},
  ],
};

const SessionHoliday$json = const {
  '1': 'SessionHoliday',
  '2': const [
    const {'1': 'holiday_date', '3': 1, '4': 2, '5': 18, '10': 'holidayDate'},
    const {'1': 'holiday_name', '3': 2, '4': 2, '5': 9, '10': 'holidayName'},
  ],
};

const SymbolsByUnderlyingRequest$json = const {
  '1': 'SymbolsByUnderlyingRequest',
  '2': const [
    const {'1': 'underlying_contract_id', '3': 1, '4': 2, '5': 13, '10': 'underlyingContractId'},
  ],
};

const SymbolsByUnderlyingReport$json = const {
  '1': 'SymbolsByUnderlyingReport',
  '2': const [
    const {'1': 'symbol', '3': 1, '4': 3, '5': 11, '6': '.WebAPI_1.Symbol', '10': 'symbol'},
  ],
};

const ChildSymbolsRequest$json = const {
  '1': 'ChildSymbolsRequest',
  '2': const [
    const {'1': 'parent_symbol_id', '3': 1, '4': 2, '5': 9, '10': 'parentSymbolId'},
    const {'1': 'category_id', '3': 2, '4': 3, '5': 9, '10': 'categoryId'},
  ],
};

const ChildSymbolsReport$json = const {
  '1': 'ChildSymbolsReport',
  '2': const [
    const {'1': 'symbol', '3': 1, '4': 3, '5': 11, '6': '.WebAPI_1.Symbol', '10': 'symbol'},
  ],
};

const AtTheMoneyStrikeRequest$json = const {
  '1': 'AtTheMoneyStrikeRequest',
  '2': const [
    const {'1': 'option_maturity_symbol_id', '3': 1, '4': 2, '5': 9, '10': 'optionMaturitySymbolId'},
  ],
};

const AtTheMoneyStrikeReport$json = const {
  '1': 'AtTheMoneyStrikeReport',
  '2': const [
    const {'1': 'strike', '3': 1, '4': 1, '5': 17, '10': 'strike'},
  ],
};

const SessionTimeRangeRequest$json = const {
  '1': 'SessionTimeRangeRequest',
  '2': const [
    const {'1': 'session_info_id', '3': 1, '4': 2, '5': 17, '10': 'sessionInfoId'},
    const {'1': 'from_utc_time', '3': 2, '4': 1, '5': 18, '10': 'fromUtcTime'},
    const {'1': 'to_utc_time', '3': 3, '4': 1, '5': 18, '10': 'toUtcTime'},
    const {'1': 'count', '3': 4, '4': 1, '5': 13, '10': 'count'},
  ],
};

const SessionTimeRangeReport$json = const {
  '1': 'SessionTimeRangeReport',
  '2': const [
    const {'1': 'session_time_ranges', '3': 1, '4': 3, '5': 11, '6': '.WebAPI_1.SessionTimeRange', '10': 'sessionTimeRanges'},
    const {'1': 'truncated', '3': 2, '4': 1, '5': 8, '10': 'truncated'},
  ],
};

const SessionTimeRange$json = const {
  '1': 'SessionTimeRange',
  '2': const [
    const {'1': 'pre_open_utc_time', '3': 1, '4': 2, '5': 18, '10': 'preOpenUtcTime'},
    const {'1': 'open_utc_time', '3': 2, '4': 2, '5': 18, '10': 'openUtcTime'},
    const {'1': 'close_utc_time', '3': 3, '4': 2, '5': 18, '10': 'closeUtcTime'},
    const {'1': 'post_close_utc_time', '3': 4, '4': 2, '5': 18, '10': 'postCloseUtcTime'},
    const {'1': 'trade_date', '3': 5, '4': 2, '5': 18, '10': 'tradeDate'},
    const {'1': 'session_name', '3': 6, '4': 2, '5': 9, '10': 'sessionName'},
  ],
};

const TradingDayTimeRangeRequest$json = const {
  '1': 'TradingDayTimeRangeRequest',
  '2': const [
    const {'1': 'session_info_id', '3': 1, '4': 2, '5': 17, '10': 'sessionInfoId'},
    const {'1': 'include_holidays', '3': 2, '4': 1, '5': 8, '10': 'includeHolidays'},
    const {'1': 'from_utc_time', '3': 3, '4': 1, '5': 18, '10': 'fromUtcTime'},
    const {'1': 'to_utc_time', '3': 4, '4': 1, '5': 18, '10': 'toUtcTime'},
    const {'1': 'count', '3': 5, '4': 1, '5': 13, '10': 'count'},
  ],
};

const TradingDayTimeRangeReport$json = const {
  '1': 'TradingDayTimeRangeReport',
  '2': const [
    const {'1': 'trading_day_time_ranges', '3': 1, '4': 3, '5': 11, '6': '.WebAPI_1.TradingDayTimeRange', '10': 'tradingDayTimeRanges'},
    const {'1': 'truncated', '3': 2, '4': 1, '5': 8, '10': 'truncated'},
  ],
};

const TradingDayTimeRange$json = const {
  '1': 'TradingDayTimeRange',
  '2': const [
    const {'1': 'trade_date', '3': 1, '4': 2, '5': 18, '10': 'tradeDate'},
    const {'1': 'start_utc_time', '3': 2, '4': 1, '5': 18, '10': 'startUtcTime'},
    const {'1': 'end_utc_time', '3': 3, '4': 1, '5': 18, '10': 'endUtcTime'},
  ],
};

const AlgoStrategyDefinitionRequest$json = const {
  '1': 'AlgoStrategyDefinitionRequest',
  '2': const [
    const {'1': 'algo_strategy', '3': 1, '4': 3, '5': 9, '10': 'algoStrategy'},
  ],
};

const AlgoStrategyDefinitionReport$json = const {
  '1': 'AlgoStrategyDefinitionReport',
  '2': const [
    const {'1': 'algo_strategy_definition', '3': 1, '4': 3, '5': 11, '6': '.WebAPI_1.AlgoStrategyDefinition', '10': 'algoStrategyDefinition'},
  ],
};

const AlgoStrategyDefinition$json = const {
  '1': 'AlgoStrategyDefinition',
  '2': const [
    const {'1': 'abbreviation', '3': 1, '4': 1, '5': 9, '10': 'abbreviation'},
    const {'1': 'definition', '3': 2, '4': 1, '5': 9, '10': 'definition'},
  ],
};

const Symbol$json = const {
  '1': 'Symbol',
  '2': const [
    const {'1': 'id', '3': 1, '4': 2, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 2, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 3, '4': 2, '5': 9, '10': 'description'},
    const {'1': 'cfi_code', '3': 4, '4': 1, '5': 9, '10': 'cfiCode'},
    const {'1': 'has_child_symbols', '3': 5, '4': 1, '5': 8, '10': 'hasChildSymbols'},
    const {'1': 'contract_metadata', '3': 6, '4': 1, '5': 11, '6': '.WebAPI_1.ContractMetadata', '10': 'contractMetadata'},
    const {'1': 'deleted', '3': 7, '4': 1, '5': 8, '10': 'deleted'},
    const {'1': 'last_trading_date', '3': 8, '4': 1, '5': 18, '10': 'lastTradingDate'},
    const {'1': 'maturity_month_year', '3': 9, '4': 1, '5': 9, '10': 'maturityMonthYear'},
    const {'1': 'instrument_group_name', '3': 10, '4': 1, '5': 9, '10': 'instrumentGroupName'},
    const {'1': 'parent_symbol_id', '3': 11, '4': 1, '5': 9, '10': 'parentSymbolId'},
    const {'1': 'category_id', '3': 12, '4': 3, '5': 9, '10': 'categoryId'},
    const {'1': 'source_symbol_id', '3': 13, '4': 1, '5': 9, '10': 'sourceSymbolId'},
    const {'1': 'product_metadata', '3': 14, '4': 1, '5': 11, '6': '.WebAPI_1.ProductMetadata', '10': 'productMetadata'},
    const {'1': 'security_metadata', '3': 15, '4': 1, '5': 11, '6': '.WebAPI_1.SecurityMetadata', '10': 'securityMetadata'},
    const {'1': 'option_maturity_metadata', '3': 16, '4': 1, '5': 11, '6': '.WebAPI_1.OptionMaturity', '10': 'optionMaturityMetadata'},
  ],
};

const ProductMetadata$json = const {
  '1': 'ProductMetadata',
  '2': const [
    const {'1': 'product_id', '3': 1, '4': 1, '5': 9, '10': 'productId'},
  ],
};

const SecurityMetadata$json = const {
  '1': 'SecurityMetadata',
  '2': const [
    const {'1': 'security_id', '3': 1, '4': 1, '5': 9, '10': 'securityId'},
    const {'1': 'cfi_code', '3': 2, '4': 1, '5': 9, '10': 'cfiCode'},
    const {'1': 'currency', '3': 3, '4': 1, '5': 9, '10': 'currency'},
    const {'1': 'tick_size', '3': 4, '4': 1, '5': 1, '10': 'tickSize'},
    const {'1': 'tick_value', '3': 5, '4': 1, '5': 1, '10': 'tickValue'},
    const {'1': 'period_type', '3': 6, '4': 1, '5': 13, '10': 'periodType'},
    const {'1': 'period_value', '3': 7, '4': 1, '5': 13, '10': 'periodValue'},
    const {'1': 'contract_size_in_units', '3': 8, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'contractSizeInUnits'},
    const {'1': 'contract_size_unit', '3': 9, '4': 1, '5': 11, '6': '.shared_1.Text', '10': 'contractSizeUnit'},
    const {'1': 'contributor_parameters', '3': 10, '4': 3, '5': 11, '6': '.metadata_1.ContributorParameters', '10': 'contributorParameters'},
    const {'1': 'symbol_id', '3': 11, '4': 1, '5': 9, '10': 'symbolId'},
  ],
};

const OptionMaturity$json = const {
  '1': 'OptionMaturity',
  '2': const [
    const {'1': 'option_maturity_id', '3': 1, '4': 1, '5': 9, '10': 'optionMaturityId'},
  ],
};

const StrategyDefinitionRequest$json = const {
  '1': 'StrategyDefinitionRequest',
  '2': const [
    const {'1': 'strategy_definition', '3': 1, '4': 2, '5': 11, '6': '.WebAPI_1.StrategyDefinition', '10': 'strategyDefinition'},
  ],
};

const StrategyDefinitionReport$json = const {
  '1': 'StrategyDefinitionReport',
  '2': const [
    const {'1': 'contract_metadata', '3': 1, '4': 2, '5': 11, '6': '.WebAPI_1.ContractMetadata', '10': 'contractMetadata'},
  ],
};

const SymbolCategory$json = const {
  '1': 'SymbolCategory',
  '2': const [
    const {'1': 'id', '3': 1, '4': 2, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 2, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'parent_id', '3': 4, '4': 1, '5': 9, '10': 'parentId'},
    const {'1': 'can_filter', '3': 5, '4': 2, '5': 8, '10': 'canFilter'},
    const {'1': 'exchange_id', '3': 6, '4': 1, '5': 17, '10': 'exchangeId'},
    const {'1': 'contributor_id', '3': 7, '4': 1, '5': 9, '10': 'contributorId'},
    const {'1': 'deleted', '3': 8, '4': 1, '5': 8, '10': 'deleted'},
  ],
};

const SymbolCategoryListRequest$json = const {
  '1': 'SymbolCategoryListRequest',
  '2': const [
    const {'1': 'category_id', '3': 1, '4': 1, '5': 9, '10': 'categoryId'},
    const {'1': 'depth', '3': 2, '4': 1, '5': 13, '10': 'depth'},
  ],
};

const SymbolCategoryListReport$json = const {
  '1': 'SymbolCategoryListReport',
  '2': const [
    const {'1': 'symbol_category', '3': 1, '4': 3, '5': 11, '6': '.WebAPI_1.SymbolCategory', '10': 'symbolCategory'},
  ],
};

const SymbolCategoryRequest$json = const {
  '1': 'SymbolCategoryRequest',
  '2': const [
    const {'1': 'category_id', '3': 1, '4': 1, '5': 9, '10': 'categoryId'},
  ],
};

const SymbolCategoryReport$json = const {
  '1': 'SymbolCategoryReport',
  '2': const [
    const {'1': 'symbol_category', '3': 1, '4': 1, '5': 11, '6': '.WebAPI_1.SymbolCategory', '10': 'symbolCategory'},
  ],
};

const SymbolListRequest$json = const {
  '1': 'SymbolListRequest',
  '2': const [
    const {'1': 'category_id', '3': 1, '4': 3, '5': 9, '10': 'categoryId'},
    const {'1': 'depth', '3': 2, '4': 1, '5': 13, '10': 'depth'},
  ],
};

const SymbolListReport$json = const {
  '1': 'SymbolListReport',
  '2': const [
    const {'1': 'symbol', '3': 1, '4': 3, '5': 11, '6': '.WebAPI_1.Symbol', '10': 'symbol'},
  ],
};

const SymbolRequest$json = const {
  '1': 'SymbolRequest',
  '2': const [
    const {'1': 'symbol_id', '3': 1, '4': 2, '5': 9, '10': 'symbolId'},
  ],
};

const SymbolReport$json = const {
  '1': 'SymbolReport',
  '2': const [
    const {'1': 'symbol', '3': 1, '4': 1, '5': 11, '6': '.WebAPI_1.Symbol', '10': 'symbol'},
  ],
};

const ContractMetadataRequest$json = const {
  '1': 'ContractMetadataRequest',
  '2': const [
    const {'1': 'contract_id', '3': 1, '4': 2, '5': 13, '10': 'contractId'},
  ],
};

const ContractMetadataReport$json = const {
  '1': 'ContractMetadataReport',
  '2': const [
    const {'1': 'contract_metadata', '3': 1, '4': 1, '5': 11, '6': '.WebAPI_1.ContractMetadata', '10': 'contractMetadata'},
  ],
};

const OrderEntitlementRequest$json = const {
  '1': 'OrderEntitlementRequest',
  '2': const [
    const {'1': 'contract_id', '3': 1, '4': 2, '5': 13, '10': 'contractId'},
    const {'1': 'account_id', '3': 2, '4': 2, '5': 17, '10': 'accountId'},
  ],
};

const OrderEntitlementReport$json = const {
  '1': 'OrderEntitlementReport',
  '2': const [
    const {'1': 'order_entitlement', '3': 1, '4': 3, '5': 11, '6': '.WebAPI_1.OrderEntitlement', '10': 'orderEntitlement'},
  ],
};

const OrderEntitlement$json = const {
  '1': 'OrderEntitlement',
  '2': const [
    const {'1': 'order_type', '3': 1, '4': 2, '5': 13, '10': 'orderType'},
    const {'1': 'is_synthetic', '3': 2, '4': 2, '5': 8, '10': 'isSynthetic'},
    const {'1': 'duration', '3': 3, '4': 2, '5': 13, '10': 'duration'},
    const {'1': 'exec_instruction', '3': 4, '4': 2, '5': 13, '10': 'execInstruction'},
    const {'1': 'algo_strategy_required', '3': 5, '4': 1, '5': 8, '10': 'algoStrategyRequired'},
    const {'1': 'algo_strategy', '3': 6, '4': 3, '5': 9, '10': 'algoStrategy'},
  ],
};

const AccountLogon$json = const {
  '1': 'AccountLogon',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 2, '5': 17, '10': 'accountId'},
    const {'1': 'username', '3': 2, '4': 2, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 3, '4': 2, '5': 9, '10': 'password'},
  ],
};

const AccountLogonResult$json = const {
  '1': 'AccountLogonResult',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 2, '5': 17, '10': 'accountId'},
    const {'1': 'result_code', '3': 2, '4': 2, '5': 13, '10': 'resultCode'},
    const {'1': 'text_message', '3': 3, '4': 1, '5': 11, '6': '.shared_1.Text', '10': 'textMessage'},
    const {'1': 'server_utc_timestamp', '3': 4, '4': 2, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'serverUtcTimestamp'},
  ],
  '4': const [AccountLogonResult_ResultCode$json],
};

const AccountLogonResult_ResultCode$json = const {
  '1': 'ResultCode',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'PASSWORD_CHANGE_REQUIRED', '2': 1},
    const {'1': 'PASSWORD_EXPIRED', '2': 2},
    const {'1': 'FAILURE', '2': 101},
  ],
};

const AccountPasswordChange$json = const {
  '1': 'AccountPasswordChange',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 2, '5': 17, '10': 'accountId'},
    const {'1': 'old_password', '3': 2, '4': 2, '5': 9, '10': 'oldPassword'},
    const {'1': 'new_password', '3': 3, '4': 2, '5': 9, '10': 'newPassword'},
  ],
};

const AccountPasswordChangeResult$json = const {
  '1': 'AccountPasswordChangeResult',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 2, '5': 17, '10': 'accountId'},
    const {'1': 'result_code', '3': 2, '4': 2, '5': 13, '10': 'resultCode'},
    const {'1': 'text_message', '3': 3, '4': 1, '5': 11, '6': '.shared_1.Text', '10': 'textMessage'},
  ],
  '4': const [AccountPasswordChangeResult_ResultCode$json],
};

const AccountPasswordChangeResult_ResultCode$json = const {
  '1': 'ResultCode',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'FAILURE', '2': 101},
  ],
};

const AccountLogoff$json = const {
  '1': 'AccountLogoff',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 2, '5': 17, '10': 'accountId'},
  ],
};

const AccountLogoffResult$json = const {
  '1': 'AccountLogoffResult',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 2, '5': 17, '10': 'accountId'},
    const {'1': 'result_code', '3': 2, '4': 2, '5': 13, '10': 'resultCode'},
    const {'1': 'text_message', '3': 3, '4': 1, '5': 11, '6': '.shared_1.Text', '10': 'textMessage'},
    const {'1': 'server_utc_timestamp', '3': 4, '4': 2, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'serverUtcTimestamp'},
  ],
  '4': const [AccountLogoffResult_ResultCode$json],
};

const AccountLogoffResult_ResultCode$json = const {
  '1': 'ResultCode',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'FAILURE', '2': 101},
  ],
};

const TradeSubscription$json = const {
  '1': 'TradeSubscription',
  '2': const [
    const {'1': 'id', '3': 1, '4': 2, '5': 13, '10': 'id'},
    const {'1': 'subscription_scope', '3': 2, '4': 3, '5': 13, '10': 'subscriptionScope'},
    const {'1': 'publication_type', '3': 3, '4': 1, '5': 13, '10': 'publicationType'},
    const {'1': 'account_id', '3': 4, '4': 1, '5': 13, '10': 'accountId'},
    const {'1': 'sales_series_number', '3': 5, '4': 1, '5': 9, '10': 'salesSeriesNumber'},
    const {'1': 'brokerage_id', '3': 6, '4': 1, '5': 13, '10': 'brokerageId'},
    const {'1': 'subscribe', '3': 7, '4': 2, '5': 8, '10': 'subscribe'},
    const {
      '1': 'last_order_update_utc_time',
      '3': 8,
      '4': 1,
      '5': 18,
      '8': const {'3': true},
      '10': 'lastOrderUpdateUtcTime',
    },
    const {'1': 'last_order_update_utc_timestamp', '3': 14, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'lastOrderUpdateUtcTimestamp'},
    const {'1': 'skip_orders_snapshot', '3': 9, '4': 1, '5': 8, '10': 'skipOrdersSnapshot'},
    const {'1': 'confirmed_positions_only', '3': 10, '4': 1, '5': 8, '10': 'confirmedPositionsOnly'},
    const {'1': 'matching_algorithm', '3': 11, '4': 1, '5': 13, '10': 'matchingAlgorithm'},
    const {'1': 'match_intraday_first', '3': 12, '4': 1, '5': 8, '10': 'matchIntradayFirst'},
    const {'1': 'historical_matching_algorithm', '3': 13, '4': 1, '5': 13, '10': 'historicalMatchingAlgorithm'},
    const {'1': 'include_cross_orders', '3': 15, '4': 1, '5': 8, '10': 'includeCrossOrders'},
  ],
  '4': const [TradeSubscription_SubscriptionScope$json, TradeSubscription_PublicationType$json, TradeSubscription_MatchingAlgorithm$json],
};

const TradeSubscription_SubscriptionScope$json = const {
  '1': 'SubscriptionScope',
  '2': const [
    const {'1': 'ORDERS', '2': 1},
    const {'1': 'POSITIONS', '2': 2},
    const {'1': 'COLLATERAL', '2': 3},
  ],
};

const TradeSubscription_PublicationType$json = const {
  '1': 'PublicationType',
  '2': const [
    const {'1': 'ACCOUNT', '2': 1},
    const {'1': 'SALES_SERIES', '2': 2},
    const {'1': 'BROKERAGE', '2': 3},
    const {'1': 'ALL_AUTHORIZED', '2': 4},
  ],
};

const TradeSubscription_MatchingAlgorithm$json = const {
  '1': 'MatchingAlgorithm',
  '2': const [
    const {'1': 'FIFO', '2': 1},
    const {'1': 'HBHS', '2': 2},
    const {'1': 'LIFO', '2': 3},
  ],
};

const TradeSubscriptionStatus$json = const {
  '1': 'TradeSubscriptionStatus',
  '2': const [
    const {'1': 'id', '3': 1, '4': 2, '5': 13, '10': 'id'},
    const {'1': 'status_code', '3': 2, '4': 2, '5': 13, '10': 'statusCode'},
    const {'1': 'text_message', '3': 3, '4': 1, '5': 9, '10': 'textMessage'},
  ],
  '4': const [TradeSubscriptionStatus_StatusCode$json],
};

const TradeSubscriptionStatus_StatusCode$json = const {
  '1': 'StatusCode',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'DISCONNECTED', '2': 1},
    const {'1': 'FAILURE', '2': 101},
    const {'1': 'SUBSCRIPTION_LIMIT_VIOLATION', '2': 102},
    const {'1': 'INVALID_PUBLICATION_ID', '2': 103},
    const {'1': 'SUBSCRIBED_ACCOUNTS_LIMIT_VIOLATION', '2': 104},
  ],
};

const TradeSnapshotCompletion$json = const {
  '1': 'TradeSnapshotCompletion',
  '2': const [
    const {'1': 'subscription_id', '3': 1, '4': 2, '5': 13, '10': 'subscriptionId'},
    const {'1': 'subscription_scope', '3': 2, '4': 3, '5': 13, '10': 'subscriptionScope'},
  ],
};

const OrderRequest$json = const {
  '1': 'OrderRequest',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 13, '10': 'requestId'},
    const {'1': 'new_order', '3': 2, '4': 1, '5': 11, '6': '.WebAPI_1.NewOrder', '10': 'newOrder'},
    const {'1': 'modify_order', '3': 3, '4': 1, '5': 11, '6': '.WebAPI_1.ModifyOrder', '10': 'modifyOrder'},
    const {'1': 'cancel_order', '3': 4, '4': 1, '5': 11, '6': '.WebAPI_1.CancelOrder', '10': 'cancelOrder'},
    const {'1': 'cancel_all_orders', '3': 14, '4': 1, '5': 11, '6': '.WebAPI_1.CancelAllOrders', '10': 'cancelAllOrders'},
    const {'1': 'liquidate_all', '3': 20, '4': 1, '5': 11, '6': '.WebAPI_1.LiquidateAll', '10': 'liquidateAll'},
    const {'1': 'go_flat', '3': 21, '4': 1, '5': 11, '6': '.WebAPI_1.GoFlat', '10': 'goFlat'},
    const {'1': 'suspend_order', '3': 10, '4': 1, '5': 11, '6': '.WebAPI_1.SuspendOrder', '10': 'suspendOrder'},
    const {'1': 'activate_order', '3': 5, '4': 1, '5': 11, '6': '.WebAPI_1.ActivateOrder', '10': 'activateOrder'},
    const {'1': 'modify_user_attributes', '3': 6, '4': 1, '5': 11, '6': '.WebAPI_1.ModifyUserAttributes', '10': 'modifyUserAttributes'},
    const {'1': 'new_compound_order', '3': 8, '4': 1, '5': 11, '6': '.WebAPI_1.NewCompoundOrder', '10': 'newCompoundOrder'},
    const {'1': 'synthetic_liquidate', '3': 11, '4': 1, '5': 11, '6': '.WebAPI_1.SyntheticLiquidate', '10': 'syntheticLiquidate'},
    const {'1': 'synthetic_scratch', '3': 12, '4': 1, '5': 11, '6': '.WebAPI_1.SyntheticScratch', '10': 'syntheticScratch'},
    const {'1': 'go_market', '3': 13, '4': 1, '5': 11, '6': '.WebAPI_1.GoMarket', '10': 'goMarket'},
    const {'1': 'approve_order', '3': 22, '4': 1, '5': 11, '6': '.WebAPI_1.ApproveOrder', '10': 'approveOrder'},
    const {'1': 'on_behalf_of_user', '3': 7, '4': 1, '5': 9, '10': 'onBehalfOfUser'},
    const {'1': 'client_regulatory_algorithm_id', '3': 9, '4': 1, '5': 13, '10': 'clientRegulatoryAlgorithmId'},
    const {'1': 'mifid_algorithm_id', '3': 15, '4': 1, '5': 9, '10': 'mifidAlgorithmId'},
    const {'1': 'mifid_algorithm_id_type', '3': 16, '4': 1, '5': 13, '10': 'mifidAlgorithmIdType'},
    const {'1': 'override_execution_within_firm_with_nore', '3': 17, '4': 1, '5': 8, '7': 'false', '10': 'overrideExecutionWithinFirmWithNore'},
    const {'1': 'mifid_investment_decision_id', '3': 18, '4': 1, '5': 9, '10': 'mifidInvestmentDecisionId'},
    const {'1': 'mifid_investment_decision_id_type', '3': 19, '4': 1, '5': 13, '10': 'mifidInvestmentDecisionIdType'},
    const {'1': 'is_automated', '3': 23, '4': 1, '5': 8, '10': 'isAutomated'},
  ],
};

const OrderRequestReject$json = const {
  '1': 'OrderRequestReject',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 13, '10': 'requestId'},
    const {'1': 'reject_code', '3': 2, '4': 2, '5': 13, '10': 'rejectCode'},
    const {'1': 'text_message', '3': 3, '4': 1, '5': 9, '10': 'textMessage'},
  ],
};

const NewOrder$json = const {
  '1': 'NewOrder',
  '2': const [
    const {'1': 'order', '3': 1, '4': 2, '5': 11, '6': '.WebAPI_1.Order', '10': 'order'},
    const {'1': 'suspend', '3': 2, '4': 1, '5': 8, '10': 'suspend'},
  ],
};

const Order$json = const {
  '1': 'Order',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 2, '5': 17, '10': 'accountId'},
    const {
      '1': 'when_utc_time',
      '3': 2,
      '4': 1,
      '5': 18,
      '8': const {'3': true},
      '10': 'whenUtcTime',
    },
    const {'1': 'when_utc_timestamp', '3': 27, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'whenUtcTimestamp'},
    const {'1': 'contract_id', '3': 3, '4': 2, '5': 13, '10': 'contractId'},
    const {'1': 'cl_order_id', '3': 4, '4': 2, '5': 9, '10': 'clOrderId'},
    const {'1': 'order_type', '3': 5, '4': 2, '5': 13, '10': 'orderType'},
    const {'1': 'exec_instruction', '3': 6, '4': 3, '5': 13, '10': 'execInstruction'},
    const {'1': 'duration', '3': 7, '4': 2, '5': 13, '10': 'duration'},
    const {'1': 'good_thru_date', '3': 8, '4': 1, '5': 18, '10': 'goodThruDate'},
    const {'1': 'side', '3': 9, '4': 1, '5': 13, '10': 'side'},
    const {'1': 'scaled_limit_price', '3': 10, '4': 1, '5': 18, '10': 'scaledLimitPrice'},
    const {'1': 'scaled_stop_price', '3': 11, '4': 1, '5': 18, '10': 'scaledStopPrice'},
    const {
      '1': 'uint32_qty',
      '3': 12,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32Qty',
    },
    const {
      '1': 'uint32_visible_qty',
      '3': 13,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32VisibleQty',
    },
    const {
      '1': 'uint32_min_visible_qty',
      '3': 14,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32MinVisibleQty',
    },
    const {'1': 'qty', '3': 34, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'qty'},
    const {'1': 'visible_qty', '3': 35, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'visibleQty'},
    const {'1': 'min_visible_qty', '3': 36, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'minVisibleQty'},
    const {
      '1': 'is_manual',
      '3': 15,
      '4': 1,
      '5': 8,
      '8': const {'3': true},
      '10': 'isManual',
    },
    const {
      '1': 'is_close',
      '3': 16,
      '4': 1,
      '5': 8,
      '8': const {'3': true},
      '10': 'isClose',
    },
    const {'1': 'is_aggressive', '3': 17, '4': 1, '5': 8, '10': 'isAggressive'},
    const {'1': 'scaled_trail_offset', '3': 18, '4': 1, '5': 17, '10': 'scaledTrailOffset'},
    const {'1': 'trailing_peg', '3': 19, '4': 1, '5': 13, '10': 'trailingPeg'},
    const {
      '1': 'uint32_trigger_qty',
      '3': 20,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32TriggerQty',
    },
    const {'1': 'trigger_qty', '3': 37, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'triggerQty'},
    const {
      '1': 'activation_utc_time',
      '3': 21,
      '4': 1,
      '5': 18,
      '8': const {'3': true},
      '10': 'activationUtcTime',
    },
    const {'1': 'activation_utc_timestamp', '3': 28, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'activationUtcTimestamp'},
    const {
      '1': 'suspension_utc_time',
      '3': 22,
      '4': 1,
      '5': 18,
      '8': const {'3': true},
      '10': 'suspensionUtcTime',
    },
    const {'1': 'suspension_utc_timestamp', '3': 29, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'suspensionUtcTimestamp'},
    const {'1': 'user_attribute', '3': 23, '4': 3, '5': 11, '6': '.WebAPI_1.UserAttribute', '10': 'userAttribute'},
    const {'1': 'extra_attribute', '3': 38, '4': 3, '5': 11, '6': '.shared_1.NamedValue', '10': 'extraAttribute'},
    const {'1': 'algo_strategy', '3': 39, '4': 1, '5': 9, '10': 'algoStrategy'},
    const {
      '1': 'good_thru_utc_time',
      '3': 24,
      '4': 1,
      '5': 18,
      '8': const {'3': true},
      '10': 'goodThruUtcTime',
    },
    const {'1': 'good_thru_utc_timestamp', '3': 30, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'goodThruUtcTimestamp'},
    const {'1': 'is_user_attribute_checked', '3': 25, '4': 1, '5': 8, '7': 'true', '10': 'isUserAttributeChecked'},
    const {'1': 'strategy_trading_parameters', '3': 26, '4': 1, '5': 11, '6': '.WebAPI_1.StrategyTradingParameters', '10': 'strategyTradingParameters'},
    const {'1': 'open_close_instruction', '3': 31, '4': 1, '5': 13, '10': 'openCloseInstruction'},
    const {'1': 'speculation_type', '3': 32, '4': 1, '5': 13, '10': 'speculationType'},
    const {'1': 'discretionary_offset', '3': 33, '4': 1, '5': 13, '10': 'discretionaryOffset'},
    const {'1': 'contributor_id', '3': 40, '4': 1, '5': 9, '10': 'contributorId'},
    const {'1': 'execution_source_code', '3': 41, '4': 1, '5': 9, '10': 'executionSourceCode'},
    const {'1': 'cross_order_parameters', '3': 42, '4': 1, '5': 11, '6': '.WebAPI_1.CrossOrderParameters', '10': 'crossOrderParameters'},
  ],
  '4': const [Order_Side$json, Order_OrderType$json, Order_ExecInstruction$json, Order_Duration$json, Order_TrailingPeg$json, Order_OpenCloseInstruction$json],
};

const Order_Side$json = const {
  '1': 'Side',
  '2': const [
    const {'1': 'BUY', '2': 1},
    const {'1': 'SELL', '2': 2},
  ],
};

const Order_OrderType$json = const {
  '1': 'OrderType',
  '2': const [
    const {'1': 'MKT', '2': 1},
    const {'1': 'LMT', '2': 2},
    const {'1': 'STP', '2': 3},
    const {'1': 'STL', '2': 4},
    const {'1': 'CROSS', '2': 5},
  ],
};

const Order_ExecInstruction$json = const {
  '1': 'ExecInstruction',
  '2': const [
    const {'1': 'AON', '2': 1},
    const {'1': 'ICEBERG', '2': 2},
    const {'1': 'QT', '2': 3},
    const {'1': 'TRAIL', '2': 4},
    const {'1': 'FUNARI', '2': 5},
    const {'1': 'MIT', '2': 6},
    const {'1': 'MLM', '2': 7},
    const {'1': 'POSTONLY', '2': 8},
    const {'1': 'DISCRETION', '2': 9},
    const {'1': 'MTL', '2': 10},
    const {'1': 'AUCTION', '2': 11},
    const {'1': 'NONE', '2': 12},
  ],
};

const Order_Duration$json = const {
  '1': 'Duration',
  '2': const [
    const {'1': 'DAY', '2': 1},
    const {'1': 'GTC', '2': 2},
    const {'1': 'GTD', '2': 3},
    const {'1': 'GTT', '2': 4},
    const {'1': 'FAK', '2': 5},
    const {'1': 'FOK', '2': 6},
    const {'1': 'ATO', '2': 7},
    const {'1': 'ATC', '2': 8},
  ],
};

const Order_TrailingPeg$json = const {
  '1': 'TrailingPeg',
  '2': const [
    const {'1': 'BESTBID', '2': 1},
    const {'1': 'BESTASK', '2': 2},
    const {'1': 'LASTTRADE', '2': 3},
  ],
};

const Order_OpenCloseInstruction$json = const {
  '1': 'OpenCloseInstruction',
  '2': const [
    const {'1': 'OPEN', '2': 1},
    const {'1': 'CLOSE', '2': 2},
    const {'1': 'CLOSE_YESTERDAY', '2': 3},
  ],
};

const CrossOrderParameters$json = const {
  '1': 'CrossOrderParameters',
  '2': const [
    const {'1': 'side_allocations', '3': 1, '4': 3, '5': 11, '6': '.WebAPI_1.SideAllocation', '10': 'sideAllocations'},
    const {'1': 'price', '3': 2, '4': 1, '5': 1, '10': 'price'},
    const {'1': 'transaction_id', '3': 3, '4': 1, '5': 9, '10': 'transactionId'},
  ],
};

const SideAllocation$json = const {
  '1': 'SideAllocation',
  '2': const [
    const {'1': 'side_id', '3': 1, '4': 1, '5': 18, '10': 'sideId'},
    const {'1': 'account_id', '3': 2, '4': 1, '5': 17, '10': 'accountId'},
    const {'1': 'external_account', '3': 3, '4': 1, '5': 11, '6': '.WebAPI_1.ExternalAccount', '10': 'externalAccount'},
    const {'1': 'qty', '3': 4, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'qty'},
    const {'1': 'side', '3': 5, '4': 1, '5': 13, '10': 'side'},
    const {'1': 'extra_attributes', '3': 6, '4': 3, '5': 11, '6': '.shared_1.NamedValue', '10': 'extraAttributes'},
  ],
};

const ExternalAccount$json = const {
  '1': 'ExternalAccount',
  '2': const [
    const {'1': 'external_account_number', '3': 1, '4': 1, '5': 9, '10': 'externalAccountNumber'},
    const {'1': 'account_type', '3': 2, '4': 1, '5': 9, '10': 'accountType'},
    const {'1': 'account_origin', '3': 3, '4': 1, '5': 9, '10': 'accountOrigin'},
    const {'1': 'give_up_member_id', '3': 4, '4': 1, '5': 9, '10': 'giveUpMemberId'},
  ],
};

const UserAttribute$json = const {
  '1': 'UserAttribute',
  '2': const [
    const {'1': 'name', '3': 1, '4': 2, '5': 9, '10': 'name'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
    const {'1': 'deleted', '3': 3, '4': 1, '5': 8, '10': 'deleted'},
  ],
};

const SyntheticStrategyProperties$json = const {
  '1': 'SyntheticStrategyProperties',
  '2': const [
    const {'1': 'strategy_trading_parameters', '3': 1, '4': 1, '5': 11, '6': '.WebAPI_1.StrategyTradingParameters', '10': 'strategyTradingParameters'},
    const {'1': 'origin_order_id', '3': 2, '4': 1, '5': 9, '10': 'originOrderId'},
    const {'1': 'root_order_id', '3': 3, '4': 1, '5': 9, '10': 'rootOrderId'},
    const {'1': 'node_index', '3': 4, '4': 1, '5': 13, '10': 'nodeIndex'},
  ],
};

const ModifyOrder$json = const {
  '1': 'ModifyOrder',
  '2': const [
    const {'1': 'order_id', '3': 1, '4': 2, '5': 9, '10': 'orderId'},
    const {'1': 'account_id', '3': 2, '4': 2, '5': 17, '10': 'accountId'},
    const {'1': 'orig_cl_order_id', '3': 3, '4': 2, '5': 9, '10': 'origClOrderId'},
    const {'1': 'cl_order_id', '3': 4, '4': 2, '5': 9, '10': 'clOrderId'},
    const {
      '1': 'when_utc_time',
      '3': 5,
      '4': 1,
      '5': 18,
      '8': const {'3': true},
      '10': 'whenUtcTime',
    },
    const {'1': 'when_utc_timestamp', '3': 18, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'whenUtcTimestamp'},
    const {
      '1': 'uint32_qty',
      '3': 6,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32Qty',
    },
    const {
      '1': 'uint32_visible_qty',
      '3': 7,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32VisibleQty',
    },
    const {
      '1': 'uint32_min_visible_qty',
      '3': 8,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32MinVisibleQty',
    },
    const {'1': 'qty', '3': 23, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'qty'},
    const {'1': 'visible_qty', '3': 24, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'visibleQty'},
    const {'1': 'min_visible_qty', '3': 25, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'minVisibleQty'},
    const {'1': 'scaled_limit_price', '3': 9, '4': 1, '5': 18, '10': 'scaledLimitPrice'},
    const {'1': 'scaled_stop_price', '3': 10, '4': 1, '5': 18, '10': 'scaledStopPrice'},
    const {
      '1': 'activation_utc_time',
      '3': 11,
      '4': 1,
      '5': 18,
      '8': const {'3': true},
      '10': 'activationUtcTime',
    },
    const {'1': 'activation_utc_timestamp', '3': 19, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'activationUtcTimestamp'},
    const {'1': 'remove_activation_time', '3': 12, '4': 1, '5': 8, '10': 'removeActivationTime'},
    const {
      '1': 'suspension_utc_time',
      '3': 13,
      '4': 1,
      '5': 18,
      '8': const {'3': true},
      '10': 'suspensionUtcTime',
    },
    const {'1': 'suspension_utc_timestamp', '3': 20, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'suspensionUtcTimestamp'},
    const {'1': 'remove_suspension_utc_time', '3': 14, '4': 1, '5': 8, '10': 'removeSuspensionUtcTime'},
    const {'1': 'duration', '3': 15, '4': 1, '5': 13, '10': 'duration'},
    const {'1': 'good_thru_date', '3': 16, '4': 1, '5': 18, '10': 'goodThruDate'},
    const {
      '1': 'good_thru_utc_time',
      '3': 17,
      '4': 1,
      '5': 18,
      '8': const {'3': true},
      '10': 'goodThruUtcTime',
    },
    const {'1': 'good_thru_utc_timestamp', '3': 21, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'goodThruUtcTimestamp'},
    const {'1': 'discretionary_offset', '3': 22, '4': 1, '5': 13, '10': 'discretionaryOffset'},
    const {'1': 'extra_attribute', '3': 26, '4': 3, '5': 11, '6': '.shared_1.NamedValue', '10': 'extraAttribute'},
    const {'1': 'execution_source_code', '3': 27, '4': 1, '5': 9, '10': 'executionSourceCode'},
  ],
};

const CancelOrder$json = const {
  '1': 'CancelOrder',
  '2': const [
    const {'1': 'order_id', '3': 1, '4': 2, '5': 9, '10': 'orderId'},
    const {'1': 'account_id', '3': 2, '4': 2, '5': 17, '10': 'accountId'},
    const {'1': 'orig_cl_order_id', '3': 3, '4': 2, '5': 9, '10': 'origClOrderId'},
    const {'1': 'cl_order_id', '3': 4, '4': 2, '5': 9, '10': 'clOrderId'},
    const {
      '1': 'when_utc_time',
      '3': 5,
      '4': 1,
      '5': 18,
      '8': const {'3': true},
      '10': 'whenUtcTime',
    },
    const {'1': 'when_utc_timestamp', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'whenUtcTimestamp'},
    const {'1': 'extra_attribute', '3': 7, '4': 3, '5': 11, '6': '.shared_1.NamedValue', '10': 'extraAttribute'},
  ],
};

const AccountOrderFilter$json = const {
  '1': 'AccountOrderFilter',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 2, '5': 17, '10': 'accountId'},
    const {'1': 'mine', '3': 2, '4': 1, '5': 8, '7': 'true', '10': 'mine'},
    const {'1': 'suspended', '3': 3, '4': 1, '5': 8, '7': 'false', '10': 'suspended'},
    const {'1': 'side', '3': 4, '4': 1, '5': 13, '10': 'side'},
    const {'1': 'contract_id', '3': 5, '4': 1, '5': 13, '10': 'contractId'},
    const {'1': 'current_day_only', '3': 6, '4': 1, '5': 8, '7': 'false', '10': 'currentDayOnly'},
  ],
};

const CancelAllOrders$json = const {
  '1': 'CancelAllOrders',
  '2': const [
    const {
      '1': 'when_utc_time',
      '3': 1,
      '4': 1,
      '5': 18,
      '8': const {'3': true},
      '10': 'whenUtcTime',
    },
    const {'1': 'when_utc_timestamp', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'whenUtcTimestamp'},
    const {'1': 'cl_order_id', '3': 2, '4': 1, '5': 9, '10': 'clOrderId'},
    const {'1': 'account_order_filter', '3': 3, '4': 3, '5': 11, '6': '.WebAPI_1.AccountOrderFilter', '10': 'accountOrderFilter'},
  ],
};

const ActivateOrder$json = const {
  '1': 'ActivateOrder',
  '2': const [
    const {'1': 'order_id', '3': 1, '4': 2, '5': 9, '10': 'orderId'},
    const {'1': 'account_id', '3': 2, '4': 2, '5': 17, '10': 'accountId'},
    const {'1': 'orig_cl_order_id', '3': 3, '4': 2, '5': 9, '10': 'origClOrderId'},
    const {'1': 'cl_order_id', '3': 4, '4': 2, '5': 9, '10': 'clOrderId'},
    const {
      '1': 'when_utc_time',
      '3': 5,
      '4': 1,
      '5': 18,
      '8': const {'3': true},
      '10': 'whenUtcTime',
    },
    const {'1': 'when_utc_timestamp', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'whenUtcTimestamp'},
    const {'1': 'extra_attribute', '3': 7, '4': 3, '5': 11, '6': '.shared_1.NamedValue', '10': 'extraAttribute'},
    const {'1': 'execution_source_code', '3': 8, '4': 1, '5': 9, '10': 'executionSourceCode'},
  ],
};

const ModifyUserAttributes$json = const {
  '1': 'ModifyUserAttributes',
  '2': const [
    const {'1': 'chain_order_id', '3': 1, '4': 2, '5': 9, '10': 'chainOrderId'},
    const {'1': 'account_id', '3': 2, '4': 2, '5': 17, '10': 'accountId'},
    const {'1': 'user_attribute', '3': 3, '4': 3, '5': 11, '6': '.WebAPI_1.UserAttribute', '10': 'userAttribute'},
    const {'1': 'is_checked', '3': 4, '4': 1, '5': 8, '10': 'isChecked'},
  ],
};

const NewCompoundOrder$json = const {
  '1': 'NewCompoundOrder',
  '2': const [
    const {'1': 'compound_order', '3': 1, '4': 2, '5': 11, '6': '.WebAPI_1.CompoundOrder', '10': 'compoundOrder'},
    const {'1': 'partial_fills_handling', '3': 2, '4': 1, '5': 8, '7': 'true', '10': 'partialFillsHandling'},
  ],
};

const CompoundOrder$json = const {
  '1': 'CompoundOrder',
  '2': const [
    const {'1': 'type', '3': 1, '4': 2, '5': 13, '10': 'type'},
    const {'1': 'cl_compound_id', '3': 2, '4': 2, '5': 9, '10': 'clCompoundId'},
    const {'1': 'compound_order_entry', '3': 3, '4': 3, '5': 11, '6': '.WebAPI_1.CompoundOrderEntry', '10': 'compoundOrderEntry'},
    const {'1': 'profit_tick_offset', '3': 4, '4': 1, '5': 17, '10': 'profitTickOffset'},
    const {'1': 'loss_tick_offset', '3': 5, '4': 1, '5': 17, '10': 'lossTickOffset'},
    const {'1': 'stop_limit_tick_offset', '3': 6, '4': 1, '5': 17, '10': 'stopLimitTickOffset'},
  ],
  '4': const [CompoundOrder_Type$json],
};

const CompoundOrder_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'OPO', '2': 1},
    const {'1': 'OCO', '2': 2},
    const {'1': 'INDEPENDENT', '2': 3},
  ],
};

const UseOrder$json = const {
  '1': 'UseOrder',
  '2': const [
    const {'1': 'order_id', '3': 1, '4': 2, '5': 9, '10': 'orderId'},
    const {'1': 'account_id', '3': 2, '4': 2, '5': 17, '10': 'accountId'},
  ],
};

const CompoundOrderEntry$json = const {
  '1': 'CompoundOrderEntry',
  '2': const [
    const {'1': 'order', '3': 1, '4': 1, '5': 11, '6': '.WebAPI_1.Order', '10': 'order'},
    const {'1': 'compound_order', '3': 2, '4': 1, '5': 11, '6': '.WebAPI_1.CompoundOrder', '10': 'compoundOrder'},
    const {'1': 'use_order', '3': 3, '4': 1, '5': 11, '6': '.WebAPI_1.UseOrder', '10': 'useOrder'},
  ],
};

const SuspendOrder$json = const {
  '1': 'SuspendOrder',
  '2': const [
    const {'1': 'order_id', '3': 1, '4': 2, '5': 9, '10': 'orderId'},
    const {'1': 'account_id', '3': 2, '4': 2, '5': 17, '10': 'accountId'},
    const {'1': 'orig_cl_order_id', '3': 3, '4': 2, '5': 9, '10': 'origClOrderId'},
    const {'1': 'cl_order_id', '3': 4, '4': 2, '5': 9, '10': 'clOrderId'},
    const {
      '1': 'when_utc_time',
      '3': 5,
      '4': 1,
      '5': 18,
      '8': const {'3': true},
      '10': 'whenUtcTime',
    },
    const {'1': 'when_utc_timestamp', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'whenUtcTimestamp'},
    const {
      '1': 'activation_utc_time',
      '3': 6,
      '4': 1,
      '5': 18,
      '8': const {'3': true},
      '10': 'activationUtcTime',
    },
    const {'1': 'activation_utc_timestamp', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'activationUtcTimestamp'},
    const {'1': 'extra_attribute', '3': 9, '4': 3, '5': 11, '6': '.shared_1.NamedValue', '10': 'extraAttribute'},
  ],
};

const Commission$json = const {
  '1': 'Commission',
  '2': const [
    const {'1': 'commission_currency', '3': 1, '4': 2, '5': 9, '10': 'commissionCurrency'},
    const {'1': 'commission', '3': 2, '4': 2, '5': 1, '10': 'commission'},
  ],
};

const OrderStatus$json = const {
  '1': 'OrderStatus',
  '2': const [
    const {'1': 'subscription_id', '3': 1, '4': 3, '5': 13, '10': 'subscriptionId'},
    const {'1': 'is_snapshot', '3': 2, '4': 1, '5': 8, '10': 'isSnapshot'},
    const {'1': 'status', '3': 3, '4': 2, '5': 13, '10': 'status'},
    const {'1': 'order_id', '3': 4, '4': 2, '5': 9, '10': 'orderId'},
    const {'1': 'chain_order_id', '3': 5, '4': 2, '5': 9, '10': 'chainOrderId'},
    const {'1': 'exec_order_id', '3': 6, '4': 1, '5': 9, '10': 'execOrderId'},
    const {'1': 'detailed_dom_order_id', '3': 36, '4': 1, '5': 9, '10': 'detailedDomOrderId'},
    const {
      '1': 'status_utc_time',
      '3': 7,
      '4': 1,
      '5': 18,
      '8': const {'3': true},
      '10': 'statusUtcTime',
    },
    const {'1': 'status_utc_timestamp', '3': 24, '4': 2, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'statusUtcTimestamp'},
    const {
      '1': 'submission_utc_time',
      '3': 8,
      '4': 1,
      '5': 18,
      '8': const {'3': true},
      '10': 'submissionUtcTime',
    },
    const {'1': 'submission_utc_timestamp', '3': 25, '4': 2, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'submissionUtcTimestamp'},
    const {
      '1': 'uint32_fill_qty',
      '3': 9,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32FillQty',
    },
    const {'1': 'fill_qty', '3': 28, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'fillQty'},
    const {'1': 'fill_cnt', '3': 10, '4': 2, '5': 13, '10': 'fillCnt'},
    const {'1': 'scaled_avg_fill_price', '3': 11, '4': 2, '5': 18, '10': 'scaledAvgFillPrice'},
    const {'1': 'avg_fill_price_correct', '3': 27, '4': 2, '5': 1, '10': 'avgFillPriceCorrect'},
    const {
      '1': 'active_at_utc_time',
      '3': 12,
      '4': 1,
      '5': 18,
      '8': const {'3': true},
      '10': 'activeAtUtcTime',
    },
    const {'1': 'active_at_utc_timestamp', '3': 26, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'activeAtUtcTimestamp'},
    const {
      '1': 'uint32_remaining_qty',
      '3': 13,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32RemainingQty',
    },
    const {'1': 'remaining_qty', '3': 29, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'remainingQty'},
    const {'1': 'order', '3': 14, '4': 1, '5': 11, '6': '.WebAPI_1.Order', '10': 'order'},
    const {'1': 'transaction_status', '3': 15, '4': 3, '5': 11, '6': '.WebAPI_1.TransactionStatus', '10': 'transactionStatus'},
    const {'1': 'reject_utc_timestamp', '3': 30, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'rejectUtcTimestamp'},
    const {'1': 'reject_message', '3': 31, '4': 1, '5': 9, '10': 'rejectMessage'},
    const {'1': 'cancel_utc_timestamp', '3': 32, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'cancelUtcTimestamp'},
    const {'1': 'fill_utc_timestamp', '3': 33, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'fillUtcTimestamp'},
    const {
      '1': 'has_fill_with_modified_qty',
      '3': 34,
      '4': 1,
      '5': 8,
      '8': const {'3': true},
      '10': 'hasFillWithModifiedQty',
    },
    const {
      '1': 'has_fill_with_modified_price',
      '3': 35,
      '4': 1,
      '5': 8,
      '8': const {'3': true},
      '10': 'hasFillWithModifiedPrice',
    },
    const {'1': 'entered_by_user', '3': 16, '4': 2, '5': 9, '10': 'enteredByUser'},
    const {'1': 'first_statement_date', '3': 17, '4': 2, '5': 18, '10': 'firstStatementDate'},
    const {'1': 'last_statement_date', '3': 18, '4': 1, '5': 18, '10': 'lastStatementDate'},
    const {'1': 'contract_metadata', '3': 19, '4': 3, '5': 11, '6': '.WebAPI_1.ContractMetadata', '10': 'contractMetadata'},
    const {'1': 'account_id', '3': 20, '4': 2, '5': 17, '10': 'accountId'},
    const {'1': 'compound_order_structure', '3': 21, '4': 1, '5': 11, '6': '.WebAPI_1.CompoundOrderStructure', '10': 'compoundOrderStructure'},
    const {'1': 'hang_count', '3': 22, '4': 1, '5': 13, '10': 'hangCount'},
    const {'1': 'strategy_properties', '3': 23, '4': 1, '5': 11, '6': '.WebAPI_1.SyntheticStrategyProperties', '10': 'strategyProperties'},
    const {'1': 'cross_transaction_id', '3': 37, '4': 1, '5': 9, '10': 'crossTransactionId'},
  ],
};

const TransactionStatus$json = const {
  '1': 'TransactionStatus',
  '2': const [
    const {'1': 'status', '3': 1, '4': 2, '5': 13, '10': 'status'},
    const {'1': 'trans_id', '3': 2, '4': 2, '5': 4, '10': 'transId'},
    const {
      '1': 'trans_utc_time',
      '3': 3,
      '4': 1,
      '5': 18,
      '8': const {'3': true},
      '10': 'transUtcTime',
    },
    const {'1': 'trans_utc_timestamp', '3': 40, '4': 2, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'transUtcTimestamp'},
    const {'1': 'ref_trans_id', '3': 4, '4': 1, '5': 4, '10': 'refTransId'},
    const {'1': 'orig_cl_order_id', '3': 5, '4': 1, '5': 9, '10': 'origClOrderId'},
    const {'1': 'cl_order_id', '3': 6, '4': 2, '5': 9, '10': 'clOrderId'},
    const {
      '1': 'uint32_fill_qty',
      '3': 7,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32FillQty',
    },
    const {'1': 'fill_qty', '3': 52, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'fillQty'},
    const {'1': 'scaled_fill_price', '3': 8, '4': 1, '5': 18, '10': 'scaledFillPrice'},
    const {'1': 'trade', '3': 9, '4': 3, '5': 11, '6': '.WebAPI_1.Trade', '10': 'trade'},
    const {'1': 'strategy_leg_fills', '3': 38, '4': 3, '5': 11, '6': '.WebAPI_1.StrategyLegFill', '10': 'strategyLegFills'},
    const {'1': 'synthetic_hang', '3': 39, '4': 1, '5': 11, '6': '.WebAPI_1.SyntheticHang', '10': 'syntheticHang'},
    const {
      '1': 'uint32_prev_order_qty',
      '3': 10,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32PrevOrderQty',
    },
    const {'1': 'prev_order_qty', '3': 53, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'prevOrderQty'},
    const {
      '1': 'uint32_order_qty',
      '3': 11,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32OrderQty',
    },
    const {'1': 'order_qty', '3': 54, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'orderQty'},
    const {'1': 'scaled_prev_limit_price', '3': 12, '4': 1, '5': 18, '10': 'scaledPrevLimitPrice'},
    const {'1': 'scaled_limit_price', '3': 13, '4': 1, '5': 18, '10': 'scaledLimitPrice'},
    const {'1': 'scaled_prev_stop_price', '3': 14, '4': 1, '5': 18, '10': 'scaledPrevStopPrice'},
    const {'1': 'scaled_stop_price', '3': 15, '4': 1, '5': 18, '10': 'scaledStopPrice'},
    const {
      '1': 'uint32_prev_visible_qty',
      '3': 16,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32PrevVisibleQty',
    },
    const {'1': 'prev_visible_qty', '3': 55, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'prevVisibleQty'},
    const {
      '1': 'uint32_visible_qty',
      '3': 17,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32VisibleQty',
    },
    const {'1': 'visible_qty', '3': 56, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'visibleQty'},
    const {
      '1': 'uint32_prev_min_visible_qty',
      '3': 18,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32PrevMinVisibleQty',
    },
    const {'1': 'prev_min_visible_qty', '3': 57, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'prevMinVisibleQty'},
    const {
      '1': 'uint32_min_visible_qty',
      '3': 19,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32MinVisibleQty',
    },
    const {'1': 'min_visible_qty', '3': 58, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'minVisibleQty'},
    const {
      '1': 'uint32_prev_fill_qty',
      '3': 20,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32PrevFillQty',
    },
    const {'1': 'prev_fill_qty', '3': 59, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'prevFillQty'},
    const {'1': 'scaled_prev_fill_price', '3': 21, '4': 1, '5': 18, '10': 'scaledPrevFillPrice'},
    const {'1': 'prev_order_type', '3': 22, '4': 1, '5': 13, '10': 'prevOrderType'},
    const {'1': 'order_type', '3': 23, '4': 1, '5': 13, '10': 'orderType'},
    const {'1': 'prev_exec_instruction', '3': 24, '4': 3, '5': 13, '10': 'prevExecInstruction'},
    const {'1': 'exec_instruction', '3': 25, '4': 3, '5': 13, '10': 'execInstruction'},
    const {'1': 'prev_duration', '3': 26, '4': 1, '5': 13, '10': 'prevDuration'},
    const {'1': 'duration', '3': 27, '4': 1, '5': 13, '10': 'duration'},
    const {'1': 'prev_good_thru_date', '3': 28, '4': 1, '5': 18, '10': 'prevGoodThruDate'},
    const {'1': 'good_thru_date', '3': 29, '4': 1, '5': 18, '10': 'goodThruDate'},
    const {'1': 'reject_code', '3': 30, '4': 1, '5': 13, '10': 'rejectCode'},
    const {'1': 'fill_counterparty', '3': 31, '4': 1, '5': 9, '10': 'fillCounterparty'},
    const {'1': 'route_cl_order_id', '3': 32, '4': 1, '5': 9, '10': 'routeClOrderId'},
    const {'1': 'text_message', '3': 33, '4': 1, '5': 9, '10': 'textMessage'},
    const {
      '1': 'prev_good_thru_utc_time',
      '3': 34,
      '4': 1,
      '5': 18,
      '8': const {'3': true},
      '10': 'prevGoodThruUtcTime',
    },
    const {'1': 'prev_good_thru_utc_timestamp', '3': 41, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'prevGoodThruUtcTimestamp'},
    const {
      '1': 'good_thru_utc_time',
      '3': 35,
      '4': 1,
      '5': 18,
      '8': const {'3': true},
      '10': 'goodThruUtcTime',
    },
    const {'1': 'good_thru_utc_timestamp', '3': 42, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'goodThruUtcTimestamp'},
    const {'1': 'is_aggressive', '3': 64, '4': 1, '5': 8, '10': 'isAggressive'},
    const {'1': 'client_regulatory_algorithm_id', '3': 36, '4': 1, '5': 13, '10': 'clientRegulatoryAlgorithmId'},
    const {'1': 'effective_regulatory_algorithm_id', '3': 37, '4': 1, '5': 13, '10': 'effectiveRegulatoryAlgorithmId'},
    const {'1': 'mifid_algorithm_id', '3': 43, '4': 1, '5': 9, '10': 'mifidAlgorithmId'},
    const {'1': 'mifid_algorithm_id_type', '3': 44, '4': 1, '5': 13, '10': 'mifidAlgorithmIdType'},
    const {'1': 'mifid_applied_algorithm_id', '3': 45, '4': 1, '5': 9, '10': 'mifidAppliedAlgorithmId'},
    const {'1': 'mifid_applied_algorithm_id_type', '3': 46, '4': 1, '5': 13, '10': 'mifidAppliedAlgorithmIdType'},
    const {'1': 'mifid_execution_decision', '3': 47, '4': 1, '5': 9, '10': 'mifidExecutionDecision'},
    const {'1': 'open_close_effect', '3': 48, '4': 1, '5': 13, '10': 'openCloseEffect'},
    const {'1': 'speculation_type', '3': 49, '4': 1, '5': 13, '10': 'speculationType'},
    const {'1': 'prev_discretionary_offset', '3': 50, '4': 1, '5': 13, '10': 'prevDiscretionaryOffset'},
    const {'1': 'discretionary_offset', '3': 51, '4': 1, '5': 13, '10': 'discretionaryOffset'},
    const {'1': 'fill_commission', '3': 60, '4': 1, '5': 11, '6': '.WebAPI_1.Commission', '10': 'fillCommission'},
    const {'1': 'mifid_investment_decision', '3': 61, '4': 1, '5': 9, '10': 'mifidInvestmentDecision'},
    const {'1': 'mifid_investment_decision_is_algo', '3': 62, '4': 1, '5': 8, '10': 'mifidInvestmentDecisionIsAlgo'},
    const {'1': 'execution_source_code', '3': 63, '4': 1, '5': 9, '10': 'executionSourceCode'},
    const {'1': 'is_automated', '3': 65, '4': 1, '5': 8, '10': 'isAutomated'},
  ],
};

const Trade$json = const {
  '1': 'Trade',
  '2': const [
    const {'1': 'trade_id', '3': 1, '4': 2, '5': 9, '10': 'tradeId'},
    const {'1': 'contract_id', '3': 2, '4': 2, '5': 13, '10': 'contractId'},
    const {'1': 'statement_date', '3': 3, '4': 2, '5': 18, '10': 'statementDate'},
    const {
      '1': 'trade_utc_time',
      '3': 4,
      '4': 1,
      '5': 18,
      '8': const {'3': true},
      '10': 'tradeUtcTime',
    },
    const {'1': 'trade_utc_timestamp', '3': 12, '4': 2, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'tradeUtcTimestamp'},
    const {'1': 'trade_date', '3': 5, '4': 2, '5': 18, '10': 'tradeDate'},
    const {'1': 'scaled_price', '3': 6, '4': 2, '5': 18, '10': 'scaledPrice'},
    const {'1': 'price_correct', '3': 13, '4': 2, '5': 1, '10': 'priceCorrect'},
    const {'1': 'side', '3': 7, '4': 2, '5': 13, '10': 'side'},
    const {
      '1': 'uint32_qty',
      '3': 8,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32Qty',
    },
    const {'1': 'qty', '3': 16, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'qty'},
    const {'1': 'trade_counterparty', '3': 9, '4': 1, '5': 9, '10': 'tradeCounterparty'},
    const {'1': 'is_aggressive', '3': 10, '4': 1, '5': 8, '10': 'isAggressive'},
    const {'1': 'leg_execution_id', '3': 11, '4': 1, '5': 9, '10': 'legExecutionId'},
    const {'1': 'open_close_effect', '3': 14, '4': 1, '5': 13, '10': 'openCloseEffect'},
    const {'1': 'speculation_type', '3': 15, '4': 1, '5': 13, '10': 'speculationType'},
  ],
};

const StrategyLegFill$json = const {
  '1': 'StrategyLegFill',
  '2': const [
    const {'1': 'leg_order_id', '3': 1, '4': 2, '5': 9, '10': 'legOrderId'},
    const {'1': 'leg_execution_id', '3': 2, '4': 2, '5': 9, '10': 'legExecutionId'},
    const {'1': 'qty', '3': 3, '4': 2, '5': 1, '10': 'qty'},
  ],
};

const SyntheticHang$json = const {
  '1': 'SyntheticHang',
  '2': const [
    const {'1': 'hang_id', '3': 1, '4': 2, '5': 17, '10': 'hangId'},
    const {
      '1': 'uint32_hung_qty',
      '3': 2,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32HungQty',
    },
    const {'1': 'hung_qty', '3': 4, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'hungQty'},
    const {'1': 'order_id', '3': 3, '4': 3, '5': 9, '10': 'orderId'},
  ],
};

const CompoundOrderStructure$json = const {
  '1': 'CompoundOrderStructure',
  '2': const [
    const {'1': 'type', '3': 1, '4': 2, '5': 13, '10': 'type'},
    const {'1': 'cl_compound_id', '3': 2, '4': 2, '5': 9, '10': 'clCompoundId'},
    const {'1': 'compound_order_entry', '3': 3, '4': 3, '5': 11, '6': '.WebAPI_1.CompoundOrderStructureEntry', '10': 'compoundOrderEntry'},
    const {'1': 'profit_offset', '3': 4, '4': 1, '5': 17, '10': 'profitOffset'},
    const {'1': 'loss_offset', '3': 5, '4': 1, '5': 17, '10': 'lossOffset'},
    const {'1': 'stop_limit_offset', '3': 6, '4': 1, '5': 17, '10': 'stopLimitOffset'},
  ],
};

const CompoundOrderStructureEntry$json = const {
  '1': 'CompoundOrderStructureEntry',
  '2': const [
    const {'1': 'chain_order_id', '3': 1, '4': 1, '5': 9, '10': 'chainOrderId'},
    const {'1': 'compound_order_structure', '3': 2, '4': 1, '5': 11, '6': '.WebAPI_1.CompoundOrderStructure', '10': 'compoundOrderStructure'},
  ],
};

const StrategyOrderLegParameters$json = const {
  '1': 'StrategyOrderLegParameters',
  '2': const [
    const {'1': 'node_index', '3': 1, '4': 2, '5': 13, '10': 'nodeIndex'},
    const {'1': 'account_id', '3': 2, '4': 1, '5': 17, '10': 'accountId'},
    const {'1': 'open_close_instruction', '3': 3, '4': 1, '5': 13, '10': 'openCloseInstruction'},
    const {'1': 'speculation_type', '3': 4, '4': 1, '5': 13, '10': 'speculationType'},
  ],
};

const StrategyMarketOrderParameters$json = const {
  '1': 'StrategyMarketOrderParameters',
  '2': const [
    const {'1': 'node_index', '3': 1, '4': 2, '5': 13, '10': 'nodeIndex'},
    const {'1': 'replenish_on_primary_fill', '3': 2, '4': 1, '5': 8, '10': 'replenishOnPrimaryFill'},
  ],
};

const PrimaryOrdersLimit$json = const {
  '1': 'PrimaryOrdersLimit',
  '2': const [
    const {
      '1': 'uint32_min_qty_increment',
      '3': 1,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32MinQtyIncrement',
    },
    const {'1': 'min_qty_increment', '3': 18, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'minQtyIncrement'},
    const {'1': 'queue_holders_min_size', '3': 2, '4': 1, '5': 13, '10': 'queueHoldersMinSize'},
    const {'1': 'queue_holders_max_size', '3': 3, '4': 1, '5': 13, '10': 'queueHoldersMaxSize'},
    const {'1': 'queue_holders_distance', '3': 4, '4': 1, '5': 13, '10': 'queueHoldersDistance'},
    const {'1': 'order_size_restore_threshold', '3': 5, '4': 1, '5': 13, '10': 'orderSizeRestoreThreshold'},
    const {
      '1': 'uint32_visible_qty',
      '3': 6,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32VisibleQty',
    },
    const {'1': 'visible_qty', '3': 19, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'visibleQty'},
    const {
      '1': 'uint32_min_visible_qty',
      '3': 7,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32MinVisibleQty',
    },
    const {'1': 'min_visible_qty', '3': 20, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'minVisibleQty'},
    const {'1': 'working_orders_price_range', '3': 8, '4': 1, '5': 13, '10': 'workingOrdersPriceRange'},
    const {'1': 'min_price_change', '3': 9, '4': 1, '5': 13, '10': 'minPriceChange'},
    const {'1': 'primary_orders_fifo_queue_size', '3': 10, '4': 1, '5': 13, '10': 'primaryOrdersFifoQueueSize'},
    const {'1': 'force_update_period', '3': 11, '4': 1, '5': 13, '10': 'forceUpdatePeriod'},
    const {'1': 'ignore_observed_markets', '3': 12, '4': 1, '5': 8, '10': 'ignoreObservedMarkets'},
    const {'1': 'max_dimming', '3': 13, '4': 1, '5': 13, '10': 'maxDimming'},
    const {'1': 'far_from_market_mode', '3': 14, '4': 1, '5': 13, '10': 'farFromMarketMode'},
    const {'1': 'ticks_away_to_work', '3': 15, '4': 1, '5': 5, '10': 'ticksAwayToWork'},
    const {'1': 'dom_usage', '3': 16, '4': 1, '5': 13, '10': 'domUsage'},
    const {'1': 'dom_multilevel_qty', '3': 17, '4': 1, '5': 13, '10': 'domMultilevelQty'},
  ],
  '4': const [PrimaryOrdersLimit_FarFromMarketMode$json, PrimaryOrdersLimit_DOMUsageMode$json],
};

const PrimaryOrdersLimit_FarFromMarketMode$json = const {
  '1': 'FarFromMarketMode',
  '2': const [
    const {'1': 'NO_ORDERS', '2': 1},
    const {'1': 'MOVE_AWAY_ONLY', '2': 2},
    const {'1': 'DONT_MOVE', '2': 3},
  ],
};

const PrimaryOrdersLimit_DOMUsageMode$json = const {
  '1': 'DOMUsageMode',
  '2': const [
    const {'1': 'TOP_ONLY', '2': 1},
    const {'1': 'MULTILEVELS', '2': 2},
    const {'1': 'FULL_SIZE_WORST_PRICE', '2': 3},
    const {'1': 'FULL_SIZE_AVERAGE_PRICE', '2': 4},
  ],
};

const PrimaryOrdersSniper$json = const {
  '1': 'PrimaryOrdersSniper',
  '2': const [
    const {'1': 'leg_duration', '3': 1, '4': 2, '5': 13, '10': 'legDuration'},
  ],
  '4': const [PrimaryOrdersSniper_LegDuration$json],
};

const PrimaryOrdersSniper_LegDuration$json = const {
  '1': 'LegDuration',
  '2': const [
    const {'1': 'DAY', '2': 1},
    const {'1': 'FAK', '2': 2},
    const {'1': 'FOK', '2': 3},
  ],
};

const SecondaryOrdersLimit$json = const {
  '1': 'SecondaryOrdersLimit',
  '2': const [
    const {'1': 'initial_offset', '3': 1, '4': 1, '5': 1, '10': 'initialOffset'},
  ],
};

const SecondaryOrdersMarket$json = const {
  '1': 'SecondaryOrdersMarket',
};

const SecondaryOrdersPayUp$json = const {
  '1': 'SecondaryOrdersPayUp',
  '2': const [
    const {'1': 'offset', '3': 1, '4': 2, '5': 1, '10': 'offset'},
    const {'1': 'initial_offset', '3': 2, '4': 1, '5': 1, '10': 'initialOffset'},
    const {'1': 'condition_timeout', '3': 3, '4': 1, '5': 13, '10': 'conditionTimeout'},
    const {
      '1': 'uint32_condition_absolute_volume',
      '3': 4,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32ConditionAbsoluteVolume',
    },
    const {'1': 'condition_absolute_volume', '3': 7, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'conditionAbsoluteVolume'},
    const {'1': 'condition_opposite_volume_ratio', '3': 5, '4': 1, '5': 1, '10': 'conditionOppositeVolumeRatio'},
    const {'1': 'condition_bba_volume_ratio', '3': 6, '4': 1, '5': 1, '10': 'conditionBbaVolumeRatio'},
  ],
};

const SecondaryOrdersTrailing$json = const {
  '1': 'SecondaryOrdersTrailing',
  '2': const [
    const {'1': 'trailing_offset', '3': 1, '4': 2, '5': 1, '10': 'trailingOffset'},
    const {'1': 'trailing_peg', '3': 2, '4': 2, '5': 13, '10': 'trailingPeg'},
    const {'1': 'initial_offset', '3': 3, '4': 1, '5': 1, '10': 'initialOffset'},
    const {'1': 'max_trail', '3': 4, '4': 1, '5': 1, '10': 'maxTrail'},
    const {
      '1': 'uint32_condition_absolute_volume',
      '3': 5,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32ConditionAbsoluteVolume',
    },
    const {'1': 'condition_absolute_volume', '3': 8, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'conditionAbsoluteVolume'},
    const {'1': 'condition_opposite_volume_ratio', '3': 6, '4': 1, '5': 1, '10': 'conditionOppositeVolumeRatio'},
    const {'1': 'condition_bba_volume_ratio', '3': 7, '4': 1, '5': 1, '10': 'conditionBbaVolumeRatio'},
  ],
};

const LimitOrderLegDescription$json = const {
  '1': 'LimitOrderLegDescription',
  '2': const [
    const {'1': 'node_index', '3': 1, '4': 2, '5': 13, '10': 'nodeIndex'},
    const {'1': 'primary_order_limit', '3': 2, '4': 1, '5': 11, '6': '.WebAPI_1.PrimaryOrdersLimit', '10': 'primaryOrderLimit'},
    const {'1': 'primary_order_sniper', '3': 3, '4': 1, '5': 11, '6': '.WebAPI_1.PrimaryOrdersSniper', '10': 'primaryOrderSniper'},
    const {'1': 'secondary_orders_limit', '3': 4, '4': 1, '5': 11, '6': '.WebAPI_1.SecondaryOrdersLimit', '10': 'secondaryOrdersLimit'},
    const {'1': 'secondary_orders_market', '3': 5, '4': 1, '5': 11, '6': '.WebAPI_1.SecondaryOrdersMarket', '10': 'secondaryOrdersMarket'},
    const {'1': 'secondary_orders_payup', '3': 6, '4': 1, '5': 11, '6': '.WebAPI_1.SecondaryOrdersPayUp', '10': 'secondaryOrdersPayup'},
    const {'1': 'secondary_orders_trailing', '3': 7, '4': 1, '5': 11, '6': '.WebAPI_1.SecondaryOrdersTrailing', '10': 'secondaryOrdersTrailing'},
    const {'1': 'proportional_execution_ratio', '3': 8, '4': 1, '5': 1, '10': 'proportionalExecutionRatio'},
    const {'1': 'volume_multiplier', '3': 9, '4': 1, '5': 1, '10': 'volumeMultiplier'},
    const {
      '1': 'uint32_work_threshold',
      '3': 10,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32WorkThreshold',
    },
    const {'1': 'work_threshold', '3': 11, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'workThreshold'},
  ],
};

const PriceShifting$json = const {
  '1': 'PriceShifting',
  '2': const [
    const {'1': 'price_step', '3': 1, '4': 2, '5': 5, '10': 'priceStep'},
    const {
      '1': 'uint32_filled_qty_delta',
      '3': 2,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32FilledQtyDelta',
    },
    const {'1': 'filled_qty_delta', '3': 3, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'filledQtyDelta'},
  ],
};

const StrategyLimitOrderParameters$json = const {
  '1': 'StrategyLimitOrderParameters',
  '2': const [
    const {'1': 'node_index', '3': 1, '4': 2, '5': 13, '10': 'nodeIndex'},
    const {'1': 'replenish_on_primary_fill', '3': 2, '4': 1, '5': 8, '10': 'replenishOnPrimaryFill'},
    const {'1': 'overfill_mode', '3': 3, '4': 1, '5': 13, '10': 'overfillMode'},
    const {'1': 'align_to_strategy_lots', '3': 4, '4': 1, '5': 13, '10': 'alignToStrategyLots'},
    const {'1': 'pricing_method', '3': 5, '4': 1, '5': 13, '10': 'pricingMethod'},
    const {'1': 'price_shifting', '3': 6, '4': 1, '5': 11, '6': '.WebAPI_1.PriceShifting', '10': 'priceShifting'},
    const {'1': 'leg_description', '3': 7, '4': 3, '5': 11, '6': '.WebAPI_1.LimitOrderLegDescription', '10': 'legDescription'},
  ],
  '4': const [StrategyLimitOrderParameters_OverfillMode$json, StrategyLimitOrderParameters_AlignToStrategyLots$json, StrategyLimitOrderParameters_PricingMethod$json],
};

const StrategyLimitOrderParameters_OverfillMode$json = const {
  '1': 'OverfillMode',
  '2': const [
    const {'1': 'MANUAL', '2': 1},
    const {'1': 'AUTOMATIC_HEDGING', '2': 2},
    const {'1': 'AVOID_OVERFILLS', '2': 3},
  ],
};

const StrategyLimitOrderParameters_AlignToStrategyLots$json = const {
  '1': 'AlignToStrategyLots',
  '2': const [
    const {'1': 'NONE', '2': 1},
    const {'1': 'SECONDARY_ONLY', '2': 2},
    const {'1': 'ALL', '2': 3},
  ],
};

const StrategyLimitOrderParameters_PricingMethod$json = const {
  '1': 'PricingMethod',
  '2': const [
    const {'1': 'INDEPENDENT_LOT_PRICE', '2': 1},
    const {'1': 'AVERAGE_ORDER_PRICE', '2': 2},
  ],
};

const StrategyStopOrderParameters$json = const {
  '1': 'StrategyStopOrderParameters',
  '2': const [
    const {'1': 'node_index', '3': 1, '4': 2, '5': 13, '10': 'nodeIndex'},
    const {'1': 'stop_side', '3': 2, '4': 2, '5': 13, '10': 'stopSide'},
    const {'1': 'replenish_on_primary_fill', '3': 3, '4': 1, '5': 8, '10': 'replenishOnPrimaryFill'},
  ],
  '4': const [StrategyStopOrderParameters_StopSide$json],
};

const StrategyStopOrderParameters_StopSide$json = const {
  '1': 'StopSide',
  '2': const [
    const {'1': 'BID', '2': 1},
    const {'1': 'ASK', '2': 2},
  ],
};

const MarketTakingParameters$json = const {
  '1': 'MarketTakingParameters',
  '2': const [
    const {'1': 'allocation_percent', '3': 1, '4': 2, '5': 1, '10': 'allocationPercent'},
    const {'1': 'working_timeout', '3': 2, '4': 2, '5': 13, '10': 'workingTimeout'},
    const {'1': 'order_type', '3': 3, '4': 2, '5': 13, '10': 'orderType'},
  ],
  '4': const [MarketTakingParameters_MarketTakingLimitOrderType$json],
};

const MarketTakingParameters_MarketTakingLimitOrderType$json = const {
  '1': 'MarketTakingLimitOrderType',
  '2': const [
    const {'1': 'LMT', '2': 1},
    const {'1': 'MKT', '2': 2},
  ],
};

const MarketMakingParameters$json = const {
  '1': 'MarketMakingParameters',
  '2': const [
    const {'1': 'allocation_percent', '3': 1, '4': 1, '5': 1, '10': 'allocationPercent'},
    const {
      '1': 'uint32_visible_qty',
      '3': 2,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32VisibleQty',
    },
    const {
      '1': 'uint32_min_visible_qty',
      '3': 3,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32MinVisibleQty',
    },
    const {
      '1': 'uint32_native_visible_qty',
      '3': 4,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32NativeVisibleQty',
    },
    const {'1': 'visible_qty', '3': 5, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'visibleQty'},
    const {'1': 'min_visible_qty', '3': 6, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'minVisibleQty'},
    const {'1': 'native_visible_qty', '3': 7, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'nativeVisibleQty'},
  ],
};

const AggregationLegDescription$json = const {
  '1': 'AggregationLegDescription',
  '2': const [
    const {'1': 'node_index', '3': 1, '4': 2, '5': 13, '10': 'nodeIndex'},
    const {
      '1': 'uint32_working_threshold',
      '3': 2,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32WorkingThreshold',
    },
    const {'1': 'working_threshold', '3': 5, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'workingThreshold'},
    const {'1': 'market_taking_parameters', '3': 3, '4': 2, '5': 11, '6': '.WebAPI_1.MarketTakingParameters', '10': 'marketTakingParameters'},
    const {'1': 'market_making_parameters', '3': 4, '4': 2, '5': 11, '6': '.WebAPI_1.MarketMakingParameters', '10': 'marketMakingParameters'},
  ],
};

const StrategyAggregationParameters$json = const {
  '1': 'StrategyAggregationParameters',
  '2': const [
    const {'1': 'node_index', '3': 1, '4': 2, '5': 13, '10': 'nodeIndex'},
    const {'1': 'overfill_mode', '3': 2, '4': 2, '5': 13, '10': 'overfillMode'},
    const {'1': 'price_shifting', '3': 3, '4': 1, '5': 11, '6': '.WebAPI_1.PriceShifting', '10': 'priceShifting'},
    const {'1': 'pattern_legs', '3': 4, '4': 3, '5': 11, '6': '.WebAPI_1.AggregationLegDescription', '10': 'patternLegs'},
  ],
  '4': const [StrategyAggregationParameters_AggrOverfillMode$json],
};

const StrategyAggregationParameters_AggrOverfillMode$json = const {
  '1': 'AggrOverfillMode',
  '2': const [
    const {'1': 'AVOID_OVERFILLS', '2': 1},
    const {'1': 'ACCEPT_OVERFILL', '2': 2},
    const {'1': 'PRESERVE_QUEUE_POSITION', '2': 3},
  ],
};

const StrategyTradingParameters$json = const {
  '1': 'StrategyTradingParameters',
  '2': const [
    const {'1': 'market_order_parameters', '3': 1, '4': 3, '5': 11, '6': '.WebAPI_1.StrategyMarketOrderParameters', '10': 'marketOrderParameters'},
    const {'1': 'limit_order_parameters', '3': 2, '4': 3, '5': 11, '6': '.WebAPI_1.StrategyLimitOrderParameters', '10': 'limitOrderParameters'},
    const {'1': 'stop_order_parameters', '3': 3, '4': 3, '5': 11, '6': '.WebAPI_1.StrategyStopOrderParameters', '10': 'stopOrderParameters'},
    const {'1': 'aggregation_parameters', '3': 4, '4': 3, '5': 11, '6': '.WebAPI_1.StrategyAggregationParameters', '10': 'aggregationParameters'},
    const {'1': 'leg_parameters', '3': 5, '4': 3, '5': 11, '6': '.WebAPI_1.StrategyOrderLegParameters', '10': 'legParameters'},
  ],
};

const PositionStatus$json = const {
  '1': 'PositionStatus',
  '2': const [
    const {'1': 'subscription_id', '3': 1, '4': 3, '5': 13, '10': 'subscriptionId'},
    const {'1': 'is_snapshot', '3': 2, '4': 1, '5': 8, '10': 'isSnapshot'},
    const {'1': 'account_id', '3': 3, '4': 2, '5': 17, '10': 'accountId'},
    const {'1': 'contract_id', '3': 4, '4': 2, '5': 13, '10': 'contractId'},
    const {
      '1': 'is_short_open_position',
      '3': 5,
      '4': 2,
      '5': 8,
      '8': const {'3': true},
      '10': 'isShortOpenPosition',
    },
    const {'1': 'open_position', '3': 6, '4': 3, '5': 11, '6': '.WebAPI_1.OpenPosition', '10': 'openPosition'},
    const {'1': 'purchase_and_sales_group', '3': 7, '4': 3, '5': 11, '6': '.WebAPI_1.PurchaseAndSalesGroup', '10': 'purchaseAndSalesGroup'},
    const {'1': 'contract_metadata', '3': 8, '4': 1, '5': 11, '6': '.WebAPI_1.ContractMetadata', '10': 'contractMetadata'},
    const {'1': 'today_fill_commission', '3': 9, '4': 3, '5': 11, '6': '.WebAPI_1.Commission', '10': 'todayFillCommission'},
  ],
};

const OpenPosition$json = const {
  '1': 'OpenPosition',
  '2': const [
    const {'1': 'id', '3': 1, '4': 2, '5': 17, '10': 'id'},
    const {
      '1': 'uint32_qty',
      '3': 2,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32Qty',
    },
    const {'1': 'qty', '3': 12, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'qty'},
    const {'1': 'price_correct', '3': 3, '4': 2, '5': 1, '10': 'priceCorrect'},
    const {'1': 'trade_date', '3': 4, '4': 2, '5': 18, '10': 'tradeDate'},
    const {'1': 'statement_date', '3': 5, '4': 2, '5': 18, '10': 'statementDate'},
    const {
      '1': 'trade_utc_time',
      '3': 6,
      '4': 1,
      '5': 18,
      '8': const {'3': true},
      '10': 'tradeUtcTime',
    },
    const {'1': 'trade_utc_timestamp', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'tradeUtcTimestamp'},
    const {'1': 'is_aggregated', '3': 7, '4': 2, '5': 8, '10': 'isAggregated'},
    const {'1': 'is_short', '3': 9, '4': 2, '5': 8, '10': 'isShort'},
    const {'1': 'is_yesterday', '3': 10, '4': 1, '5': 8, '7': 'false', '10': 'isYesterday'},
    const {'1': 'speculation_type', '3': 11, '4': 1, '5': 13, '10': 'speculationType'},
  ],
};

const PurchaseAndSalesGroup$json = const {
  '1': 'PurchaseAndSalesGroup',
  '2': const [
    const {'1': 'id', '3': 1, '4': 2, '5': 17, '10': 'id'},
    const {'1': 'realized_profit_loss', '3': 2, '4': 2, '5': 1, '10': 'realizedProfitLoss'},
    const {'1': 'matched_trade', '3': 3, '4': 3, '5': 11, '6': '.WebAPI_1.MatchedTrade', '10': 'matchedTrade'},
  ],
};

const MatchedTrade$json = const {
  '1': 'MatchedTrade',
  '2': const [
    const {
      '1': 'uint32_qty',
      '3': 1,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'uint32Qty',
    },
    const {'1': 'qty', '3': 12, '4': 1, '5': 11, '6': '.cqg.Decimal', '10': 'qty'},
    const {'1': 'is_short', '3': 2, '4': 1, '5': 8, '10': 'isShort'},
    const {'1': 'price', '3': 3, '4': 2, '5': 1, '10': 'price'},
    const {'1': 'trade_date', '3': 4, '4': 2, '5': 18, '10': 'tradeDate'},
    const {'1': 'statement_date', '3': 5, '4': 2, '5': 18, '10': 'statementDate'},
    const {
      '1': 'trade_utc_time',
      '3': 6,
      '4': 1,
      '5': 18,
      '8': const {'3': true},
      '10': 'tradeUtcTime',
    },
    const {'1': 'trade_utc_timestamp', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'tradeUtcTimestamp'},
    const {'1': 'is_aggregated', '3': 7, '4': 2, '5': 8, '10': 'isAggregated'},
    const {'1': 'is_yesterday', '3': 9, '4': 1, '5': 8, '7': 'false', '10': 'isYesterday'},
    const {'1': 'is_close', '3': 10, '4': 1, '5': 8, '10': 'isClose'},
    const {'1': 'speculation_type', '3': 11, '4': 1, '5': 13, '10': 'speculationType'},
  ],
};

const CollateralStatus$json = const {
  '1': 'CollateralStatus',
  '2': const [
    const {'1': 'subscription_id', '3': 1, '4': 3, '5': 13, '10': 'subscriptionId'},
    const {'1': 'is_snapshot', '3': 2, '4': 1, '5': 8, '10': 'isSnapshot'},
    const {'1': 'account_id', '3': 3, '4': 2, '5': 17, '10': 'accountId'},
    const {'1': 'currency', '3': 4, '4': 2, '5': 9, '10': 'currency'},
    const {'1': 'total_margin', '3': 5, '4': 2, '5': 1, '10': 'totalMargin'},
    const {'1': 'position_margin', '3': 11, '4': 1, '5': 1, '10': 'positionMargin'},
    const {'1': 'purchasing_power', '3': 6, '4': 2, '5': 1, '10': 'purchasingPower'},
    const {'1': 'ote', '3': 7, '4': 1, '5': 1, '10': 'ote'},
    const {'1': 'mvo', '3': 8, '4': 1, '5': 1, '10': 'mvo'},
    const {'1': 'mvf', '3': 10, '4': 1, '5': 1, '10': 'mvf'},
    const {'1': 'margin_credit', '3': 9, '4': 1, '5': 1, '10': 'marginCredit'},
  ],
};

const SyntheticLiquidate$json = const {
  '1': 'SyntheticLiquidate',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 2, '5': 17, '10': 'accountId'},
    const {'1': 'order_id', '3': 2, '4': 2, '5': 9, '10': 'orderId'},
    const {'1': 'hang_id', '3': 3, '4': 2, '5': 17, '10': 'hangId'},
    const {
      '1': 'when_utc_time',
      '3': 4,
      '4': 1,
      '5': 18,
      '8': const {'3': true},
      '10': 'whenUtcTime',
    },
    const {'1': 'when_utc_timestamp', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'whenUtcTimestamp'},
  ],
};

const SyntheticScratch$json = const {
  '1': 'SyntheticScratch',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 2, '5': 17, '10': 'accountId'},
    const {'1': 'order_id', '3': 2, '4': 2, '5': 9, '10': 'orderId'},
    const {'1': 'hang_id', '3': 3, '4': 2, '5': 17, '10': 'hangId'},
    const {
      '1': 'when_utc_time',
      '3': 4,
      '4': 1,
      '5': 18,
      '8': const {'3': true},
      '10': 'whenUtcTime',
    },
    const {'1': 'when_utc_timestamp', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'whenUtcTimestamp'},
  ],
};

const GoMarket$json = const {
  '1': 'GoMarket',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 2, '5': 17, '10': 'accountId'},
    const {'1': 'order_id', '3': 2, '4': 2, '5': 9, '10': 'orderId'},
    const {'1': 'hang_id', '3': 3, '4': 1, '5': 17, '10': 'hangId'},
    const {
      '1': 'when_utc_time',
      '3': 4,
      '4': 1,
      '5': 18,
      '8': const {'3': true},
      '10': 'whenUtcTime',
    },
    const {'1': 'when_utc_timestamp', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'whenUtcTimestamp'},
  ],
};

const ApproveOrder$json = const {
  '1': 'ApproveOrder',
  '2': const [
    const {'1': 'order_id', '3': 1, '4': 1, '5': 9, '10': 'orderId'},
    const {'1': 'account_id', '3': 2, '4': 1, '5': 17, '10': 'accountId'},
    const {'1': 'action', '3': 3, '4': 1, '5': 13, '10': 'action'},
    const {'1': 'when_utc_timestamp', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'whenUtcTimestamp'},
    const {'1': 'side_allocation', '3': 5, '4': 1, '5': 11, '6': '.WebAPI_1.SideAllocation', '10': 'sideAllocation'},
    const {'1': 'extra_attributes', '3': 6, '4': 3, '5': 11, '6': '.shared_1.NamedValue', '10': 'extraAttributes'},
  ],
  '4': const [ApproveOrder_Action$json],
};

const ApproveOrder_Action$json = const {
  '1': 'Action',
  '2': const [
    const {'1': 'APPROVE_ORDER_ACTION_APPROVE', '2': 0},
    const {'1': 'APPROVE_ORDER_ACTION_REJECT', '2': 1},
  ],
};

const AccountPositionFilter$json = const {
  '1': 'AccountPositionFilter',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 2, '5': 17, '10': 'accountId'},
    const {'1': 'contract_id', '3': 2, '4': 1, '5': 13, '10': 'contractId'},
    const {'1': 'is_short', '3': 3, '4': 1, '5': 8, '10': 'isShort'},
    const {'1': 'current_day_only', '3': 4, '4': 1, '5': 8, '10': 'currentDayOnly'},
  ],
};

const LiquidateAll$json = const {
  '1': 'LiquidateAll',
  '2': const [
    const {'1': 'account_position_filter', '3': 1, '4': 3, '5': 11, '6': '.WebAPI_1.AccountPositionFilter', '10': 'accountPositionFilter'},
    const {'1': 'when_utc_timestamp', '3': 2, '4': 2, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'whenUtcTimestamp'},
    const {'1': 'execution_source_code', '3': 3, '4': 1, '5': 9, '10': 'executionSourceCode'},
  ],
};

const GoFlat$json = const {
  '1': 'GoFlat',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 3, '5': 17, '10': 'accountId'},
    const {'1': 'when_utc_timestamp', '3': 2, '4': 2, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'whenUtcTimestamp'},
    const {'1': 'execution_source_code', '3': 3, '4': 1, '5': 9, '10': 'executionSourceCode'},
  ],
};

const MarketDataSubscription$json = const {
  '1': 'MarketDataSubscription',
  '2': const [
    const {'1': 'contract_id', '3': 1, '4': 2, '5': 13, '10': 'contractId'},
    const {'1': 'level', '3': 2, '4': 2, '5': 13, '10': 'level'},
    const {'1': 'include_past_market_values', '3': 3, '4': 1, '5': 8, '10': 'includePastMarketValues'},
    const {'1': 'reserved1', '3': 4, '4': 1, '5': 18, '10': 'reserved1'},
    const {'1': 'include_past_quotes', '3': 5, '4': 1, '5': 8, '10': 'includePastQuotes'},
    const {'1': 'include_discretionary_quotes', '3': 6, '4': 1, '5': 8, '10': 'includeDiscretionaryQuotes'},
    const {'1': 'include_session_market_values', '3': 9, '4': 1, '5': 8, '10': 'includeSessionMarketValues'},
    const {'1': 'include_yields', '3': 8, '4': 1, '5': 8, '10': 'includeYields'},
    const {'1': 'include_source_prices', '3': 10, '4': 1, '5': 8, '10': 'includeSourcePrices'},
    const {'1': 'contributor_id', '3': 7, '4': 1, '5': 9, '10': 'contributorId'},
  ],
  '4': const [MarketDataSubscription_Level$json],
  '5': const [
    const {'1': 100, '2': 150},
  ],
};

const MarketDataSubscription_Level$json = const {
  '1': 'Level',
  '2': const [
    const {'1': 'NONE', '2': 0},
    const {'1': 'SETTLEMENTS', '2': 5},
    const {'1': 'MARKET_VALUES', '2': 6},
    const {'1': 'TRADES', '2': 1},
    const {'1': 'TRADES_BBA', '2': 2},
    const {'1': 'TRADES_BBA_VOLUMES', '2': 3},
    const {'1': 'TRADES_BBA_DOM', '2': 4},
    const {'1': 'TRADES_BBA_DETAILED_DOM', '2': 7},
  ],
};

const MarketDataSubscriptionStatus$json = const {
  '1': 'MarketDataSubscriptionStatus',
  '2': const [
    const {'1': 'contract_id', '3': 1, '4': 2, '5': 13, '10': 'contractId'},
    const {'1': 'status_code', '3': 2, '4': 2, '5': 13, '10': 'statusCode'},
    const {'1': 'level', '3': 3, '4': 2, '5': 13, '10': 'level'},
    const {'1': 'text_message', '3': 4, '4': 1, '5': 9, '10': 'textMessage'},
    const {'1': 'reserved1', '3': 5, '4': 1, '5': 18, '10': 'reserved1'},
    const {'1': 'past_quotes_included', '3': 6, '4': 1, '5': 8, '10': 'pastQuotesIncluded'},
    const {'1': 'discretionary_quotes_included', '3': 7, '4': 1, '5': 8, '10': 'discretionaryQuotesIncluded'},
    const {'1': 'session_market_values_included', '3': 10, '4': 1, '5': 8, '10': 'sessionMarketValuesIncluded'},
    const {'1': 'yields_included', '3': 9, '4': 1, '5': 8, '10': 'yieldsIncluded'},
    const {'1': 'source_price_included', '3': 11, '4': 1, '5': 8, '10': 'sourcePriceIncluded'},
    const {'1': 'contributor_id', '3': 8, '4': 1, '5': 9, '10': 'contributorId'},
  ],
  '4': const [MarketDataSubscriptionStatus_StatusCode$json],
  '5': const [
    const {'1': 100, '2': 150},
  ],
};

const MarketDataSubscriptionStatus_StatusCode$json = const {
  '1': 'StatusCode',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'DISCONNECTED', '2': 1},
    const {'1': 'FAILURE', '2': 101},
    const {'1': 'INVALID_PARAMS', '2': 102},
    const {'1': 'ACCESS_DENIED', '2': 103},
    const {'1': 'DELETED', '2': 104},
    const {'1': 'SUBSCRIPTION_LIMIT_VIOLATION', '2': 105},
    const {'1': 'CONTRIBUTOR_REQUIRED', '2': 106},
    const {'1': 'SUBSCRIPTION_RATE_LIMIT_VIOLATION', '2': 107},
    const {'1': 'NOT_SUPPORTED', '2': 110},
  ],
};

const RealTimeMarketData$json = const {
  '1': 'RealTimeMarketData',
  '2': const [
    const {'1': 'contract_id', '3': 1, '4': 2, '5': 13, '10': 'contractId'},
    const {'1': 'quote', '3': 2, '4': 3, '5': 11, '6': '.WebAPI_1.Quote', '10': 'quote'},
    const {'1': 'is_snapshot', '3': 3, '4': 1, '5': 8, '10': 'isSnapshot'},
    const {'1': 'collapsing_level', '3': 4, '4': 1, '5': 13, '10': 'collapsingLevel'},
    const {'1': 'market_values', '3': 5, '4': 3, '5': 11, '6': '.WebAPI_1.MarketValues', '10': 'marketValues'},
    const {'1': 'detailed_dom', '3': 16, '4': 1, '5': 11, '6': '.WebAPI_1.DetailedDOM', '10': 'detailedDom'},
  ],
  '5': const [
    const {'1': 100, '2': 150},
  ],
};

const Quote$json = const {
  '1': 'Quote',
  '2': const [
    const {'1': 'type', '3': 1, '4': 2, '5': 13, '10': 'type'},
    const {'1': 'quote_utc_time', '3': 2, '4': 1, '5': 18, '10': 'quoteUtcTime'},
    const {'1': 'scaled_price', '3': 3, '4': 2, '5': 17, '10': 'scaledPrice'},
    const {'1': 'scaled_source_price', '3': 8, '4': 1, '5': 17, '10': 'scaledSourcePrice'},
    const {'1': 'price_yield', '3': 6, '4': 1, '5': 1, '10': 'priceYield'},
    const {'1': 'scaled_volume', '3': 4, '4': 1, '5': 4, '10': 'scaledVolume'},
    const {'1': 'indicator', '3': 5, '4': 3, '5': 13, '10': 'indicator'},
    const {'1': 'sales_condition', '3': 7, '4': 1, '5': 13, '10': 'salesCondition'},
  ],
  '4': const [Quote_Type$json, Quote_Indicator$json, Quote_SalesCondition$json],
};

const Quote_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'TRADE', '2': 0},
    const {'1': 'BESTBID', '2': 1},
    const {'1': 'BESTASK', '2': 2},
    const {'1': 'BID', '2': 3},
    const {'1': 'ASK', '2': 4},
    const {'1': 'SETTLEMENT', '2': 5},
    const {'1': 'BESTDISCRBID', '2': 6},
    const {'1': 'BESTDISCRASK', '2': 7},
    const {'1': 'DISCRBID', '2': 8},
    const {'1': 'DISCRASK', '2': 9},
  ],
};

const Quote_Indicator$json = const {
  '1': 'Indicator',
  '2': const [
    const {'1': 'OPEN', '2': 1},
    const {'1': 'HIGH', '2': 2},
    const {'1': 'LOW', '2': 3},
    const {'1': 'CLOSE', '2': 4},
    const {'1': 'PAST', '2': 5},
    const {'1': 'FALL_BACK_TO_TRADE_OR_SETTLEMENT', '2': 6},
  ],
};

const Quote_SalesCondition$json = const {
  '1': 'SalesCondition',
  '2': const [
    const {'1': 'HIT', '2': 1},
    const {'1': 'TAKE', '2': 2},
    const {'1': 'SPREAD_LEG', '2': 3},
    const {'1': 'BUY_SIDE_AGGRESSOR', '2': 4},
    const {'1': 'SELL_SIDE_AGGRESSOR', '2': 5},
  ],
};

const MarketValues$json = const {
  '1': 'MarketValues',
  '2': const [
    const {'1': 'scaled_open_price', '3': 1, '4': 1, '5': 17, '10': 'scaledOpenPrice'},
    const {'1': 'scaled_high_price', '3': 2, '4': 1, '5': 17, '10': 'scaledHighPrice'},
    const {'1': 'scaled_low_price', '3': 3, '4': 1, '5': 17, '10': 'scaledLowPrice'},
    const {'1': 'scaled_close_price', '3': 4, '4': 1, '5': 17, '10': 'scaledClosePrice'},
    const {'1': 'scaled_yesterday_settlement', '3': 5, '4': 1, '5': 17, '10': 'scaledYesterdaySettlement'},
    const {'1': 'scaled_total_volume', '3': 6, '4': 1, '5': 4, '10': 'scaledTotalVolume'},
    const {'1': 'scaled_yesterday_close', '3': 7, '4': 1, '5': 17, '10': 'scaledYesterdayClose'},
    const {'1': 'scaled_indicative_open', '3': 8, '4': 1, '5': 17, '10': 'scaledIndicativeOpen'},
    const {'1': 'scaled_indicative_open_volume', '3': 15, '4': 1, '5': 4, '10': 'scaledIndicativeOpenVolume'},
    const {'1': 'day_index', '3': 9, '4': 2, '5': 17, '10': 'dayIndex'},
    const {'1': 'scaled_open_interest', '3': 10, '4': 1, '5': 18, '10': 'scaledOpenInterest'},
    const {'1': 'tick_volume', '3': 11, '4': 1, '5': 13, '10': 'tickVolume'},
    const {'1': 'scaled_settlement', '3': 12, '4': 1, '5': 17, '10': 'scaledSettlement'},
    const {'1': 'scaled_marker_price', '3': 18, '4': 1, '5': 17, '10': 'scaledMarkerPrice'},
    const {'1': 'cleared_fields', '3': 13, '4': 3, '5': 13, '10': 'clearedFields'},
    const {'1': 'trade_date', '3': 14, '4': 2, '5': 18, '10': 'tradeDate'},
    const {'1': 'session_index', '3': 17, '4': 1, '5': 13, '10': 'sessionIndex'},
    const {'1': 'market_yields', '3': 16, '4': 1, '5': 11, '6': '.WebAPI_1.MarketYields', '10': 'marketYields'},
  ],
};

const MarketYields$json = const {
  '1': 'MarketYields',
  '2': const [
    const {'1': 'yield_of_open_price', '3': 1, '4': 1, '5': 1, '10': 'yieldOfOpenPrice'},
    const {'1': 'yield_of_high_price', '3': 2, '4': 1, '5': 1, '10': 'yieldOfHighPrice'},
    const {'1': 'yield_of_low_price', '3': 3, '4': 1, '5': 1, '10': 'yieldOfLowPrice'},
    const {'1': 'yield_of_close_price', '3': 4, '4': 1, '5': 1, '10': 'yieldOfClosePrice'},
    const {'1': 'yield_of_yesterday_settlement', '3': 5, '4': 1, '5': 1, '10': 'yieldOfYesterdaySettlement'},
    const {'1': 'yield_of_yesterday_close', '3': 6, '4': 1, '5': 1, '10': 'yieldOfYesterdayClose'},
    const {'1': 'yield_of_indicative_open', '3': 7, '4': 1, '5': 1, '10': 'yieldOfIndicativeOpen'},
    const {'1': 'yield_of_settlement', '3': 8, '4': 1, '5': 1, '10': 'yieldOfSettlement'},
  ],
};

const DetailedDOM$json = const {
  '1': 'DetailedDOM',
  '2': const [
    const {'1': 'is_detailed_dom_complete', '3': 1, '4': 1, '5': 8, '10': 'isDetailedDomComplete'},
    const {'1': 'is_stale', '3': 2, '4': 1, '5': 8, '10': 'isStale'},
    const {'1': 'is_snapshot', '3': 3, '4': 1, '5': 8, '10': 'isSnapshot'},
    const {'1': 'price_levels', '3': 4, '4': 3, '5': 11, '6': '.WebAPI_1.DetailedDOMAtPrice', '10': 'priceLevels'},
  ],
};

const DetailedDOMAtPrice$json = const {
  '1': 'DetailedDOMAtPrice',
  '2': const [
    const {'1': 'scaled_price', '3': 1, '4': 1, '5': 17, '10': 'scaledPrice'},
    const {'1': 'side', '3': 2, '4': 2, '5': 13, '10': 'side'},
    const {'1': 'is_snapshot', '3': 3, '4': 1, '5': 8, '10': 'isSnapshot'},
    const {'1': 'orders', '3': 4, '4': 3, '5': 11, '6': '.WebAPI_1.DetailedDOMOrder', '10': 'orders'},
  ],
};

const DetailedDOMOrder$json = const {
  '1': 'DetailedDOMOrder',
  '2': const [
    const {'1': 'detailed_dom_order_id', '3': 1, '4': 2, '5': 9, '10': 'detailedDomOrderId'},
    const {'1': 'operation', '3': 2, '4': 1, '5': 13, '10': 'operation'},
    const {'1': 'order_index', '3': 3, '4': 1, '5': 13, '10': 'orderIndex'},
    const {'1': 'scaled_volume', '3': 5, '4': 1, '5': 4, '10': 'scaledVolume'},
    const {'1': 'discretionary_offset', '3': 6, '4': 1, '5': 13, '10': 'discretionaryOffset'},
  ],
  '4': const [DetailedDOMOrder_Operation$json],
};

const DetailedDOMOrder_Operation$json = const {
  '1': 'Operation',
  '2': const [
    const {'1': 'INSERT', '2': 0},
    const {'1': 'REMOVE', '2': 1},
    const {'1': 'MODIFY', '2': 2},
    const {'1': 'MOVE_FROM_PRICE', '2': 3},
    const {'1': 'MOVE_TO_PRICE', '2': 4},
  ],
};

const ReadUserAttributeRequest$json = const {
  '1': 'ReadUserAttributeRequest',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 13, '10': 'requestId'},
    const {'1': 'attribute_name', '3': 2, '4': 3, '5': 9, '10': 'attributeName'},
  ],
};

const ReadUserAttributeResult$json = const {
  '1': 'ReadUserAttributeResult',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 13, '10': 'requestId'},
    const {'1': 'result_code', '3': 2, '4': 2, '5': 13, '10': 'resultCode'},
    const {'1': 'user_attribute', '3': 3, '4': 3, '5': 11, '6': '.WebAPI_1.UserAttribute', '10': 'userAttribute'},
    const {'1': 'text_message', '3': 4, '4': 1, '5': 9, '10': 'textMessage'},
  ],
  '4': const [ReadUserAttributeResult_ResultCode$json],
};

const ReadUserAttributeResult_ResultCode$json = const {
  '1': 'ResultCode',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'FAILURE', '2': 101},
    const {'1': 'REQUEST_RATE_LIMIT_VIOLATION', '2': 102},
  ],
};

const ModifyUserAttributeRequest$json = const {
  '1': 'ModifyUserAttributeRequest',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 13, '10': 'requestId'},
    const {'1': 'user_attribute', '3': 2, '4': 3, '5': 11, '6': '.WebAPI_1.UserAttribute', '10': 'userAttribute'},
  ],
};

const ModifyUserAttributeResult$json = const {
  '1': 'ModifyUserAttributeResult',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 13, '10': 'requestId'},
    const {'1': 'result_code', '3': 2, '4': 2, '5': 13, '10': 'resultCode'},
    const {'1': 'text_message', '3': 3, '4': 1, '5': 9, '10': 'textMessage'},
  ],
  '4': const [ModifyUserAttributeResult_ResultCode$json],
};

const ModifyUserAttributeResult_ResultCode$json = const {
  '1': 'ResultCode',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'FAILURE', '2': 101},
    const {'1': 'REQUEST_RATE_LIMIT_VIOLATION', '2': 102},
    const {'1': 'STORAGE_SPACE_LIMIT_VIOLATION', '2': 103},
  ],
};

const HistoricalOrdersRequest$json = const {
  '1': 'HistoricalOrdersRequest',
  '2': const [
    const {'1': 'from_date', '3': 1, '4': 2, '5': 18, '10': 'fromDate'},
    const {'1': 'to_date', '3': 2, '4': 1, '5': 18, '10': 'toDate'},
    const {'1': 'account_id', '3': 3, '4': 3, '5': 17, '10': 'accountId'},
    const {'1': 'include_cross_orders', '3': 4, '4': 1, '5': 8, '10': 'includeCrossOrders'},
  ],
};

const HistoricalOrdersReport$json = const {
  '1': 'HistoricalOrdersReport',
  '2': const [
    const {'1': 'order_status', '3': 1, '4': 3, '5': 11, '6': '.WebAPI_1.OrderStatus', '10': 'orderStatus'},
  ],
};

const TimeAndSalesParameters$json = const {
  '1': 'TimeAndSalesParameters',
  '2': const [
    const {'1': 'contract_id', '3': 1, '4': 2, '5': 13, '10': 'contractId'},
    const {'1': 'level', '3': 2, '4': 2, '5': 13, '10': 'level'},
    const {'1': 'from_utc_time', '3': 3, '4': 2, '5': 18, '10': 'fromUtcTime'},
    const {'1': 'to_utc_time', '3': 4, '4': 1, '5': 18, '10': 'toUtcTime'},
  ],
  '4': const [TimeAndSalesParameters_Level$json],
};

const TimeAndSalesParameters_Level$json = const {
  '1': 'Level',
  '2': const [
    const {'1': 'TRADES', '2': 1},
    const {'1': 'TRADES_BBA_VOLUMES', '2': 3},
  ],
};

const TimeAndSalesRequest$json = const {
  '1': 'TimeAndSalesRequest',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 13, '10': 'requestId'},
    const {'1': 'time_and_sales_parameters', '3': 2, '4': 1, '5': 11, '6': '.WebAPI_1.TimeAndSalesParameters', '10': 'timeAndSalesParameters'},
    const {'1': 'request_type', '3': 3, '4': 1, '5': 13, '10': 'requestType'},
  ],
  '4': const [TimeAndSalesRequest_RequestType$json],
};

const TimeAndSalesRequest_RequestType$json = const {
  '1': 'RequestType',
  '2': const [
    const {'1': 'GET', '2': 1},
    const {'1': 'DROP', '2': 3},
  ],
};

const TimeAndSalesReport$json = const {
  '1': 'TimeAndSalesReport',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 13, '10': 'requestId'},
    const {'1': 'result_code', '3': 2, '4': 2, '5': 13, '10': 'resultCode'},
    const {'1': 'quote', '3': 3, '4': 3, '5': 11, '6': '.WebAPI_1.Quote', '10': 'quote'},
    const {'1': 'up_to_utc_time', '3': 4, '4': 1, '5': 3, '10': 'upToUtcTime'},
    const {'1': 'is_report_complete', '3': 5, '4': 1, '5': 8, '7': 'true', '10': 'isReportComplete'},
    const {'1': 'text_message', '3': 6, '4': 1, '5': 9, '10': 'textMessage'},
    const {'1': 'truncated', '3': 7, '4': 1, '5': 8, '10': 'truncated'},
  ],
  '4': const [TimeAndSalesReport_ResultCode$json],
};

const TimeAndSalesReport_ResultCode$json = const {
  '1': 'ResultCode',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'DROPPED', '2': 2},
    const {'1': 'DISCONNECTED', '2': 4},
    const {'1': 'FAILURE', '2': 101},
    const {'1': 'ACCESS_DENIED', '2': 103},
    const {'1': 'NOT_FOUND', '2': 104},
    const {'1': 'OUTSIDE_ALLOWED_RANGE', '2': 105},
    const {'1': 'ACTIVE_REQUESTS_LIMIT_VIOLATION', '2': 106},
    const {'1': 'REQUEST_RATE_LIMIT_VIOLATION', '2': 107},
    const {'1': 'NOT_SUPPORTED', '2': 110},
  ],
};

const ContinuationParameters$json = const {
  '1': 'ContinuationParameters',
  '2': const [
    const {'1': 'continuation_type', '3': 1, '4': 2, '5': 13, '10': 'continuationType'},
    const {'1': 'equalize', '3': 2, '4': 1, '5': 8, '7': 'false', '10': 'equalize'},
  ],
  '4': const [ContinuationParameters_ContinuationType$json],
};

const ContinuationParameters_ContinuationType$json = const {
  '1': 'ContinuationType',
  '2': const [
    const {'1': 'ACTIVE', '2': 1},
    const {'1': 'STANDARD', '2': 2},
  ],
};

const BarBuildingTick$json = const {
  '1': 'BarBuildingTick',
  '4': const [BarBuildingTick_Type$json],
};

const BarBuildingTick_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'BID', '2': 1},
    const {'1': 'ASK', '2': 2},
    const {'1': 'TRADE', '2': 3},
    const {'1': 'SETTLEMENT', '2': 4},
  ],
};

const TimeBarParameters$json = const {
  '1': 'TimeBarParameters',
  '2': const [
    const {'1': 'contract_id', '3': 1, '4': 2, '5': 13, '10': 'contractId'},
    const {'1': 'bar_unit', '3': 2, '4': 2, '5': 13, '10': 'barUnit'},
    const {'1': 'unit_number', '3': 3, '4': 1, '5': 13, '10': 'unitNumber'},
    const {'1': 'from_utc_time', '3': 4, '4': 2, '5': 18, '10': 'fromUtcTime'},
    const {'1': 'to_utc_time', '3': 5, '4': 1, '5': 18, '10': 'toUtcTime'},
    const {'1': 'use_settlements', '3': 6, '4': 1, '5': 8, '10': 'useSettlements'},
    const {'1': 'continuation_parameters', '3': 7, '4': 1, '5': 11, '6': '.WebAPI_1.ContinuationParameters', '10': 'continuationParameters'},
    const {'1': 'tick_types', '3': 8, '4': 3, '5': 13, '10': 'tickTypes'},
  ],
  '4': const [TimeBarParameters_BarUnit$json],
};

const TimeBarParameters_BarUnit$json = const {
  '1': 'BarUnit',
  '2': const [
    const {'1': 'YEAR', '2': 1},
    const {'1': 'SEMI_ANNUAL', '2': 2},
    const {'1': 'QUARTER', '2': 3},
    const {'1': 'MONTH', '2': 4},
    const {'1': 'WEEK', '2': 5},
    const {'1': 'DAY', '2': 6},
    const {'1': 'HOUR', '2': 7},
    const {'1': 'MIN', '2': 8},
  ],
};

const TimeBarRequest$json = const {
  '1': 'TimeBarRequest',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 13, '10': 'requestId'},
    const {'1': 'time_bar_parameters', '3': 2, '4': 1, '5': 11, '6': '.WebAPI_1.TimeBarParameters', '10': 'timeBarParameters'},
    const {'1': 'request_type', '3': 3, '4': 1, '5': 13, '10': 'requestType'},
  ],
  '4': const [TimeBarRequest_RequestType$json],
};

const TimeBarRequest_RequestType$json = const {
  '1': 'RequestType',
  '2': const [
    const {'1': 'GET', '2': 1},
    const {'1': 'SUBSCRIBE', '2': 2},
    const {'1': 'DROP', '2': 3},
  ],
};

const ContinuationSegment$json = const {
  '1': 'ContinuationSegment',
  '2': const [
    const {'1': 'cqg_symbol', '3': 1, '4': 1, '5': 9, '10': 'cqgSymbol'},
  ],
};

const TimeBar$json = const {
  '1': 'TimeBar',
  '2': const [
    const {'1': 'bar_utc_time', '3': 1, '4': 2, '5': 18, '10': 'barUtcTime'},
    const {'1': 'scaled_open_price', '3': 2, '4': 1, '5': 17, '10': 'scaledOpenPrice'},
    const {'1': 'scaled_high_price', '3': 3, '4': 1, '5': 17, '10': 'scaledHighPrice'},
    const {'1': 'scaled_low_price', '3': 4, '4': 1, '5': 17, '10': 'scaledLowPrice'},
    const {'1': 'scaled_close_price', '3': 5, '4': 1, '5': 17, '10': 'scaledClosePrice'},
    const {'1': 'scaled_volume', '3': 6, '4': 1, '5': 4, '10': 'scaledVolume'},
    const {'1': 'trade_date', '3': 7, '4': 1, '5': 18, '10': 'tradeDate'},
    const {'1': 'scaled_commodity_volume', '3': 8, '4': 1, '5': 4, '10': 'scaledCommodityVolume'},
    const {'1': 'scaled_open_interest', '3': 9, '4': 1, '5': 4, '10': 'scaledOpenInterest'},
    const {'1': 'scaled_commodity_open_interest', '3': 10, '4': 1, '5': 4, '10': 'scaledCommodityOpenInterest'},
    const {'1': 'scaled_settlement_price', '3': 11, '4': 1, '5': 17, '10': 'scaledSettlementPrice'},
    const {'1': 'tick_volume', '3': 12, '4': 1, '5': 4, '10': 'tickVolume'},
    const {'1': 'commodity_tick_volume', '3': 13, '4': 1, '5': 4, '10': 'commodityTickVolume'},
    const {'1': 'continuation_segment', '3': 14, '4': 1, '5': 11, '6': '.WebAPI_1.ContinuationSegment', '10': 'continuationSegment'},
  ],
};

const BarReportStatus$json = const {
  '1': 'BarReportStatus',
  '4': const [BarReportStatus_Code$json],
};

const BarReportStatus_Code$json = const {
  '1': 'Code',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'SUBSCRIBED', '2': 1},
    const {'1': 'DROPPED', '2': 2},
    const {'1': 'UPDATE', '2': 3},
    const {'1': 'DISCONNECTED', '2': 4},
    const {'1': 'INVALIDATED', '2': 5},
    const {'1': 'FAILURE', '2': 101},
    const {'1': 'ACCESS_DENIED', '2': 103},
    const {'1': 'NOT_FOUND', '2': 104},
    const {'1': 'OUTSIDE_ALLOWED_RANGE', '2': 105},
    const {'1': 'INVALID_PARAMS', '2': 106},
    const {'1': 'ACTIVE_REQUESTS_LIMIT_VIOLATION', '2': 107},
    const {'1': 'SUBSCRIPTION_LIMIT_VIOLATION', '2': 108},
    const {'1': 'REQUEST_RATE_LIMIT_VIOLATION', '2': 109},
    const {'1': 'NOT_SUPPORTED', '2': 110},
  ],
};

const TimeBarReport$json = const {
  '1': 'TimeBarReport',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 13, '10': 'requestId'},
    const {'1': 'status_code', '3': 2, '4': 2, '5': 13, '10': 'statusCode'},
    const {'1': 'time_bar', '3': 3, '4': 3, '5': 11, '6': '.WebAPI_1.TimeBar', '10': 'timeBar'},
    const {'1': 'up_to_utc_time', '3': 4, '4': 1, '5': 3, '10': 'upToUtcTime'},
    const {'1': 'is_report_complete', '3': 5, '4': 1, '5': 8, '7': 'true', '10': 'isReportComplete'},
    const {
      '1': 'text_message',
      '3': 6,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'textMessage',
    },
    const {'1': 'truncated', '3': 7, '4': 1, '5': 8, '10': 'truncated'},
    const {'1': 'details', '3': 8, '4': 1, '5': 11, '6': '.shared_1.Text', '10': 'details'},
  ],
};

const VolumeProfileRequest$json = const {
  '1': 'VolumeProfileRequest',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 13, '10': 'requestId'},
    const {'1': 'volume_profile_parameters', '3': 2, '4': 1, '5': 11, '6': '.WebAPI_1.VolumeProfileParameters', '10': 'volumeProfileParameters'},
    const {'1': 'request_type', '3': 3, '4': 1, '5': 13, '10': 'requestType'},
  ],
  '4': const [VolumeProfileRequest_RequestType$json],
};

const VolumeProfileRequest_RequestType$json = const {
  '1': 'RequestType',
  '2': const [
    const {'1': 'GET', '2': 1},
    const {'1': 'DROP', '2': 3},
  ],
};

const VolumeProfileParameters$json = const {
  '1': 'VolumeProfileParameters',
  '2': const [
    const {'1': 'contract_id', '3': 1, '4': 2, '5': 13, '10': 'contractId'},
    const {'1': 'start_utc_time', '3': 2, '4': 1, '5': 18, '10': 'startUtcTime'},
    const {'1': 'end_utc_time', '3': 3, '4': 1, '5': 18, '10': 'endUtcTime'},
  ],
};

const VolumeProfileReport$json = const {
  '1': 'VolumeProfileReport',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 13, '10': 'requestId'},
    const {'1': 'result_code', '3': 2, '4': 2, '5': 13, '10': 'resultCode'},
    const {'1': 'volume_profile_items', '3': 3, '4': 3, '5': 11, '6': '.WebAPI_1.VolumeProfileItem', '10': 'volumeProfileItems'},
    const {'1': 'last_quotes_cumulative_statistics', '3': 8, '4': 1, '5': 11, '6': '.WebAPI_1.VolumeProfileLastQuotesCumulativeStatistics', '10': 'lastQuotesCumulativeStatistics'},
    const {'1': 'up_to_utc_time', '3': 4, '4': 1, '5': 3, '10': 'upToUtcTime'},
    const {'1': 'text_message', '3': 5, '4': 1, '5': 9, '10': 'textMessage'},
    const {'1': 'truncated', '3': 6, '4': 1, '5': 8, '10': 'truncated'},
    const {'1': 'is_report_complete', '3': 7, '4': 1, '5': 8, '7': 'true', '10': 'isReportComplete'},
  ],
  '4': const [VolumeProfileReport_ResultCode$json],
};

const VolumeProfileReport_ResultCode$json = const {
  '1': 'ResultCode',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'DROPPED', '2': 2},
    const {'1': 'DISCONNECTED', '2': 4},
    const {'1': 'FAILURE', '2': 101},
    const {'1': 'ACCESS_DENIED', '2': 103},
    const {'1': 'NOT_FOUND', '2': 104},
    const {'1': 'OUTSIDE_ALLOWED_RANGE', '2': 105},
    const {'1': 'ACTIVE_REQUESTS_LIMIT_VIOLATION', '2': 106},
    const {'1': 'NOT_SUPPORTED', '2': 110},
  ],
};

const VolumeProfileLastQuotesCumulativeStatistics$json = const {
  '1': 'VolumeProfileLastQuotesCumulativeStatistics',
  '2': const [
    const {'1': 'scaled_last_ask_price', '3': 1, '4': 1, '5': 17, '10': 'scaledLastAskPrice'},
    const {'1': 'scaled_last_bid_price', '3': 2, '4': 1, '5': 17, '10': 'scaledLastBidPrice'},
    const {'1': 'scaled_ask_trade_volume', '3': 3, '4': 1, '5': 1, '10': 'scaledAskTradeVolume'},
    const {'1': 'scaled_bid_trade_volume', '3': 4, '4': 1, '5': 1, '10': 'scaledBidTradeVolume'},
  ],
};

const VolumeProfileItem$json = const {
  '1': 'VolumeProfileItem',
  '2': const [
    const {'1': 'scaled_price', '3': 1, '4': 2, '5': 17, '10': 'scaledPrice'},
    const {'1': 'scaled_volume', '3': 2, '4': 2, '5': 4, '10': 'scaledVolume'},
  ],
};

const BarRange$json = const {
  '1': 'BarRange',
  '2': const [
    const {'1': 'utc_time', '3': 1, '4': 1, '5': 18, '10': 'utcTime'},
    const {'1': 'count', '3': 2, '4': 2, '5': 13, '10': 'count'},
    const {'1': 'index', '3': 3, '4': 1, '5': 17, '10': 'index'},
  ],
};

const NonTimedBarRequest$json = const {
  '1': 'NonTimedBarRequest',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 13, '10': 'requestId'},
    const {'1': 'request_type', '3': 2, '4': 1, '5': 13, '10': 'requestType'},
    const {'1': 'continuation_parameters', '3': 3, '4': 1, '5': 11, '6': '.WebAPI_1.ContinuationParameters', '10': 'continuationParameters'},
    const {'1': 'contract_id', '3': 4, '4': 1, '5': 13, '10': 'contractId'},
    const {'1': 'bar_range', '3': 5, '4': 1, '5': 11, '6': '.WebAPI_1.BarRange', '10': 'barRange'},
    const {'1': 'tick_types', '3': 10, '4': 3, '5': 13, '10': 'tickTypes'},
    const {'1': 'constant_volume_bar_parameters', '3': 6, '4': 1, '5': 11, '6': '.WebAPI_1.ConstantVolumeBarParameters', '10': 'constantVolumeBarParameters'},
    const {'1': 'point_and_figure_parameters', '3': 7, '4': 1, '5': 11, '6': '.WebAPI_1.PointAndFigureParameters', '10': 'pointAndFigureParameters'},
    const {'1': 'renko_bar_parameters', '3': 8, '4': 1, '5': 11, '6': '.WebAPI_1.RenkoBarParameters', '10': 'renkoBarParameters'},
    const {'1': 'range_bar_parameters', '3': 9, '4': 1, '5': 11, '6': '.WebAPI_1.RangeBarParameters', '10': 'rangeBarParameters'},
  ],
  '4': const [NonTimedBarRequest_RequestType$json],
};

const NonTimedBarRequest_RequestType$json = const {
  '1': 'RequestType',
  '2': const [
    const {'1': 'GET', '2': 1},
    const {'1': 'SUBSCRIBE', '2': 2},
    const {'1': 'DROP', '2': 3},
  ],
};

const ConstantVolumeBarParameters$json = const {
  '1': 'ConstantVolumeBarParameters',
  '2': const [
    const {'1': 'volume_level', '3': 1, '4': 2, '5': 13, '10': 'volumeLevel'},
    const {'1': 'use_tick_volume', '3': 2, '4': 1, '5': 8, '10': 'useTickVolume'},
    const {'1': 'use_flat_ticks', '3': 3, '4': 1, '5': 8, '10': 'useFlatTicks'},
  ],
};

const PointAndFigureParameters$json = const {
  '1': 'PointAndFigureParameters',
  '2': const [
    const {'1': 'box_size', '3': 1, '4': 2, '5': 13, '10': 'boxSize'},
    const {'1': 'reversal', '3': 2, '4': 2, '5': 13, '10': 'reversal'},
  ],
};

const RenkoBarParameters$json = const {
  '1': 'RenkoBarParameters',
  '2': const [
    const {'1': 'brick_size', '3': 1, '4': 2, '5': 13, '10': 'brickSize'},
    const {'1': 'max_null_bricks', '3': 2, '4': 1, '5': 13, '10': 'maxNullBricks'},
  ],
};

const RangeBarParameters$json = const {
  '1': 'RangeBarParameters',
  '2': const [
    const {'1': 'range_size', '3': 1, '4': 2, '5': 13, '10': 'rangeSize'},
    const {'1': 'max_null_bars', '3': 2, '4': 1, '5': 13, '10': 'maxNullBars'},
  ],
};

const NonTimedBarReport$json = const {
  '1': 'NonTimedBarReport',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 13, '10': 'requestId'},
    const {'1': 'status_code', '3': 2, '4': 2, '5': 13, '10': 'statusCode'},
    const {'1': 'details', '3': 3, '4': 1, '5': 11, '6': '.shared_1.Text', '10': 'details'},
    const {'1': 'invalidated_from_utc_time', '3': 4, '4': 1, '5': 18, '10': 'invalidatedFromUtcTime'},
    const {'1': 'invalidated_to_utc_time', '3': 5, '4': 1, '5': 18, '10': 'invalidatedToUtcTime'},
    const {'1': 'up_to_utc_time', '3': 6, '4': 1, '5': 3, '10': 'upToUtcTime'},
    const {'1': 'truncated', '3': 7, '4': 1, '5': 8, '10': 'truncated'},
    const {'1': 'is_report_complete', '3': 8, '4': 1, '5': 8, '7': 'true', '10': 'isReportComplete'},
    const {'1': 'constant_volume_bar', '3': 9, '4': 3, '5': 11, '6': '.WebAPI_1.ConstantVolumeBar', '10': 'constantVolumeBar'},
    const {'1': 'point_and_figure_bar', '3': 10, '4': 3, '5': 11, '6': '.WebAPI_1.PointAndFigureBar', '10': 'pointAndFigureBar'},
    const {'1': 'renko_bar', '3': 11, '4': 3, '5': 11, '6': '.WebAPI_1.RenkoBar', '10': 'renkoBar'},
    const {'1': 'range_bar', '3': 12, '4': 3, '5': 11, '6': '.WebAPI_1.RangeBar', '10': 'rangeBar'},
  ],
};

const ConstantVolumeBar$json = const {
  '1': 'ConstantVolumeBar',
  '2': const [
    const {'1': 'bar_utc_time', '3': 1, '4': 1, '5': 18, '10': 'barUtcTime'},
    const {'1': 'index', '3': 2, '4': 1, '5': 17, '10': 'index'},
    const {'1': 'trade_date', '3': 3, '4': 1, '5': 18, '10': 'tradeDate'},
    const {'1': 'scaled_open_price', '3': 4, '4': 1, '5': 18, '10': 'scaledOpenPrice'},
    const {'1': 'scaled_high_price', '3': 5, '4': 1, '5': 18, '10': 'scaledHighPrice'},
    const {'1': 'scaled_low_price', '3': 6, '4': 1, '5': 18, '10': 'scaledLowPrice'},
    const {'1': 'scaled_close_price', '3': 7, '4': 1, '5': 18, '10': 'scaledClosePrice'},
    const {'1': 'scaled_volume', '3': 8, '4': 1, '5': 4, '10': 'scaledVolume'},
    const {'1': 'tick_volume', '3': 9, '4': 1, '5': 4, '10': 'tickVolume'},
    const {'1': 'continuation_segment', '3': 10, '4': 1, '5': 11, '6': '.WebAPI_1.ContinuationSegment', '10': 'continuationSegment'},
  ],
};

const PointAndFigureBar$json = const {
  '1': 'PointAndFigureBar',
  '2': const [
    const {'1': 'bar_utc_time', '3': 1, '4': 1, '5': 18, '10': 'barUtcTime'},
    const {'1': 'index', '3': 2, '4': 1, '5': 17, '10': 'index'},
    const {'1': 'trade_date', '3': 3, '4': 1, '5': 18, '10': 'tradeDate'},
    const {'1': 'pf_scaled_open_price', '3': 4, '4': 1, '5': 18, '10': 'pfScaledOpenPrice'},
    const {'1': 'pf_scaled_high_price', '3': 5, '4': 1, '5': 18, '10': 'pfScaledHighPrice'},
    const {'1': 'pf_scaled_low_price', '3': 6, '4': 1, '5': 18, '10': 'pfScaledLowPrice'},
    const {'1': 'pf_scaled_close_price', '3': 7, '4': 1, '5': 18, '10': 'pfScaledClosePrice'},
    const {'1': 'scaled_high_price', '3': 8, '4': 1, '5': 18, '10': 'scaledHighPrice'},
    const {'1': 'scaled_low_price', '3': 9, '4': 1, '5': 18, '10': 'scaledLowPrice'},
    const {'1': 'scaled_volume', '3': 10, '4': 1, '5': 4, '10': 'scaledVolume'},
    const {'1': 'tick_volume', '3': 11, '4': 1, '5': 4, '10': 'tickVolume'},
    const {'1': 'up', '3': 12, '4': 1, '5': 8, '10': 'up'},
    const {'1': 'continuation_segment', '3': 13, '4': 1, '5': 11, '6': '.WebAPI_1.ContinuationSegment', '10': 'continuationSegment'},
  ],
};

const RenkoBar$json = const {
  '1': 'RenkoBar',
  '2': const [
    const {'1': 'bar_utc_time', '3': 1, '4': 1, '5': 18, '10': 'barUtcTime'},
    const {'1': 'index', '3': 2, '4': 1, '5': 17, '10': 'index'},
    const {'1': 'trade_date', '3': 3, '4': 1, '5': 18, '10': 'tradeDate'},
    const {'1': 'scaled_open_price', '3': 4, '4': 1, '5': 18, '10': 'scaledOpenPrice'},
    const {'1': 'scaled_high_price', '3': 5, '4': 1, '5': 18, '10': 'scaledHighPrice'},
    const {'1': 'scaled_low_price', '3': 6, '4': 1, '5': 18, '10': 'scaledLowPrice'},
    const {'1': 'scaled_close_price', '3': 7, '4': 1, '5': 18, '10': 'scaledClosePrice'},
    const {'1': 'scaled_renko_high_price', '3': 8, '4': 1, '5': 18, '10': 'scaledRenkoHighPrice'},
    const {'1': 'scaled_renko_low_price', '3': 9, '4': 1, '5': 18, '10': 'scaledRenkoLowPrice'},
    const {'1': 'up', '3': 10, '4': 1, '5': 8, '10': 'up'},
    const {'1': 'scaled_volume', '3': 11, '4': 1, '5': 4, '10': 'scaledVolume'},
    const {'1': 'tick_volume', '3': 12, '4': 1, '5': 4, '10': 'tickVolume'},
    const {'1': 'first_bar_of_session', '3': 13, '4': 1, '5': 8, '10': 'firstBarOfSession'},
    const {'1': 'continuation_segment', '3': 14, '4': 1, '5': 11, '6': '.WebAPI_1.ContinuationSegment', '10': 'continuationSegment'},
  ],
};

const RangeBar$json = const {
  '1': 'RangeBar',
  '2': const [
    const {'1': 'bar_utc_time', '3': 1, '4': 1, '5': 18, '10': 'barUtcTime'},
    const {'1': 'index', '3': 2, '4': 1, '5': 17, '10': 'index'},
    const {'1': 'trade_date', '3': 3, '4': 1, '5': 18, '10': 'tradeDate'},
    const {'1': 'scaled_open_price', '3': 4, '4': 1, '5': 18, '10': 'scaledOpenPrice'},
    const {'1': 'scaled_high_price', '3': 5, '4': 1, '5': 18, '10': 'scaledHighPrice'},
    const {'1': 'scaled_low_price', '3': 6, '4': 1, '5': 18, '10': 'scaledLowPrice'},
    const {'1': 'scaled_close_price', '3': 7, '4': 1, '5': 18, '10': 'scaledClosePrice'},
    const {'1': 'scaled_volume', '3': 8, '4': 1, '5': 4, '10': 'scaledVolume'},
    const {'1': 'tick_volume', '3': 9, '4': 1, '5': 4, '10': 'tickVolume'},
    const {'1': 'continuation_segment', '3': 10, '4': 1, '5': 11, '6': '.WebAPI_1.ContinuationSegment', '10': 'continuationSegment'},
  ],
};

