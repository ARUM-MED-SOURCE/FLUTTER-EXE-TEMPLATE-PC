// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescription_consent_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrescriptionConsentResponseImpl _$$PrescriptionConsentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PrescriptionConsentResponseImpl(
      resultCode: json['RESULT_CODE'] as String,
      resultData: (json['RESULT_DATA'] as List<dynamic>)
          .map((e) =>
              PrescriptionConsentData.fromJson(e as Map<String, dynamic>))
          .toList(),
      errorCode: json['ERROR_CODE'] as String,
      errorMessage: json['ERROR_MESSAGE'] as String,
    );

Map<String, dynamic> _$$PrescriptionConsentResponseImplToJson(
        _$PrescriptionConsentResponseImpl instance) =>
    <String, dynamic>{
      'RESULT_CODE': instance.resultCode,
      'RESULT_DATA': instance.resultData,
      'ERROR_CODE': instance.errorCode,
      'ERROR_MESSAGE': instance.errorMessage,
    };

_$PrescriptionConsentDataImpl _$$PrescriptionConsentDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PrescriptionConsentDataImpl(
      formName: json['FormName'] as String?,
      formCd: json['FormCd'] as String?,
      formId: (json['FormId'] as num?)?.toInt(),
      formGuid: json['FormGuid'] as String?,
      formVersion: (json['FormVersion'] as num?)?.toInt(),
      formRid: (json['FormRid'] as num?)?.toInt(),
      consentMstRid: (json['ConsentMstRid'] as num?)?.toInt(),
      formNum: json['FormNum'] as String?,
      formTypeCode: json['FormTypeCode'] as String?,
      formTypeName: json['FormTypeName'] as String?,
      intnlMedFormYn: json['IntnlMedFormYn'] as String?,
      setType: json['SetType'] as String?,
      setAuth: json['SetAuth'] as String?,
      deptCd: json['DeptCd'] as String?,
      deptNm: json['DeptNm'] as String?,
      esignYn: json['EsignYn'] as String?,
      mediHistoryYn: json['MediHistoryYn'] as String?,
      groupDeptCode: json['GroupDeptCode'] as String?,
      groupType: json['GroupType'] as String?,
      groupName: json['GroupName'] as String?,
      groupNumber: json['GroupNumber'] as String?,
      paymentCode: json['PaymentCode'] as String?,
      inspectionNameKor: json['InspectionNameKor'] as String?,
      inspectionNameEng: json['InspectionNameEng'] as String?,
      orderDate: json['OrderDate'] as String?,
      orderYn: json['OrderYn'] as String?,
      orderCd: json['OrderCd'] as String?,
      orderName: json['OrderName'] as String?,
      orderSeqNo: (json['OrderSeqNo'] as num?)?.toInt(),
      orderClass: json['OrderClass'] as String?,
      printCnt: json['PrintCnt'] as String?,
      ocrFormCd: json['OcrFormCd'] as String?,
      consentState: json['ConsentState'] as String?,
      recordCnt: json['RecordCnt'] as String?,
      test: json['Test'] as String?,
      image: json['Image'],
      useYn: json['UseYN'] as String?,
      consentFolderRid: (json['ConsentFolderRid'] as num?)?.toInt(),
      consentListRid: (json['ConsentListRid'] as num?)?.toInt(),
      folderName: json['FolderName'] as String?,
      paramCommonJson: json['ParamCommonJson'] as String?,
      prcphistno: json['PRCPHISTNO'] as String?,
      execprcpno: json['EXECPRCPNO'] as String?,
      categoryCode: json['CategoryCode'] as String?,
    );

Map<String, dynamic> _$$PrescriptionConsentDataImplToJson(
        _$PrescriptionConsentDataImpl instance) =>
    <String, dynamic>{
      'FormName': instance.formName,
      'FormCd': instance.formCd,
      'FormId': instance.formId,
      'FormGuid': instance.formGuid,
      'FormVersion': instance.formVersion,
      'FormRid': instance.formRid,
      'ConsentMstRid': instance.consentMstRid,
      'FormNum': instance.formNum,
      'FormTypeCode': instance.formTypeCode,
      'FormTypeName': instance.formTypeName,
      'IntnlMedFormYn': instance.intnlMedFormYn,
      'SetType': instance.setType,
      'SetAuth': instance.setAuth,
      'DeptCd': instance.deptCd,
      'DeptNm': instance.deptNm,
      'EsignYn': instance.esignYn,
      'MediHistoryYn': instance.mediHistoryYn,
      'GroupDeptCode': instance.groupDeptCode,
      'GroupType': instance.groupType,
      'GroupName': instance.groupName,
      'GroupNumber': instance.groupNumber,
      'PaymentCode': instance.paymentCode,
      'InspectionNameKor': instance.inspectionNameKor,
      'InspectionNameEng': instance.inspectionNameEng,
      'OrderDate': instance.orderDate,
      'OrderYn': instance.orderYn,
      'OrderCd': instance.orderCd,
      'OrderName': instance.orderName,
      'OrderSeqNo': instance.orderSeqNo,
      'OrderClass': instance.orderClass,
      'PrintCnt': instance.printCnt,
      'OcrFormCd': instance.ocrFormCd,
      'ConsentState': instance.consentState,
      'RecordCnt': instance.recordCnt,
      'Test': instance.test,
      'Image': instance.image,
      'UseYN': instance.useYn,
      'ConsentFolderRid': instance.consentFolderRid,
      'ConsentListRid': instance.consentListRid,
      'FolderName': instance.folderName,
      'ParamCommonJson': instance.paramCommonJson,
      'PRCPHISTNO': instance.prcphistno,
      'EXECPRCPNO': instance.execprcpno,
      'CategoryCode': instance.categoryCode,
    };
