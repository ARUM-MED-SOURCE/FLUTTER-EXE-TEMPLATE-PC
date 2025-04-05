// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientInfoResponseImpl _$$PatientInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientInfoResponseImpl(
      resultCode: json['RESULT_CODE'] as String,
      resultData: (json['RESULT_DATA'] as List<dynamic>)
          .map((e) => PatientInfoResultData.fromJson(e as Map<String, dynamic>))
          .toList(),
      errorCode: json['ERROR_CODE'] as String,
      errorMessage: json['ERROR_MESSAGE'] as String,
    );

Map<String, dynamic> _$$PatientInfoResponseImplToJson(
        _$PatientInfoResponseImpl instance) =>
    <String, dynamic>{
      'RESULT_CODE': instance.resultCode,
      'RESULT_DATA': instance.resultData,
      'ERROR_CODE': instance.errorCode,
      'ERROR_MESSAGE': instance.errorMessage,
    };

_$PatientInfoResultDataImpl _$$PatientInfoResultDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientInfoResultDataImpl(
      admissionDate: json['AdmissionDate'] as String,
      admissionTime: json['AdmissionTime'] as String? ?? '',
      age: json['Age'] as String,
      alertBloodGroup: json['AlertBloodGroup'] as String? ?? '',
      alertInfo: json['AlertInfo'] as String? ?? '',
      anesthesiaType: json['AnesthesiaType'] as String? ?? '',
      bsa: json['Bsa'] as String? ?? '',
      chargeId: json['ChargeId'] as String? ?? '',
      chargeName: json['ChargeName'] as String,
      clinicalDate: json['ClinicalDate'] as String? ?? '',
      clinicalTime: json['ClinicalTime'] as String? ?? '',
      clnDeptCode: json['ClnDeptCode'] as String,
      clnDeptName: json['ClnDeptName'] as String? ?? '',
      clnDeptNum: json['ClnDeptNum'] as String? ?? '',
      diagName: json['DiagName'] as String,
      doctorId: json['DoctorId'] as String,
      doctorName: json['DoctorName'] as String,
      patientCode: json['PatientCode'] as String,
      patientName: json['PatientName'] as String,
      patientZipAddr: json['PatientZipAddr'] as String,
      room: json['Room'] as String,
      sex: json['Sex'] as String,
      ward: json['Ward'] as String,
      birthday: json['Birthday'] as String,
      mdrpno: json['MDRPNO'] as String,
      estimateTime: json['EstimateTime'] as String? ?? '',
      inspectionName: json['InspectionName'] as String? ?? '',
      inspectionReservationType:
          json['InspectionReservationType'] as String? ?? '',
      inspectionStatus: json['Inspectionstatus'] as String? ?? '',
      inspectionTime: json['InspectionTime'] as String? ?? '',
      operationDate: json['OperationDate'] as String? ?? '',
      operationDept: json['OperationDept'] as String? ?? '',
      operationDoctor: json['OperationDoctor'] as String? ?? '',
      operationDoctorName: json['OperationDoctorName'] as String? ?? '',
      operationRoom: json['OperationRoom'] as String? ?? '',
      operationType: json['OperationType'] as String? ?? '',
      operationTypeName: json['OperationTypeName'] as String? ?? '',
      patientAddr: json['PatientAddr'] as String? ?? '',
      patientTelNo: json['PatientTelNo'] as String? ?? '',
      patientHp: json['PatientHp'] as String? ?? '',
      patientZipCode: json['PatientZipCode'] as String? ?? '',
      bedNo: json['Bedno'] as String? ?? '',
      visitType: json['VisitType'] as String? ?? '',
      visitTypeNum: json['VisitTypeNum'] as String? ?? '',
      wardCd: json['WardCd'] as String? ?? '',
      abrvCareWardCd: json['ABRV_CARE_WARD_CD'] as String? ?? '',
      paramCommonJson: json['ParamCommonJson'] as String? ?? '',
      hosType: json['hosType'] as String? ?? '',
      operationRoomPlusRoom: json['OperationRoomPlusRoom'] as String? ?? '',
      operationName: json['OperationName'] as String? ?? '',
      orderVisitType: json['OrderVistyType'] as String? ?? '',
    );

Map<String, dynamic> _$$PatientInfoResultDataImplToJson(
        _$PatientInfoResultDataImpl instance) =>
    <String, dynamic>{
      'AdmissionDate': instance.admissionDate,
      'AdmissionTime': instance.admissionTime,
      'Age': instance.age,
      'AlertBloodGroup': instance.alertBloodGroup,
      'AlertInfo': instance.alertInfo,
      'AnesthesiaType': instance.anesthesiaType,
      'Bsa': instance.bsa,
      'ChargeId': instance.chargeId,
      'ChargeName': instance.chargeName,
      'ClinicalDate': instance.clinicalDate,
      'ClinicalTime': instance.clinicalTime,
      'ClnDeptCode': instance.clnDeptCode,
      'ClnDeptName': instance.clnDeptName,
      'ClnDeptNum': instance.clnDeptNum,
      'DiagName': instance.diagName,
      'DoctorId': instance.doctorId,
      'DoctorName': instance.doctorName,
      'PatientCode': instance.patientCode,
      'PatientName': instance.patientName,
      'PatientZipAddr': instance.patientZipAddr,
      'Room': instance.room,
      'Sex': instance.sex,
      'Ward': instance.ward,
      'Birthday': instance.birthday,
      'MDRPNO': instance.mdrpno,
      'EstimateTime': instance.estimateTime,
      'InspectionName': instance.inspectionName,
      'InspectionReservationType': instance.inspectionReservationType,
      'Inspectionstatus': instance.inspectionStatus,
      'InspectionTime': instance.inspectionTime,
      'OperationDate': instance.operationDate,
      'OperationDept': instance.operationDept,
      'OperationDoctor': instance.operationDoctor,
      'OperationDoctorName': instance.operationDoctorName,
      'OperationRoom': instance.operationRoom,
      'OperationType': instance.operationType,
      'OperationTypeName': instance.operationTypeName,
      'PatientAddr': instance.patientAddr,
      'PatientTelNo': instance.patientTelNo,
      'PatientHp': instance.patientHp,
      'PatientZipCode': instance.patientZipCode,
      'Bedno': instance.bedNo,
      'VisitType': instance.visitType,
      'VisitTypeNum': instance.visitTypeNum,
      'WardCd': instance.wardCd,
      'ABRV_CARE_WARD_CD': instance.abrvCareWardCd,
      'ParamCommonJson': instance.paramCommonJson,
      'hosType': instance.hosType,
      'OperationRoomPlusRoom': instance.operationRoomPlusRoom,
      'OperationName': instance.operationName,
      'OrderVistyType': instance.orderVisitType,
    };
