import 'package:freezed_annotation/freezed_annotation.dart';

part 'writtenscription_consent_data.freezed.dart';
part 'writtenscription_consent_data.g.dart';

@freezed
class WrittenConsentResponse with _$WrittenConsentResponse {
  const factory WrittenConsentResponse({
    @JsonKey(name: 'RESULT_CODE') @Default('') String resultCode,
    @JsonKey(name: 'RESULT_DATA') @Default([]) List<WrittenConsentData> resultData,
    @JsonKey(name: 'ERROR_CODE') @Default('') String errorCode,
    @JsonKey(name: 'ERROR_MESSAGE') @Default('') String errorMessage,
  }) = _WrittenConsentResponse;

  factory WrittenConsentResponse.fromJson(Map<String, dynamic> json) => _$WrittenConsentResponseFromJson(json);
}

@freezed
class WrittenConsentData with _$WrittenConsentData {
  const factory WrittenConsentData({
    @JsonKey(name: 'ConsentMstRid') @Default(0) int consentMstRid,
    @JsonKey(name: 'RewriteConsentMstRid') @Default(0) int rewriteConsentMstRid,
    @JsonKey(name: 'FormVersion') @Default(0) int formVersion,
    @JsonKey(name: 'FormId') @Default(0) int formId,
    @JsonKey(name: 'ConsentName') @Default('') String consentName,
    @JsonKey(name: 'ConsentState') @Default('') String consentState,
    @JsonKey(name: 'ConsentStateDisp') @Default('') String consentStateDisp,
    @JsonKey(name: 'HosType') @Default('') String hosType,
    @JsonKey(name: 'PatientCode') @Default('') String patientCode,
    @JsonKey(name: 'VisitType') @Default('') String visitType,
    @JsonKey(name: 'CosignDcId') @Default('') String cosignDcId,
    @JsonKey(name: 'CosignDcName') @Default('') String cosignDcName,
    @JsonKey(name: 'ClnDeptCd') @Default('') String clnDeptCd,
    @JsonKey(name: 'ClnDate') @Default('') String clnDate,
    @JsonKey(name: 'Ward') @Default('') String ward,
    @JsonKey(name: 'CreateDateTime') @Default('') String createDateTime,
    @JsonKey(name: 'CreateUserName') @Default('') String createUserName,
    @JsonKey(name: 'FormGuid') @Default('') String formGuid,
    @JsonKey(name: 'FormCd') @Default('') String formCd,
    @JsonKey(name: 'FormRid') @Default(0) int formRid,
    @JsonKey(name: 'OrderDoctorId') @Default('') String orderDoctorId,
    @JsonKey(name: 'OrderDoctorName') @Default('') String orderDoctorName,
    @JsonKey(name: 'OrderDiv') @Default('') String orderDiv,
    @JsonKey(name: 'OrderCd') @Default('') String orderCd,
    @JsonKey(name: 'OrderNm') @Default('') String orderNm,
    @JsonKey(name: 'OrderDate') @Default('') String orderDate,
    @JsonKey(name: 'OrderSeqNo') @Default('') String orderSeqNo,
    @JsonKey(name: 'MediHistoryYn') @Default('') String mediHistoryYn,
    @JsonKey(name: 'CreateUserId') @Default('') String createUserId,
    @JsonKey(name: 'ModifyUserId') @Default('') String modifyUserId,
    @JsonKey(name: 'ModifyUserName') @Default('') String modifyUserName,
    @JsonKey(name: 'ModifyDateTime') @Default('') String modifyDateTime,
    @JsonKey(name: 'RecordCnt') @Default(0) int recordCnt,
    @JsonKey(name: 'PaymentCode') @Default('') String paymentCode,
    @JsonKey(name: 'InspectionNameKor') @Default('') String inspectionNameKor,
    @JsonKey(name: 'InspectionNameEng') @Default('') String inspectionNameEng,
    @JsonKey(name: 'OrderYn') @Default('') String orderYn,
    @JsonKey(name: 'EsignYn') @Default('') String esignYn,
    @JsonKey(name: 'FormNum') @Default('') String formNum,
    @JsonKey(name: 'OcrFormCd') @Default('') String ocrFormCd,
    @JsonKey(name: 'PrintCnt') @Default('') String printCnt,
    @JsonKey(name: 'ParamCommonJson') @Default('') String paramCommonJson,
    @JsonKey(name: 'PRCPHISTNO') @Default('') String prcphistno,
    @JsonKey(name: 'EXECPRCPNO') @Default('') String execprcpno,
  }) = _WrittenConsentData;

  factory WrittenConsentData.fromJson(Map<String, dynamic> json) => _$WrittenConsentDataFromJson(json);
}


