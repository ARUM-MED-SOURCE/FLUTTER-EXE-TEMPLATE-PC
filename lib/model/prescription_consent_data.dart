import 'package:freezed_annotation/freezed_annotation.dart';

part 'prescription_consent_data.freezed.dart';
part 'prescription_consent_data.g.dart';

@freezed
class PrescriptionConsentResponse with _$PrescriptionConsentResponse {
  const factory PrescriptionConsentResponse({
    @JsonKey(name: 'RESULT_CODE') required String resultCode,
    @JsonKey(name: 'RESULT_DATA') required List<PrescriptionConsentData> resultData,
    @JsonKey(name: 'ERROR_CODE') required String errorCode,
    @JsonKey(name: 'ERROR_MESSAGE') required String errorMessage,
  }) = _PrescriptionConsentResponse;

  factory PrescriptionConsentResponse.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionConsentResponseFromJson(json);
}

@freezed
class PrescriptionConsentData with _$PrescriptionConsentData {
  const factory PrescriptionConsentData({
    @JsonKey(name: 'FormName') String? formName,
    @JsonKey(name: 'FormCd') String? formCd,
    @JsonKey(name: 'FormId') int? formId,
    @JsonKey(name: 'FormGuid') String? formGuid,
    @JsonKey(name: 'FormVersion') int? formVersion,
    @JsonKey(name: 'FormRid') int? formRid,
    @JsonKey(name: 'ConsentMstRid') int? consentMstRid,
    @JsonKey(name: 'FormNum') String? formNum,
    @JsonKey(name: 'FormTypeCode') String? formTypeCode,
    @JsonKey(name: 'FormTypeName') String? formTypeName,
    @JsonKey(name: 'IntnlMedFormYn') String? intnlMedFormYn,
    @JsonKey(name: 'SetType') String? setType,
    @JsonKey(name: 'SetAuth') String? setAuth,
    @JsonKey(name: 'DeptCd') String? deptCd,
    @JsonKey(name: 'DeptNm') String? deptNm,
    @JsonKey(name: 'EsignYn') String? esignYn,
    @JsonKey(name: 'MediHistoryYn') String? mediHistoryYn,
    @JsonKey(name: 'GroupDeptCode') String? groupDeptCode,
    @JsonKey(name: 'GroupType') String? groupType,
    @JsonKey(name: 'GroupName') String? groupName,
    @JsonKey(name: 'GroupNumber') String? groupNumber,
    @JsonKey(name: 'PaymentCode') String? paymentCode,
    @JsonKey(name: 'InspectionNameKor') String? inspectionNameKor,
    @JsonKey(name: 'InspectionNameEng') String? inspectionNameEng,
    @JsonKey(name: 'OrderDate') String? orderDate,
    @JsonKey(name: 'OrderYn') String? orderYn,
    @JsonKey(name: 'OrderCd') String? orderCd,
    @JsonKey(name: 'OrderName') String? orderName,
    @JsonKey(name: 'OrderSeqNo') int? orderSeqNo,
    @JsonKey(name: 'OrderClass') String? orderClass,
    @JsonKey(name: 'PrintCnt') String? printCnt,
    @JsonKey(name: 'OcrFormCd') String? ocrFormCd,
    @JsonKey(name: 'ConsentState') String? consentState,
    @JsonKey(name: 'RecordCnt') String? recordCnt,
    @JsonKey(name: 'Test') String? test,
    @JsonKey(name: 'Image') dynamic? image,
    @JsonKey(name: 'UseYN') String? useYn,
    @JsonKey(name: 'ConsentFolderRid') int? consentFolderRid,
    @JsonKey(name: 'ConsentListRid') int? consentListRid,
    @JsonKey(name: 'FolderName') String? folderName,
    @JsonKey(name: 'ParamCommonJson') String? paramCommonJson,
    @JsonKey(name: 'PRCPHISTNO') String? prcphistno,
    @JsonKey(name: 'EXECPRCPNO') String? execprcpno,
    @JsonKey(name: 'CategoryCode') String? categoryCode,
  }) = _PrescriptionConsentData;

  factory PrescriptionConsentData.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionConsentDataFromJson(json);
}

