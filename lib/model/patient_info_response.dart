import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patient_info_response.freezed.dart';
part 'patient_info_response.g.dart';

@freezed
class PatientInfoResponse with _$PatientInfoResponse {
  const factory PatientInfoResponse({
    @JsonKey(name: 'RESULT_CODE') required String resultCode,
    @JsonKey(name: 'RESULT_DATA') required List<PatientInfoResultData> resultData,
    @JsonKey(name: 'ERROR_CODE') required String errorCode,
    @JsonKey(name: 'ERROR_MESSAGE') required String errorMessage,
  }) = _PatientInfoResponse;

  factory PatientInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$PatientInfoResponseFromJson(json);

  factory PatientInfoResponse.empty() => const PatientInfoResponse(
        resultCode: '0',
        resultData: [],
        errorCode: '0',
        errorMessage: '',
      );
}

@freezed
class PatientInfoResultData with _$PatientInfoResultData {
  const factory PatientInfoResultData({
    @JsonKey(name: 'AdmissionDate') required String admissionDate,
    @JsonKey(name: 'AdmissionTime', defaultValue: '') String? admissionTime,
    @JsonKey(name: 'Age') required String age,
    @JsonKey(name: 'AlertBloodGroup', defaultValue: '') String? alertBloodGroup,
    @JsonKey(name: 'AlertInfo', defaultValue: '') String? alertInfo,
    @JsonKey(name: 'AnesthesiaType', defaultValue: '') String? anesthesiaType,
    @JsonKey(name: 'Bsa', defaultValue: '') String? bsa,
    @JsonKey(name: 'ChargeId', defaultValue: '') String? chargeId,
    @JsonKey(name: 'ChargeName') required String chargeName,
    @JsonKey(name: 'ClinicalDate', defaultValue: '') String? clinicalDate,
    @JsonKey(name: 'ClinicalTime', defaultValue: '') String? clinicalTime,
    @JsonKey(name: 'ClnDeptCode') required String clnDeptCode,
    @JsonKey(name: 'ClnDeptName', defaultValue: '') String? clnDeptName,
    @JsonKey(name: 'ClnDeptNum', defaultValue: '') String? clnDeptNum,
    @JsonKey(name: 'DiagName') required String diagName,
    @JsonKey(name: 'DoctorId') required String doctorId,
    @JsonKey(name: 'DoctorName') required String doctorName,
    @JsonKey(name: 'PatientCode') required String patientCode,
    @JsonKey(name: 'PatientName') required String patientName,
    @JsonKey(name: 'PatientZipAddr') required String patientZipAddr,
    @JsonKey(name: 'Room') required String room,
    @JsonKey(name: 'Sex') required String sex,
    @JsonKey(name: 'Ward') required String ward,
    @JsonKey(name: 'Birthday') required String birthday,
    @JsonKey(name: 'MDRPNO') required String mdrpno,
    @JsonKey(name: 'EstimateTime', defaultValue: '') String? estimateTime,
    @JsonKey(name: 'InspectionName', defaultValue: '') String? inspectionName,
    @JsonKey(name: 'InspectionReservationType', defaultValue: '') String? inspectionReservationType,
    @JsonKey(name: 'Inspectionstatus', defaultValue: '') String? inspectionStatus,
    @JsonKey(name: 'InspectionTime', defaultValue: '') String? inspectionTime,
    @JsonKey(name: 'OperationDate', defaultValue: '') String? operationDate,
    @JsonKey(name: 'OperationDept', defaultValue: '') String? operationDept,
    @JsonKey(name: 'OperationDoctor', defaultValue: '') String? operationDoctor,
    @JsonKey(name: 'OperationDoctorName', defaultValue: '') String? operationDoctorName,
    @JsonKey(name: 'OperationRoom', defaultValue: '') String? operationRoom,
    @JsonKey(name: 'OperationType', defaultValue: '') String? operationType,
    @JsonKey(name: 'OperationTypeName', defaultValue: '') String? operationTypeName,
    @JsonKey(name: 'PatientAddr', defaultValue: '') String? patientAddr,
    @JsonKey(name: 'PatientTelNo', defaultValue: '') String? patientTelNo,
    @JsonKey(name: 'PatientHp', defaultValue: '') String? patientHp,
    @JsonKey(name: 'PatientZipCode', defaultValue: '') String? patientZipCode,
    @JsonKey(name: 'Bedno', defaultValue: '') String? bedNo,
    @JsonKey(name: 'VisitType', defaultValue: '') String? visitType,
    @JsonKey(name: 'VisitTypeNum', defaultValue: '') String? visitTypeNum,
    @JsonKey(name: 'WardCd', defaultValue: '') String? wardCd,
    @JsonKey(name: 'ABRV_CARE_WARD_CD', defaultValue: '') String? abrvCareWardCd,
    @JsonKey(name: 'ParamCommonJson', defaultValue: '') String? paramCommonJson,
    @JsonKey(name: 'hosType', defaultValue: '') String? hosType,
    @JsonKey(name: 'OperationRoomPlusRoom', defaultValue: '') String? operationRoomPlusRoom,
    @JsonKey(name: 'OperationName', defaultValue: '') String? operationName,
    @JsonKey(name: 'OrderVistyType', defaultValue: '') String? orderVisitType,
  }) = _PatientInfoResultData;

  factory PatientInfoResultData.fromJson(Map<String, dynamic> json) =>
      _$PatientInfoResultDataFromJson(json);
}