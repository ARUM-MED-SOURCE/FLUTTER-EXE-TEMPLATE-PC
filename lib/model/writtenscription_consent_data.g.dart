// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'writtenscription_consent_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WrittenConsentResponseImpl _$$WrittenConsentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WrittenConsentResponseImpl(
      resultCode: json['RESULT_CODE'] as String? ?? '',
      resultData: (json['RESULT_DATA'] as List<dynamic>?)
              ?.map(
                  (e) => WrittenConsentData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      errorCode: json['ERROR_CODE'] as String? ?? '',
      errorMessage: json['ERROR_MESSAGE'] as String? ?? '',
    );

Map<String, dynamic> _$$WrittenConsentResponseImplToJson(
        _$WrittenConsentResponseImpl instance) =>
    <String, dynamic>{
      'RESULT_CODE': instance.resultCode,
      'RESULT_DATA': instance.resultData,
      'ERROR_CODE': instance.errorCode,
      'ERROR_MESSAGE': instance.errorMessage,
    };

_$WrittenConsentDataImpl _$$WrittenConsentDataImplFromJson(
        Map<String, dynamic> json) =>
    _$WrittenConsentDataImpl(
      consentMstRid: (json['ConsentMstRid'] as num?)?.toInt() ?? 0,
      rewriteConsentMstRid:
          (json['RewriteConsentMstRid'] as num?)?.toInt() ?? 0,
      formVersion: (json['FormVersion'] as num?)?.toInt() ?? 0,
      formId: (json['FormId'] as num?)?.toInt() ?? 0,
      consentName: json['ConsentName'] as String? ?? '',
      consentState: json['ConsentState'] as String? ?? '',
      consentStateDisp: json['ConsentStateDisp'] as String? ?? '',
      hosType: json['HosType'] as String? ?? '',
      patientCode: json['PatientCode'] as String? ?? '',
      visitType: json['VisitType'] as String? ?? '',
      cosignDcId: json['CosignDcId'] as String? ?? '',
      cosignDcName: json['CosignDcName'] as String? ?? '',
      clnDeptCd: json['ClnDeptCd'] as String? ?? '',
      clnDate: json['ClnDate'] as String? ?? '',
      ward: json['Ward'] as String? ?? '',
      createDateTime: json['CreateDateTime'] as String? ?? '',
      createUserName: json['CreateUserName'] as String? ?? '',
      formGuid: json['FormGuid'] as String? ?? '',
      formCd: json['FormCd'] as String? ?? '',
      formRid: (json['FormRid'] as num?)?.toInt() ?? 0,
      orderDoctorId: json['OrderDoctorId'] as String? ?? '',
      orderDoctorName: json['OrderDoctorName'] as String? ?? '',
      orderDiv: json['OrderDiv'] as String? ?? '',
      orderCd: json['OrderCd'] as String? ?? '',
      orderNm: json['OrderNm'] as String? ?? '',
      orderDate: json['OrderDate'] as String? ?? '',
      orderSeqNo: json['OrderSeqNo'] as String? ?? '',
      mediHistoryYn: json['MediHistoryYn'] as String? ?? '',
      createUserId: json['CreateUserId'] as String? ?? '',
      modifyUserId: json['ModifyUserId'] as String? ?? '',
      modifyUserName: json['ModifyUserName'] as String? ?? '',
      modifyDateTime: json['ModifyDateTime'] as String? ?? '',
      recordCnt: (json['RecordCnt'] as num?)?.toInt() ?? 0,
      paymentCode: json['PaymentCode'] as String? ?? '',
      inspectionNameKor: json['InspectionNameKor'] as String? ?? '',
      inspectionNameEng: json['InspectionNameEng'] as String? ?? '',
      orderYn: json['OrderYn'] as String? ?? '',
      esignYn: json['EsignYn'] as String? ?? '',
      formNum: json['FormNum'] as String? ?? '',
      ocrFormCd: json['OcrFormCd'] as String? ?? '',
      printCnt: json['PrintCnt'] as String? ?? '',
      paramCommonJson: json['ParamCommonJson'] as String? ?? '',
      prcphistno: json['PRCPHISTNO'] as String? ?? '',
      execprcpno: json['EXECPRCPNO'] as String? ?? '',
    );

Map<String, dynamic> _$$WrittenConsentDataImplToJson(
        _$WrittenConsentDataImpl instance) =>
    <String, dynamic>{
      'ConsentMstRid': instance.consentMstRid,
      'RewriteConsentMstRid': instance.rewriteConsentMstRid,
      'FormVersion': instance.formVersion,
      'FormId': instance.formId,
      'ConsentName': instance.consentName,
      'ConsentState': instance.consentState,
      'ConsentStateDisp': instance.consentStateDisp,
      'HosType': instance.hosType,
      'PatientCode': instance.patientCode,
      'VisitType': instance.visitType,
      'CosignDcId': instance.cosignDcId,
      'CosignDcName': instance.cosignDcName,
      'ClnDeptCd': instance.clnDeptCd,
      'ClnDate': instance.clnDate,
      'Ward': instance.ward,
      'CreateDateTime': instance.createDateTime,
      'CreateUserName': instance.createUserName,
      'FormGuid': instance.formGuid,
      'FormCd': instance.formCd,
      'FormRid': instance.formRid,
      'OrderDoctorId': instance.orderDoctorId,
      'OrderDoctorName': instance.orderDoctorName,
      'OrderDiv': instance.orderDiv,
      'OrderCd': instance.orderCd,
      'OrderNm': instance.orderNm,
      'OrderDate': instance.orderDate,
      'OrderSeqNo': instance.orderSeqNo,
      'MediHistoryYn': instance.mediHistoryYn,
      'CreateUserId': instance.createUserId,
      'ModifyUserId': instance.modifyUserId,
      'ModifyUserName': instance.modifyUserName,
      'ModifyDateTime': instance.modifyDateTime,
      'RecordCnt': instance.recordCnt,
      'PaymentCode': instance.paymentCode,
      'InspectionNameKor': instance.inspectionNameKor,
      'InspectionNameEng': instance.inspectionNameEng,
      'OrderYn': instance.orderYn,
      'EsignYn': instance.esignYn,
      'FormNum': instance.formNum,
      'OcrFormCd': instance.ocrFormCd,
      'PrintCnt': instance.printCnt,
      'ParamCommonJson': instance.paramCommonJson,
      'PRCPHISTNO': instance.prcphistno,
      'EXECPRCPNO': instance.execprcpno,
    };
