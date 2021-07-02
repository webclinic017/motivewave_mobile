///
//  Generated code. Do not modify.
//  source: WebAPI/metadata_1.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const MetadataAdminRequest$json = const {
  '1': 'MetadataAdminRequest',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 9, '10': 'requestId'},
    const {'1': 'get_security_parameters', '3': 2, '4': 1, '5': 11, '6': '.metadata_1.GetSecurityParameters', '10': 'getSecurityParameters'},
    const {'1': 'set_security_parameters', '3': 3, '4': 1, '5': 11, '6': '.metadata_1.SetSecurityParameters', '10': 'setSecurityParameters'},
    const {'1': 'publish_contract', '3': 5, '4': 1, '5': 11, '6': '.metadata_1.PublishContract', '10': 'publishContract'},
    const {'1': 'unpublish_contract', '3': 6, '4': 1, '5': 11, '6': '.metadata_1.UnpublishContract', '10': 'unpublishContract'},
    const {'1': 'get_contract_parameters', '3': 7, '4': 1, '5': 11, '6': '.metadata_1.GetContractParameters', '10': 'getContractParameters'},
  ],
};

const MetadataAdminResult$json = const {
  '1': 'MetadataAdminResult',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 2, '5': 9, '10': 'requestId'},
    const {'1': 'result_code', '3': 2, '4': 2, '5': 13, '10': 'resultCode'},
    const {'1': 'details', '3': 3, '4': 1, '5': 11, '6': '.shared_1.Text', '10': 'details'},
    const {'1': 'get_security_parameters_result', '3': 4, '4': 1, '5': 11, '6': '.metadata_1.GetSecurityParametersResult', '10': 'getSecurityParametersResult'},
    const {'1': 'set_security_parameters_result', '3': 5, '4': 1, '5': 11, '6': '.metadata_1.SetSecurityParametersResult', '10': 'setSecurityParametersResult'},
    const {'1': 'publish_contract_result', '3': 6, '4': 1, '5': 11, '6': '.metadata_1.PublishContractResult', '10': 'publishContractResult'},
    const {'1': 'unpublish_contract_result', '3': 7, '4': 1, '5': 11, '6': '.metadata_1.UnpublishContractResult', '10': 'unpublishContractResult'},
    const {'1': 'get_contract_parameters_result', '3': 8, '4': 1, '5': 11, '6': '.metadata_1.GetContractParametersResult', '10': 'getContractParametersResult'},
  ],
  '4': const [MetadataAdminResult_ResultCode$json],
};

const MetadataAdminResult_ResultCode$json = const {
  '1': 'ResultCode',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'FAILURE', '2': 101},
    const {'1': 'REQUEST_RATE_LIMIT_VIOLATION', '2': 102},
  ],
};

const ContributorParameters$json = const {
  '1': 'ContributorParameters',
  '2': const [
    const {'1': 'contributor_id', '3': 1, '4': 2, '5': 9, '10': 'contributorId'},
    const {'1': 'parameter', '3': 2, '4': 3, '5': 11, '6': '.shared_1.NamedValue', '10': 'parameter'},
  ],
};

const GetSecurityParameters$json = const {
  '1': 'GetSecurityParameters',
  '2': const [
    const {'1': 'security_id', '3': 1, '4': 2, '5': 9, '10': 'securityId'},
    const {'1': 'contributor_id', '3': 2, '4': 3, '5': 9, '10': 'contributorId'},
  ],
};

const GetSecurityParametersResult$json = const {
  '1': 'GetSecurityParametersResult',
  '2': const [
    const {'1': 'security_id', '3': 1, '4': 2, '5': 9, '10': 'securityId'},
    const {'1': 'contributor_parameters', '3': 2, '4': 3, '5': 11, '6': '.metadata_1.ContributorParameters', '10': 'contributorParameters'},
  ],
};

const SetSecurityParameters$json = const {
  '1': 'SetSecurityParameters',
  '2': const [
    const {'1': 'security_id', '3': 1, '4': 2, '5': 9, '10': 'securityId'},
    const {'1': 'contributor_parameters', '3': 2, '4': 3, '5': 11, '6': '.metadata_1.ContributorParameters', '10': 'contributorParameters'},
  ],
};

const SetSecurityParametersResult$json = const {
  '1': 'SetSecurityParametersResult',
  '2': const [
    const {'1': 'security_id', '3': 1, '4': 2, '5': 9, '10': 'securityId'},
    const {'1': 'contributor_parameters', '3': 2, '4': 3, '5': 11, '6': '.metadata_1.ContributorParameters', '10': 'contributorParameters'},
  ],
};

const PublishContract$json = const {
  '1': 'PublishContract',
  '2': const [
    const {'1': 'security_id', '3': 1, '4': 1, '5': 9, '10': 'securityId'},
    const {'1': 'maturity_date', '3': 2, '4': 1, '5': 18, '10': 'maturityDate'},
    const {'1': 'last_trading_date', '3': 3, '4': 1, '5': 18, '10': 'lastTradingDate'},
    const {'1': 'source_contract_id', '3': 4, '4': 1, '5': 13, '10': 'sourceContractId'},
    const {'1': 'first_notice_date', '3': 5, '4': 1, '5': 18, '10': 'firstNoticeDate'},
    const {'1': 'last_delivery_date', '3': 6, '4': 1, '5': 18, '10': 'lastDeliveryDate'},
    const {'1': 'contributor_parameters', '3': 7, '4': 3, '5': 11, '6': '.metadata_1.ContributorParameters', '10': 'contributorParameters'},
    const {'1': 'description', '3': 8, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'preview', '3': 9, '4': 1, '5': 8, '10': 'preview'},
    const {'1': 'previous_contract_id', '3': 10, '4': 1, '5': 13, '10': 'previousContractId'},
    const {'1': 'cleared_fields', '3': 11, '4': 3, '5': 13, '10': 'clearedFields'},
  ],
};

const PublishContractResult$json = const {
  '1': 'PublishContractResult',
  '2': const [
    const {'1': 'contract_id', '3': 1, '4': 1, '5': 13, '10': 'contractId'},
    const {'1': 'symbol_id', '3': 2, '4': 1, '5': 9, '10': 'symbolId'},
  ],
};

const UnpublishContract$json = const {
  '1': 'UnpublishContract',
  '2': const [
    const {'1': 'contract_id', '3': 1, '4': 1, '5': 13, '10': 'contractId'},
    const {'1': 'contributor_id', '3': 2, '4': 3, '5': 9, '10': 'contributorId'},
  ],
};

const UnpublishContractResult$json = const {
  '1': 'UnpublishContractResult',
};

const GetContractParameters$json = const {
  '1': 'GetContractParameters',
  '2': const [
    const {'1': 'contract_id', '3': 1, '4': 2, '5': 13, '10': 'contractId'},
    const {'1': 'contributor_id', '3': 2, '4': 3, '5': 9, '10': 'contributorId'},
  ],
};

const GetContractParametersResult$json = const {
  '1': 'GetContractParametersResult',
  '2': const [
    const {'1': 'contract_id', '3': 1, '4': 2, '5': 13, '10': 'contractId'},
    const {'1': 'contributor_parameters', '3': 2, '4': 3, '5': 11, '6': '.metadata_1.ContributorParameters', '10': 'contributorParameters'},
  ],
};

