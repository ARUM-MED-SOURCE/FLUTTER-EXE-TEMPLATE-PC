// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatientInfoResponse _$PatientInfoResponseFromJson(Map<String, dynamic> json) {
  return _PatientInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$PatientInfoResponse {
  @JsonKey(name: 'RESULT_CODE')
  String get resultCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'RESULT_DATA')
  List<PatientInfoResultData> get resultData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'ERROR_CODE')
  String get errorCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'ERROR_MESSAGE')
  String get errorMessage => throw _privateConstructorUsedError;

  /// Serializes this PatientInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatientInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatientInfoResponseCopyWith<PatientInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientInfoResponseCopyWith<$Res> {
  factory $PatientInfoResponseCopyWith(
          PatientInfoResponse value, $Res Function(PatientInfoResponse) then) =
      _$PatientInfoResponseCopyWithImpl<$Res, PatientInfoResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'RESULT_CODE') String resultCode,
      @JsonKey(name: 'RESULT_DATA') List<PatientInfoResultData> resultData,
      @JsonKey(name: 'ERROR_CODE') String errorCode,
      @JsonKey(name: 'ERROR_MESSAGE') String errorMessage});
}

/// @nodoc
class _$PatientInfoResponseCopyWithImpl<$Res, $Val extends PatientInfoResponse>
    implements $PatientInfoResponseCopyWith<$Res> {
  _$PatientInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatientInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultCode = null,
    Object? resultData = null,
    Object? errorCode = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      resultCode: null == resultCode
          ? _value.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as String,
      resultData: null == resultData
          ? _value.resultData
          : resultData // ignore: cast_nullable_to_non_nullable
              as List<PatientInfoResultData>,
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientInfoResponseImplCopyWith<$Res>
    implements $PatientInfoResponseCopyWith<$Res> {
  factory _$$PatientInfoResponseImplCopyWith(_$PatientInfoResponseImpl value,
          $Res Function(_$PatientInfoResponseImpl) then) =
      __$$PatientInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'RESULT_CODE') String resultCode,
      @JsonKey(name: 'RESULT_DATA') List<PatientInfoResultData> resultData,
      @JsonKey(name: 'ERROR_CODE') String errorCode,
      @JsonKey(name: 'ERROR_MESSAGE') String errorMessage});
}

/// @nodoc
class __$$PatientInfoResponseImplCopyWithImpl<$Res>
    extends _$PatientInfoResponseCopyWithImpl<$Res, _$PatientInfoResponseImpl>
    implements _$$PatientInfoResponseImplCopyWith<$Res> {
  __$$PatientInfoResponseImplCopyWithImpl(_$PatientInfoResponseImpl _value,
      $Res Function(_$PatientInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatientInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultCode = null,
    Object? resultData = null,
    Object? errorCode = null,
    Object? errorMessage = null,
  }) {
    return _then(_$PatientInfoResponseImpl(
      resultCode: null == resultCode
          ? _value.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as String,
      resultData: null == resultData
          ? _value._resultData
          : resultData // ignore: cast_nullable_to_non_nullable
              as List<PatientInfoResultData>,
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientInfoResponseImpl implements _PatientInfoResponse {
  const _$PatientInfoResponseImpl(
      {@JsonKey(name: 'RESULT_CODE') required this.resultCode,
      @JsonKey(name: 'RESULT_DATA')
      required final List<PatientInfoResultData> resultData,
      @JsonKey(name: 'ERROR_CODE') required this.errorCode,
      @JsonKey(name: 'ERROR_MESSAGE') required this.errorMessage})
      : _resultData = resultData;

  factory _$PatientInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientInfoResponseImplFromJson(json);

  @override
  @JsonKey(name: 'RESULT_CODE')
  final String resultCode;
  final List<PatientInfoResultData> _resultData;
  @override
  @JsonKey(name: 'RESULT_DATA')
  List<PatientInfoResultData> get resultData {
    if (_resultData is EqualUnmodifiableListView) return _resultData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resultData);
  }

  @override
  @JsonKey(name: 'ERROR_CODE')
  final String errorCode;
  @override
  @JsonKey(name: 'ERROR_MESSAGE')
  final String errorMessage;

  @override
  String toString() {
    return 'PatientInfoResponse(resultCode: $resultCode, resultData: $resultData, errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientInfoResponseImpl &&
            (identical(other.resultCode, resultCode) ||
                other.resultCode == resultCode) &&
            const DeepCollectionEquality()
                .equals(other._resultData, _resultData) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      resultCode,
      const DeepCollectionEquality().hash(_resultData),
      errorCode,
      errorMessage);

  /// Create a copy of PatientInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientInfoResponseImplCopyWith<_$PatientInfoResponseImpl> get copyWith =>
      __$$PatientInfoResponseImplCopyWithImpl<_$PatientInfoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _PatientInfoResponse implements PatientInfoResponse {
  const factory _PatientInfoResponse(
          {@JsonKey(name: 'RESULT_CODE') required final String resultCode,
          @JsonKey(name: 'RESULT_DATA')
          required final List<PatientInfoResultData> resultData,
          @JsonKey(name: 'ERROR_CODE') required final String errorCode,
          @JsonKey(name: 'ERROR_MESSAGE') required final String errorMessage}) =
      _$PatientInfoResponseImpl;

  factory _PatientInfoResponse.fromJson(Map<String, dynamic> json) =
      _$PatientInfoResponseImpl.fromJson;

  @override
  @JsonKey(name: 'RESULT_CODE')
  String get resultCode;
  @override
  @JsonKey(name: 'RESULT_DATA')
  List<PatientInfoResultData> get resultData;
  @override
  @JsonKey(name: 'ERROR_CODE')
  String get errorCode;
  @override
  @JsonKey(name: 'ERROR_MESSAGE')
  String get errorMessage;

  /// Create a copy of PatientInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatientInfoResponseImplCopyWith<_$PatientInfoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PatientInfoResultData _$PatientInfoResultDataFromJson(
    Map<String, dynamic> json) {
  return _PatientInfoResultData.fromJson(json);
}

/// @nodoc
mixin _$PatientInfoResultData {
  @JsonKey(name: 'AdmissionDate')
  String get admissionDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'AdmissionTime', defaultValue: '')
  String? get admissionTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'Age')
  String get age => throw _privateConstructorUsedError;
  @JsonKey(name: 'AlertBloodGroup', defaultValue: '')
  String? get alertBloodGroup => throw _privateConstructorUsedError;
  @JsonKey(name: 'AlertInfo', defaultValue: '')
  String? get alertInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'AnesthesiaType', defaultValue: '')
  String? get anesthesiaType => throw _privateConstructorUsedError;
  @JsonKey(name: 'Bsa', defaultValue: '')
  String? get bsa => throw _privateConstructorUsedError;
  @JsonKey(name: 'ChargeId', defaultValue: '')
  String? get chargeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ChargeName')
  String get chargeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'ClinicalDate', defaultValue: '')
  String? get clinicalDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'ClinicalTime', defaultValue: '')
  String? get clinicalTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'ClnDeptCode')
  String get clnDeptCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'ClnDeptName', defaultValue: '')
  String? get clnDeptName => throw _privateConstructorUsedError;
  @JsonKey(name: 'ClnDeptNum', defaultValue: '')
  String? get clnDeptNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'DiagName')
  String get diagName => throw _privateConstructorUsedError;
  @JsonKey(name: 'DoctorId')
  String get doctorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'DoctorName')
  String get doctorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'PatientCode')
  String get patientCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'PatientName')
  String get patientName => throw _privateConstructorUsedError;
  @JsonKey(name: 'PatientZipAddr')
  String get patientZipAddr => throw _privateConstructorUsedError;
  @JsonKey(name: 'Room')
  String get room => throw _privateConstructorUsedError;
  @JsonKey(name: 'Sex')
  String get sex => throw _privateConstructorUsedError;
  @JsonKey(name: 'Ward')
  String get ward => throw _privateConstructorUsedError;
  @JsonKey(name: 'Birthday')
  String get birthday => throw _privateConstructorUsedError;
  @JsonKey(name: 'MDRPNO')
  String get mdrpno => throw _privateConstructorUsedError;
  @JsonKey(name: 'EstimateTime', defaultValue: '')
  String? get estimateTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'InspectionName', defaultValue: '')
  String? get inspectionName => throw _privateConstructorUsedError;
  @JsonKey(name: 'InspectionReservationType', defaultValue: '')
  String? get inspectionReservationType => throw _privateConstructorUsedError;
  @JsonKey(name: 'Inspectionstatus', defaultValue: '')
  String? get inspectionStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'InspectionTime', defaultValue: '')
  String? get inspectionTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'OperationDate', defaultValue: '')
  String? get operationDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'OperationDept', defaultValue: '')
  String? get operationDept => throw _privateConstructorUsedError;
  @JsonKey(name: 'OperationDoctor', defaultValue: '')
  String? get operationDoctor => throw _privateConstructorUsedError;
  @JsonKey(name: 'OperationDoctorName', defaultValue: '')
  String? get operationDoctorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'OperationRoom', defaultValue: '')
  String? get operationRoom => throw _privateConstructorUsedError;
  @JsonKey(name: 'OperationType', defaultValue: '')
  String? get operationType => throw _privateConstructorUsedError;
  @JsonKey(name: 'OperationTypeName', defaultValue: '')
  String? get operationTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'PatientAddr', defaultValue: '')
  String? get patientAddr => throw _privateConstructorUsedError;
  @JsonKey(name: 'PatientTelNo', defaultValue: '')
  String? get patientTelNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'PatientHp', defaultValue: '')
  String? get patientHp => throw _privateConstructorUsedError;
  @JsonKey(name: 'PatientZipCode', defaultValue: '')
  String? get patientZipCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'Bedno', defaultValue: '')
  String? get bedNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'VisitType', defaultValue: '')
  String? get visitType => throw _privateConstructorUsedError;
  @JsonKey(name: 'VisitTypeNum', defaultValue: '')
  String? get visitTypeNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'WardCd', defaultValue: '')
  String? get wardCd => throw _privateConstructorUsedError;
  @JsonKey(name: 'ABRV_CARE_WARD_CD', defaultValue: '')
  String? get abrvCareWardCd => throw _privateConstructorUsedError;
  @JsonKey(name: 'ParamCommonJson', defaultValue: '')
  String? get paramCommonJson => throw _privateConstructorUsedError;
  @JsonKey(name: 'hosType', defaultValue: '')
  String? get hosType => throw _privateConstructorUsedError;
  @JsonKey(name: 'OperationRoomPlusRoom', defaultValue: '')
  String? get operationRoomPlusRoom => throw _privateConstructorUsedError;
  @JsonKey(name: 'OperationName', defaultValue: '')
  String? get operationName => throw _privateConstructorUsedError;
  @JsonKey(name: 'OrderVistyType', defaultValue: '')
  String? get orderVisitType => throw _privateConstructorUsedError;

  /// Serializes this PatientInfoResultData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatientInfoResultData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatientInfoResultDataCopyWith<PatientInfoResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientInfoResultDataCopyWith<$Res> {
  factory $PatientInfoResultDataCopyWith(PatientInfoResultData value,
          $Res Function(PatientInfoResultData) then) =
      _$PatientInfoResultDataCopyWithImpl<$Res, PatientInfoResultData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'AdmissionDate') String admissionDate,
      @JsonKey(name: 'AdmissionTime', defaultValue: '') String? admissionTime,
      @JsonKey(name: 'Age') String age,
      @JsonKey(name: 'AlertBloodGroup', defaultValue: '')
      String? alertBloodGroup,
      @JsonKey(name: 'AlertInfo', defaultValue: '') String? alertInfo,
      @JsonKey(name: 'AnesthesiaType', defaultValue: '') String? anesthesiaType,
      @JsonKey(name: 'Bsa', defaultValue: '') String? bsa,
      @JsonKey(name: 'ChargeId', defaultValue: '') String? chargeId,
      @JsonKey(name: 'ChargeName') String chargeName,
      @JsonKey(name: 'ClinicalDate', defaultValue: '') String? clinicalDate,
      @JsonKey(name: 'ClinicalTime', defaultValue: '') String? clinicalTime,
      @JsonKey(name: 'ClnDeptCode') String clnDeptCode,
      @JsonKey(name: 'ClnDeptName', defaultValue: '') String? clnDeptName,
      @JsonKey(name: 'ClnDeptNum', defaultValue: '') String? clnDeptNum,
      @JsonKey(name: 'DiagName') String diagName,
      @JsonKey(name: 'DoctorId') String doctorId,
      @JsonKey(name: 'DoctorName') String doctorName,
      @JsonKey(name: 'PatientCode') String patientCode,
      @JsonKey(name: 'PatientName') String patientName,
      @JsonKey(name: 'PatientZipAddr') String patientZipAddr,
      @JsonKey(name: 'Room') String room,
      @JsonKey(name: 'Sex') String sex,
      @JsonKey(name: 'Ward') String ward,
      @JsonKey(name: 'Birthday') String birthday,
      @JsonKey(name: 'MDRPNO') String mdrpno,
      @JsonKey(name: 'EstimateTime', defaultValue: '') String? estimateTime,
      @JsonKey(name: 'InspectionName', defaultValue: '') String? inspectionName,
      @JsonKey(name: 'InspectionReservationType', defaultValue: '')
      String? inspectionReservationType,
      @JsonKey(name: 'Inspectionstatus', defaultValue: '')
      String? inspectionStatus,
      @JsonKey(name: 'InspectionTime', defaultValue: '') String? inspectionTime,
      @JsonKey(name: 'OperationDate', defaultValue: '') String? operationDate,
      @JsonKey(name: 'OperationDept', defaultValue: '') String? operationDept,
      @JsonKey(name: 'OperationDoctor', defaultValue: '')
      String? operationDoctor,
      @JsonKey(name: 'OperationDoctorName', defaultValue: '')
      String? operationDoctorName,
      @JsonKey(name: 'OperationRoom', defaultValue: '') String? operationRoom,
      @JsonKey(name: 'OperationType', defaultValue: '') String? operationType,
      @JsonKey(name: 'OperationTypeName', defaultValue: '')
      String? operationTypeName,
      @JsonKey(name: 'PatientAddr', defaultValue: '') String? patientAddr,
      @JsonKey(name: 'PatientTelNo', defaultValue: '') String? patientTelNo,
      @JsonKey(name: 'PatientHp', defaultValue: '') String? patientHp,
      @JsonKey(name: 'PatientZipCode', defaultValue: '') String? patientZipCode,
      @JsonKey(name: 'Bedno', defaultValue: '') String? bedNo,
      @JsonKey(name: 'VisitType', defaultValue: '') String? visitType,
      @JsonKey(name: 'VisitTypeNum', defaultValue: '') String? visitTypeNum,
      @JsonKey(name: 'WardCd', defaultValue: '') String? wardCd,
      @JsonKey(name: 'ABRV_CARE_WARD_CD', defaultValue: '')
      String? abrvCareWardCd,
      @JsonKey(name: 'ParamCommonJson', defaultValue: '')
      String? paramCommonJson,
      @JsonKey(name: 'hosType', defaultValue: '') String? hosType,
      @JsonKey(name: 'OperationRoomPlusRoom', defaultValue: '')
      String? operationRoomPlusRoom,
      @JsonKey(name: 'OperationName', defaultValue: '') String? operationName,
      @JsonKey(name: 'OrderVistyType', defaultValue: '')
      String? orderVisitType});
}

/// @nodoc
class _$PatientInfoResultDataCopyWithImpl<$Res,
        $Val extends PatientInfoResultData>
    implements $PatientInfoResultDataCopyWith<$Res> {
  _$PatientInfoResultDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatientInfoResultData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? admissionDate = null,
    Object? admissionTime = freezed,
    Object? age = null,
    Object? alertBloodGroup = freezed,
    Object? alertInfo = freezed,
    Object? anesthesiaType = freezed,
    Object? bsa = freezed,
    Object? chargeId = freezed,
    Object? chargeName = null,
    Object? clinicalDate = freezed,
    Object? clinicalTime = freezed,
    Object? clnDeptCode = null,
    Object? clnDeptName = freezed,
    Object? clnDeptNum = freezed,
    Object? diagName = null,
    Object? doctorId = null,
    Object? doctorName = null,
    Object? patientCode = null,
    Object? patientName = null,
    Object? patientZipAddr = null,
    Object? room = null,
    Object? sex = null,
    Object? ward = null,
    Object? birthday = null,
    Object? mdrpno = null,
    Object? estimateTime = freezed,
    Object? inspectionName = freezed,
    Object? inspectionReservationType = freezed,
    Object? inspectionStatus = freezed,
    Object? inspectionTime = freezed,
    Object? operationDate = freezed,
    Object? operationDept = freezed,
    Object? operationDoctor = freezed,
    Object? operationDoctorName = freezed,
    Object? operationRoom = freezed,
    Object? operationType = freezed,
    Object? operationTypeName = freezed,
    Object? patientAddr = freezed,
    Object? patientTelNo = freezed,
    Object? patientHp = freezed,
    Object? patientZipCode = freezed,
    Object? bedNo = freezed,
    Object? visitType = freezed,
    Object? visitTypeNum = freezed,
    Object? wardCd = freezed,
    Object? abrvCareWardCd = freezed,
    Object? paramCommonJson = freezed,
    Object? hosType = freezed,
    Object? operationRoomPlusRoom = freezed,
    Object? operationName = freezed,
    Object? orderVisitType = freezed,
  }) {
    return _then(_value.copyWith(
      admissionDate: null == admissionDate
          ? _value.admissionDate
          : admissionDate // ignore: cast_nullable_to_non_nullable
              as String,
      admissionTime: freezed == admissionTime
          ? _value.admissionTime
          : admissionTime // ignore: cast_nullable_to_non_nullable
              as String?,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      alertBloodGroup: freezed == alertBloodGroup
          ? _value.alertBloodGroup
          : alertBloodGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      alertInfo: freezed == alertInfo
          ? _value.alertInfo
          : alertInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      anesthesiaType: freezed == anesthesiaType
          ? _value.anesthesiaType
          : anesthesiaType // ignore: cast_nullable_to_non_nullable
              as String?,
      bsa: freezed == bsa
          ? _value.bsa
          : bsa // ignore: cast_nullable_to_non_nullable
              as String?,
      chargeId: freezed == chargeId
          ? _value.chargeId
          : chargeId // ignore: cast_nullable_to_non_nullable
              as String?,
      chargeName: null == chargeName
          ? _value.chargeName
          : chargeName // ignore: cast_nullable_to_non_nullable
              as String,
      clinicalDate: freezed == clinicalDate
          ? _value.clinicalDate
          : clinicalDate // ignore: cast_nullable_to_non_nullable
              as String?,
      clinicalTime: freezed == clinicalTime
          ? _value.clinicalTime
          : clinicalTime // ignore: cast_nullable_to_non_nullable
              as String?,
      clnDeptCode: null == clnDeptCode
          ? _value.clnDeptCode
          : clnDeptCode // ignore: cast_nullable_to_non_nullable
              as String,
      clnDeptName: freezed == clnDeptName
          ? _value.clnDeptName
          : clnDeptName // ignore: cast_nullable_to_non_nullable
              as String?,
      clnDeptNum: freezed == clnDeptNum
          ? _value.clnDeptNum
          : clnDeptNum // ignore: cast_nullable_to_non_nullable
              as String?,
      diagName: null == diagName
          ? _value.diagName
          : diagName // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      doctorName: null == doctorName
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String,
      patientCode: null == patientCode
          ? _value.patientCode
          : patientCode // ignore: cast_nullable_to_non_nullable
              as String,
      patientName: null == patientName
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String,
      patientZipAddr: null == patientZipAddr
          ? _value.patientZipAddr
          : patientZipAddr // ignore: cast_nullable_to_non_nullable
              as String,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String,
      ward: null == ward
          ? _value.ward
          : ward // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      mdrpno: null == mdrpno
          ? _value.mdrpno
          : mdrpno // ignore: cast_nullable_to_non_nullable
              as String,
      estimateTime: freezed == estimateTime
          ? _value.estimateTime
          : estimateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionName: freezed == inspectionName
          ? _value.inspectionName
          : inspectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionReservationType: freezed == inspectionReservationType
          ? _value.inspectionReservationType
          : inspectionReservationType // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionStatus: freezed == inspectionStatus
          ? _value.inspectionStatus
          : inspectionStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionTime: freezed == inspectionTime
          ? _value.inspectionTime
          : inspectionTime // ignore: cast_nullable_to_non_nullable
              as String?,
      operationDate: freezed == operationDate
          ? _value.operationDate
          : operationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      operationDept: freezed == operationDept
          ? _value.operationDept
          : operationDept // ignore: cast_nullable_to_non_nullable
              as String?,
      operationDoctor: freezed == operationDoctor
          ? _value.operationDoctor
          : operationDoctor // ignore: cast_nullable_to_non_nullable
              as String?,
      operationDoctorName: freezed == operationDoctorName
          ? _value.operationDoctorName
          : operationDoctorName // ignore: cast_nullable_to_non_nullable
              as String?,
      operationRoom: freezed == operationRoom
          ? _value.operationRoom
          : operationRoom // ignore: cast_nullable_to_non_nullable
              as String?,
      operationType: freezed == operationType
          ? _value.operationType
          : operationType // ignore: cast_nullable_to_non_nullable
              as String?,
      operationTypeName: freezed == operationTypeName
          ? _value.operationTypeName
          : operationTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      patientAddr: freezed == patientAddr
          ? _value.patientAddr
          : patientAddr // ignore: cast_nullable_to_non_nullable
              as String?,
      patientTelNo: freezed == patientTelNo
          ? _value.patientTelNo
          : patientTelNo // ignore: cast_nullable_to_non_nullable
              as String?,
      patientHp: freezed == patientHp
          ? _value.patientHp
          : patientHp // ignore: cast_nullable_to_non_nullable
              as String?,
      patientZipCode: freezed == patientZipCode
          ? _value.patientZipCode
          : patientZipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      bedNo: freezed == bedNo
          ? _value.bedNo
          : bedNo // ignore: cast_nullable_to_non_nullable
              as String?,
      visitType: freezed == visitType
          ? _value.visitType
          : visitType // ignore: cast_nullable_to_non_nullable
              as String?,
      visitTypeNum: freezed == visitTypeNum
          ? _value.visitTypeNum
          : visitTypeNum // ignore: cast_nullable_to_non_nullable
              as String?,
      wardCd: freezed == wardCd
          ? _value.wardCd
          : wardCd // ignore: cast_nullable_to_non_nullable
              as String?,
      abrvCareWardCd: freezed == abrvCareWardCd
          ? _value.abrvCareWardCd
          : abrvCareWardCd // ignore: cast_nullable_to_non_nullable
              as String?,
      paramCommonJson: freezed == paramCommonJson
          ? _value.paramCommonJson
          : paramCommonJson // ignore: cast_nullable_to_non_nullable
              as String?,
      hosType: freezed == hosType
          ? _value.hosType
          : hosType // ignore: cast_nullable_to_non_nullable
              as String?,
      operationRoomPlusRoom: freezed == operationRoomPlusRoom
          ? _value.operationRoomPlusRoom
          : operationRoomPlusRoom // ignore: cast_nullable_to_non_nullable
              as String?,
      operationName: freezed == operationName
          ? _value.operationName
          : operationName // ignore: cast_nullable_to_non_nullable
              as String?,
      orderVisitType: freezed == orderVisitType
          ? _value.orderVisitType
          : orderVisitType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientInfoResultDataImplCopyWith<$Res>
    implements $PatientInfoResultDataCopyWith<$Res> {
  factory _$$PatientInfoResultDataImplCopyWith(
          _$PatientInfoResultDataImpl value,
          $Res Function(_$PatientInfoResultDataImpl) then) =
      __$$PatientInfoResultDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'AdmissionDate') String admissionDate,
      @JsonKey(name: 'AdmissionTime', defaultValue: '') String? admissionTime,
      @JsonKey(name: 'Age') String age,
      @JsonKey(name: 'AlertBloodGroup', defaultValue: '')
      String? alertBloodGroup,
      @JsonKey(name: 'AlertInfo', defaultValue: '') String? alertInfo,
      @JsonKey(name: 'AnesthesiaType', defaultValue: '') String? anesthesiaType,
      @JsonKey(name: 'Bsa', defaultValue: '') String? bsa,
      @JsonKey(name: 'ChargeId', defaultValue: '') String? chargeId,
      @JsonKey(name: 'ChargeName') String chargeName,
      @JsonKey(name: 'ClinicalDate', defaultValue: '') String? clinicalDate,
      @JsonKey(name: 'ClinicalTime', defaultValue: '') String? clinicalTime,
      @JsonKey(name: 'ClnDeptCode') String clnDeptCode,
      @JsonKey(name: 'ClnDeptName', defaultValue: '') String? clnDeptName,
      @JsonKey(name: 'ClnDeptNum', defaultValue: '') String? clnDeptNum,
      @JsonKey(name: 'DiagName') String diagName,
      @JsonKey(name: 'DoctorId') String doctorId,
      @JsonKey(name: 'DoctorName') String doctorName,
      @JsonKey(name: 'PatientCode') String patientCode,
      @JsonKey(name: 'PatientName') String patientName,
      @JsonKey(name: 'PatientZipAddr') String patientZipAddr,
      @JsonKey(name: 'Room') String room,
      @JsonKey(name: 'Sex') String sex,
      @JsonKey(name: 'Ward') String ward,
      @JsonKey(name: 'Birthday') String birthday,
      @JsonKey(name: 'MDRPNO') String mdrpno,
      @JsonKey(name: 'EstimateTime', defaultValue: '') String? estimateTime,
      @JsonKey(name: 'InspectionName', defaultValue: '') String? inspectionName,
      @JsonKey(name: 'InspectionReservationType', defaultValue: '')
      String? inspectionReservationType,
      @JsonKey(name: 'Inspectionstatus', defaultValue: '')
      String? inspectionStatus,
      @JsonKey(name: 'InspectionTime', defaultValue: '') String? inspectionTime,
      @JsonKey(name: 'OperationDate', defaultValue: '') String? operationDate,
      @JsonKey(name: 'OperationDept', defaultValue: '') String? operationDept,
      @JsonKey(name: 'OperationDoctor', defaultValue: '')
      String? operationDoctor,
      @JsonKey(name: 'OperationDoctorName', defaultValue: '')
      String? operationDoctorName,
      @JsonKey(name: 'OperationRoom', defaultValue: '') String? operationRoom,
      @JsonKey(name: 'OperationType', defaultValue: '') String? operationType,
      @JsonKey(name: 'OperationTypeName', defaultValue: '')
      String? operationTypeName,
      @JsonKey(name: 'PatientAddr', defaultValue: '') String? patientAddr,
      @JsonKey(name: 'PatientTelNo', defaultValue: '') String? patientTelNo,
      @JsonKey(name: 'PatientHp', defaultValue: '') String? patientHp,
      @JsonKey(name: 'PatientZipCode', defaultValue: '') String? patientZipCode,
      @JsonKey(name: 'Bedno', defaultValue: '') String? bedNo,
      @JsonKey(name: 'VisitType', defaultValue: '') String? visitType,
      @JsonKey(name: 'VisitTypeNum', defaultValue: '') String? visitTypeNum,
      @JsonKey(name: 'WardCd', defaultValue: '') String? wardCd,
      @JsonKey(name: 'ABRV_CARE_WARD_CD', defaultValue: '')
      String? abrvCareWardCd,
      @JsonKey(name: 'ParamCommonJson', defaultValue: '')
      String? paramCommonJson,
      @JsonKey(name: 'hosType', defaultValue: '') String? hosType,
      @JsonKey(name: 'OperationRoomPlusRoom', defaultValue: '')
      String? operationRoomPlusRoom,
      @JsonKey(name: 'OperationName', defaultValue: '') String? operationName,
      @JsonKey(name: 'OrderVistyType', defaultValue: '')
      String? orderVisitType});
}

/// @nodoc
class __$$PatientInfoResultDataImplCopyWithImpl<$Res>
    extends _$PatientInfoResultDataCopyWithImpl<$Res,
        _$PatientInfoResultDataImpl>
    implements _$$PatientInfoResultDataImplCopyWith<$Res> {
  __$$PatientInfoResultDataImplCopyWithImpl(_$PatientInfoResultDataImpl _value,
      $Res Function(_$PatientInfoResultDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatientInfoResultData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? admissionDate = null,
    Object? admissionTime = freezed,
    Object? age = null,
    Object? alertBloodGroup = freezed,
    Object? alertInfo = freezed,
    Object? anesthesiaType = freezed,
    Object? bsa = freezed,
    Object? chargeId = freezed,
    Object? chargeName = null,
    Object? clinicalDate = freezed,
    Object? clinicalTime = freezed,
    Object? clnDeptCode = null,
    Object? clnDeptName = freezed,
    Object? clnDeptNum = freezed,
    Object? diagName = null,
    Object? doctorId = null,
    Object? doctorName = null,
    Object? patientCode = null,
    Object? patientName = null,
    Object? patientZipAddr = null,
    Object? room = null,
    Object? sex = null,
    Object? ward = null,
    Object? birthday = null,
    Object? mdrpno = null,
    Object? estimateTime = freezed,
    Object? inspectionName = freezed,
    Object? inspectionReservationType = freezed,
    Object? inspectionStatus = freezed,
    Object? inspectionTime = freezed,
    Object? operationDate = freezed,
    Object? operationDept = freezed,
    Object? operationDoctor = freezed,
    Object? operationDoctorName = freezed,
    Object? operationRoom = freezed,
    Object? operationType = freezed,
    Object? operationTypeName = freezed,
    Object? patientAddr = freezed,
    Object? patientTelNo = freezed,
    Object? patientHp = freezed,
    Object? patientZipCode = freezed,
    Object? bedNo = freezed,
    Object? visitType = freezed,
    Object? visitTypeNum = freezed,
    Object? wardCd = freezed,
    Object? abrvCareWardCd = freezed,
    Object? paramCommonJson = freezed,
    Object? hosType = freezed,
    Object? operationRoomPlusRoom = freezed,
    Object? operationName = freezed,
    Object? orderVisitType = freezed,
  }) {
    return _then(_$PatientInfoResultDataImpl(
      admissionDate: null == admissionDate
          ? _value.admissionDate
          : admissionDate // ignore: cast_nullable_to_non_nullable
              as String,
      admissionTime: freezed == admissionTime
          ? _value.admissionTime
          : admissionTime // ignore: cast_nullable_to_non_nullable
              as String?,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      alertBloodGroup: freezed == alertBloodGroup
          ? _value.alertBloodGroup
          : alertBloodGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      alertInfo: freezed == alertInfo
          ? _value.alertInfo
          : alertInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      anesthesiaType: freezed == anesthesiaType
          ? _value.anesthesiaType
          : anesthesiaType // ignore: cast_nullable_to_non_nullable
              as String?,
      bsa: freezed == bsa
          ? _value.bsa
          : bsa // ignore: cast_nullable_to_non_nullable
              as String?,
      chargeId: freezed == chargeId
          ? _value.chargeId
          : chargeId // ignore: cast_nullable_to_non_nullable
              as String?,
      chargeName: null == chargeName
          ? _value.chargeName
          : chargeName // ignore: cast_nullable_to_non_nullable
              as String,
      clinicalDate: freezed == clinicalDate
          ? _value.clinicalDate
          : clinicalDate // ignore: cast_nullable_to_non_nullable
              as String?,
      clinicalTime: freezed == clinicalTime
          ? _value.clinicalTime
          : clinicalTime // ignore: cast_nullable_to_non_nullable
              as String?,
      clnDeptCode: null == clnDeptCode
          ? _value.clnDeptCode
          : clnDeptCode // ignore: cast_nullable_to_non_nullable
              as String,
      clnDeptName: freezed == clnDeptName
          ? _value.clnDeptName
          : clnDeptName // ignore: cast_nullable_to_non_nullable
              as String?,
      clnDeptNum: freezed == clnDeptNum
          ? _value.clnDeptNum
          : clnDeptNum // ignore: cast_nullable_to_non_nullable
              as String?,
      diagName: null == diagName
          ? _value.diagName
          : diagName // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      doctorName: null == doctorName
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String,
      patientCode: null == patientCode
          ? _value.patientCode
          : patientCode // ignore: cast_nullable_to_non_nullable
              as String,
      patientName: null == patientName
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String,
      patientZipAddr: null == patientZipAddr
          ? _value.patientZipAddr
          : patientZipAddr // ignore: cast_nullable_to_non_nullable
              as String,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String,
      ward: null == ward
          ? _value.ward
          : ward // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      mdrpno: null == mdrpno
          ? _value.mdrpno
          : mdrpno // ignore: cast_nullable_to_non_nullable
              as String,
      estimateTime: freezed == estimateTime
          ? _value.estimateTime
          : estimateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionName: freezed == inspectionName
          ? _value.inspectionName
          : inspectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionReservationType: freezed == inspectionReservationType
          ? _value.inspectionReservationType
          : inspectionReservationType // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionStatus: freezed == inspectionStatus
          ? _value.inspectionStatus
          : inspectionStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionTime: freezed == inspectionTime
          ? _value.inspectionTime
          : inspectionTime // ignore: cast_nullable_to_non_nullable
              as String?,
      operationDate: freezed == operationDate
          ? _value.operationDate
          : operationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      operationDept: freezed == operationDept
          ? _value.operationDept
          : operationDept // ignore: cast_nullable_to_non_nullable
              as String?,
      operationDoctor: freezed == operationDoctor
          ? _value.operationDoctor
          : operationDoctor // ignore: cast_nullable_to_non_nullable
              as String?,
      operationDoctorName: freezed == operationDoctorName
          ? _value.operationDoctorName
          : operationDoctorName // ignore: cast_nullable_to_non_nullable
              as String?,
      operationRoom: freezed == operationRoom
          ? _value.operationRoom
          : operationRoom // ignore: cast_nullable_to_non_nullable
              as String?,
      operationType: freezed == operationType
          ? _value.operationType
          : operationType // ignore: cast_nullable_to_non_nullable
              as String?,
      operationTypeName: freezed == operationTypeName
          ? _value.operationTypeName
          : operationTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      patientAddr: freezed == patientAddr
          ? _value.patientAddr
          : patientAddr // ignore: cast_nullable_to_non_nullable
              as String?,
      patientTelNo: freezed == patientTelNo
          ? _value.patientTelNo
          : patientTelNo // ignore: cast_nullable_to_non_nullable
              as String?,
      patientHp: freezed == patientHp
          ? _value.patientHp
          : patientHp // ignore: cast_nullable_to_non_nullable
              as String?,
      patientZipCode: freezed == patientZipCode
          ? _value.patientZipCode
          : patientZipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      bedNo: freezed == bedNo
          ? _value.bedNo
          : bedNo // ignore: cast_nullable_to_non_nullable
              as String?,
      visitType: freezed == visitType
          ? _value.visitType
          : visitType // ignore: cast_nullable_to_non_nullable
              as String?,
      visitTypeNum: freezed == visitTypeNum
          ? _value.visitTypeNum
          : visitTypeNum // ignore: cast_nullable_to_non_nullable
              as String?,
      wardCd: freezed == wardCd
          ? _value.wardCd
          : wardCd // ignore: cast_nullable_to_non_nullable
              as String?,
      abrvCareWardCd: freezed == abrvCareWardCd
          ? _value.abrvCareWardCd
          : abrvCareWardCd // ignore: cast_nullable_to_non_nullable
              as String?,
      paramCommonJson: freezed == paramCommonJson
          ? _value.paramCommonJson
          : paramCommonJson // ignore: cast_nullable_to_non_nullable
              as String?,
      hosType: freezed == hosType
          ? _value.hosType
          : hosType // ignore: cast_nullable_to_non_nullable
              as String?,
      operationRoomPlusRoom: freezed == operationRoomPlusRoom
          ? _value.operationRoomPlusRoom
          : operationRoomPlusRoom // ignore: cast_nullable_to_non_nullable
              as String?,
      operationName: freezed == operationName
          ? _value.operationName
          : operationName // ignore: cast_nullable_to_non_nullable
              as String?,
      orderVisitType: freezed == orderVisitType
          ? _value.orderVisitType
          : orderVisitType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientInfoResultDataImpl implements _PatientInfoResultData {
  const _$PatientInfoResultDataImpl(
      {@JsonKey(name: 'AdmissionDate') required this.admissionDate,
      @JsonKey(name: 'AdmissionTime', defaultValue: '') this.admissionTime,
      @JsonKey(name: 'Age') required this.age,
      @JsonKey(name: 'AlertBloodGroup', defaultValue: '') this.alertBloodGroup,
      @JsonKey(name: 'AlertInfo', defaultValue: '') this.alertInfo,
      @JsonKey(name: 'AnesthesiaType', defaultValue: '') this.anesthesiaType,
      @JsonKey(name: 'Bsa', defaultValue: '') this.bsa,
      @JsonKey(name: 'ChargeId', defaultValue: '') this.chargeId,
      @JsonKey(name: 'ChargeName') required this.chargeName,
      @JsonKey(name: 'ClinicalDate', defaultValue: '') this.clinicalDate,
      @JsonKey(name: 'ClinicalTime', defaultValue: '') this.clinicalTime,
      @JsonKey(name: 'ClnDeptCode') required this.clnDeptCode,
      @JsonKey(name: 'ClnDeptName', defaultValue: '') this.clnDeptName,
      @JsonKey(name: 'ClnDeptNum', defaultValue: '') this.clnDeptNum,
      @JsonKey(name: 'DiagName') required this.diagName,
      @JsonKey(name: 'DoctorId') required this.doctorId,
      @JsonKey(name: 'DoctorName') required this.doctorName,
      @JsonKey(name: 'PatientCode') required this.patientCode,
      @JsonKey(name: 'PatientName') required this.patientName,
      @JsonKey(name: 'PatientZipAddr') required this.patientZipAddr,
      @JsonKey(name: 'Room') required this.room,
      @JsonKey(name: 'Sex') required this.sex,
      @JsonKey(name: 'Ward') required this.ward,
      @JsonKey(name: 'Birthday') required this.birthday,
      @JsonKey(name: 'MDRPNO') required this.mdrpno,
      @JsonKey(name: 'EstimateTime', defaultValue: '') this.estimateTime,
      @JsonKey(name: 'InspectionName', defaultValue: '') this.inspectionName,
      @JsonKey(name: 'InspectionReservationType', defaultValue: '')
      this.inspectionReservationType,
      @JsonKey(name: 'Inspectionstatus', defaultValue: '')
      this.inspectionStatus,
      @JsonKey(name: 'InspectionTime', defaultValue: '') this.inspectionTime,
      @JsonKey(name: 'OperationDate', defaultValue: '') this.operationDate,
      @JsonKey(name: 'OperationDept', defaultValue: '') this.operationDept,
      @JsonKey(name: 'OperationDoctor', defaultValue: '') this.operationDoctor,
      @JsonKey(name: 'OperationDoctorName', defaultValue: '')
      this.operationDoctorName,
      @JsonKey(name: 'OperationRoom', defaultValue: '') this.operationRoom,
      @JsonKey(name: 'OperationType', defaultValue: '') this.operationType,
      @JsonKey(name: 'OperationTypeName', defaultValue: '')
      this.operationTypeName,
      @JsonKey(name: 'PatientAddr', defaultValue: '') this.patientAddr,
      @JsonKey(name: 'PatientTelNo', defaultValue: '') this.patientTelNo,
      @JsonKey(name: 'PatientHp', defaultValue: '') this.patientHp,
      @JsonKey(name: 'PatientZipCode', defaultValue: '') this.patientZipCode,
      @JsonKey(name: 'Bedno', defaultValue: '') this.bedNo,
      @JsonKey(name: 'VisitType', defaultValue: '') this.visitType,
      @JsonKey(name: 'VisitTypeNum', defaultValue: '') this.visitTypeNum,
      @JsonKey(name: 'WardCd', defaultValue: '') this.wardCd,
      @JsonKey(name: 'ABRV_CARE_WARD_CD', defaultValue: '') this.abrvCareWardCd,
      @JsonKey(name: 'ParamCommonJson', defaultValue: '') this.paramCommonJson,
      @JsonKey(name: 'hosType', defaultValue: '') this.hosType,
      @JsonKey(name: 'OperationRoomPlusRoom', defaultValue: '')
      this.operationRoomPlusRoom,
      @JsonKey(name: 'OperationName', defaultValue: '') this.operationName,
      @JsonKey(name: 'OrderVistyType', defaultValue: '') this.orderVisitType});

  factory _$PatientInfoResultDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientInfoResultDataImplFromJson(json);

  @override
  @JsonKey(name: 'AdmissionDate')
  final String admissionDate;
  @override
  @JsonKey(name: 'AdmissionTime', defaultValue: '')
  final String? admissionTime;
  @override
  @JsonKey(name: 'Age')
  final String age;
  @override
  @JsonKey(name: 'AlertBloodGroup', defaultValue: '')
  final String? alertBloodGroup;
  @override
  @JsonKey(name: 'AlertInfo', defaultValue: '')
  final String? alertInfo;
  @override
  @JsonKey(name: 'AnesthesiaType', defaultValue: '')
  final String? anesthesiaType;
  @override
  @JsonKey(name: 'Bsa', defaultValue: '')
  final String? bsa;
  @override
  @JsonKey(name: 'ChargeId', defaultValue: '')
  final String? chargeId;
  @override
  @JsonKey(name: 'ChargeName')
  final String chargeName;
  @override
  @JsonKey(name: 'ClinicalDate', defaultValue: '')
  final String? clinicalDate;
  @override
  @JsonKey(name: 'ClinicalTime', defaultValue: '')
  final String? clinicalTime;
  @override
  @JsonKey(name: 'ClnDeptCode')
  final String clnDeptCode;
  @override
  @JsonKey(name: 'ClnDeptName', defaultValue: '')
  final String? clnDeptName;
  @override
  @JsonKey(name: 'ClnDeptNum', defaultValue: '')
  final String? clnDeptNum;
  @override
  @JsonKey(name: 'DiagName')
  final String diagName;
  @override
  @JsonKey(name: 'DoctorId')
  final String doctorId;
  @override
  @JsonKey(name: 'DoctorName')
  final String doctorName;
  @override
  @JsonKey(name: 'PatientCode')
  final String patientCode;
  @override
  @JsonKey(name: 'PatientName')
  final String patientName;
  @override
  @JsonKey(name: 'PatientZipAddr')
  final String patientZipAddr;
  @override
  @JsonKey(name: 'Room')
  final String room;
  @override
  @JsonKey(name: 'Sex')
  final String sex;
  @override
  @JsonKey(name: 'Ward')
  final String ward;
  @override
  @JsonKey(name: 'Birthday')
  final String birthday;
  @override
  @JsonKey(name: 'MDRPNO')
  final String mdrpno;
  @override
  @JsonKey(name: 'EstimateTime', defaultValue: '')
  final String? estimateTime;
  @override
  @JsonKey(name: 'InspectionName', defaultValue: '')
  final String? inspectionName;
  @override
  @JsonKey(name: 'InspectionReservationType', defaultValue: '')
  final String? inspectionReservationType;
  @override
  @JsonKey(name: 'Inspectionstatus', defaultValue: '')
  final String? inspectionStatus;
  @override
  @JsonKey(name: 'InspectionTime', defaultValue: '')
  final String? inspectionTime;
  @override
  @JsonKey(name: 'OperationDate', defaultValue: '')
  final String? operationDate;
  @override
  @JsonKey(name: 'OperationDept', defaultValue: '')
  final String? operationDept;
  @override
  @JsonKey(name: 'OperationDoctor', defaultValue: '')
  final String? operationDoctor;
  @override
  @JsonKey(name: 'OperationDoctorName', defaultValue: '')
  final String? operationDoctorName;
  @override
  @JsonKey(name: 'OperationRoom', defaultValue: '')
  final String? operationRoom;
  @override
  @JsonKey(name: 'OperationType', defaultValue: '')
  final String? operationType;
  @override
  @JsonKey(name: 'OperationTypeName', defaultValue: '')
  final String? operationTypeName;
  @override
  @JsonKey(name: 'PatientAddr', defaultValue: '')
  final String? patientAddr;
  @override
  @JsonKey(name: 'PatientTelNo', defaultValue: '')
  final String? patientTelNo;
  @override
  @JsonKey(name: 'PatientHp', defaultValue: '')
  final String? patientHp;
  @override
  @JsonKey(name: 'PatientZipCode', defaultValue: '')
  final String? patientZipCode;
  @override
  @JsonKey(name: 'Bedno', defaultValue: '')
  final String? bedNo;
  @override
  @JsonKey(name: 'VisitType', defaultValue: '')
  final String? visitType;
  @override
  @JsonKey(name: 'VisitTypeNum', defaultValue: '')
  final String? visitTypeNum;
  @override
  @JsonKey(name: 'WardCd', defaultValue: '')
  final String? wardCd;
  @override
  @JsonKey(name: 'ABRV_CARE_WARD_CD', defaultValue: '')
  final String? abrvCareWardCd;
  @override
  @JsonKey(name: 'ParamCommonJson', defaultValue: '')
  final String? paramCommonJson;
  @override
  @JsonKey(name: 'hosType', defaultValue: '')
  final String? hosType;
  @override
  @JsonKey(name: 'OperationRoomPlusRoom', defaultValue: '')
  final String? operationRoomPlusRoom;
  @override
  @JsonKey(name: 'OperationName', defaultValue: '')
  final String? operationName;
  @override
  @JsonKey(name: 'OrderVistyType', defaultValue: '')
  final String? orderVisitType;

  @override
  String toString() {
    return 'PatientInfoResultData(admissionDate: $admissionDate, admissionTime: $admissionTime, age: $age, alertBloodGroup: $alertBloodGroup, alertInfo: $alertInfo, anesthesiaType: $anesthesiaType, bsa: $bsa, chargeId: $chargeId, chargeName: $chargeName, clinicalDate: $clinicalDate, clinicalTime: $clinicalTime, clnDeptCode: $clnDeptCode, clnDeptName: $clnDeptName, clnDeptNum: $clnDeptNum, diagName: $diagName, doctorId: $doctorId, doctorName: $doctorName, patientCode: $patientCode, patientName: $patientName, patientZipAddr: $patientZipAddr, room: $room, sex: $sex, ward: $ward, birthday: $birthday, mdrpno: $mdrpno, estimateTime: $estimateTime, inspectionName: $inspectionName, inspectionReservationType: $inspectionReservationType, inspectionStatus: $inspectionStatus, inspectionTime: $inspectionTime, operationDate: $operationDate, operationDept: $operationDept, operationDoctor: $operationDoctor, operationDoctorName: $operationDoctorName, operationRoom: $operationRoom, operationType: $operationType, operationTypeName: $operationTypeName, patientAddr: $patientAddr, patientTelNo: $patientTelNo, patientHp: $patientHp, patientZipCode: $patientZipCode, bedNo: $bedNo, visitType: $visitType, visitTypeNum: $visitTypeNum, wardCd: $wardCd, abrvCareWardCd: $abrvCareWardCd, paramCommonJson: $paramCommonJson, hosType: $hosType, operationRoomPlusRoom: $operationRoomPlusRoom, operationName: $operationName, orderVisitType: $orderVisitType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientInfoResultDataImpl &&
            (identical(other.admissionDate, admissionDate) ||
                other.admissionDate == admissionDate) &&
            (identical(other.admissionTime, admissionTime) ||
                other.admissionTime == admissionTime) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.alertBloodGroup, alertBloodGroup) ||
                other.alertBloodGroup == alertBloodGroup) &&
            (identical(other.alertInfo, alertInfo) ||
                other.alertInfo == alertInfo) &&
            (identical(other.anesthesiaType, anesthesiaType) ||
                other.anesthesiaType == anesthesiaType) &&
            (identical(other.bsa, bsa) || other.bsa == bsa) &&
            (identical(other.chargeId, chargeId) ||
                other.chargeId == chargeId) &&
            (identical(other.chargeName, chargeName) ||
                other.chargeName == chargeName) &&
            (identical(other.clinicalDate, clinicalDate) ||
                other.clinicalDate == clinicalDate) &&
            (identical(other.clinicalTime, clinicalTime) ||
                other.clinicalTime == clinicalTime) &&
            (identical(other.clnDeptCode, clnDeptCode) ||
                other.clnDeptCode == clnDeptCode) &&
            (identical(other.clnDeptName, clnDeptName) ||
                other.clnDeptName == clnDeptName) &&
            (identical(other.clnDeptNum, clnDeptNum) ||
                other.clnDeptNum == clnDeptNum) &&
            (identical(other.diagName, diagName) ||
                other.diagName == diagName) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.doctorName, doctorName) ||
                other.doctorName == doctorName) &&
            (identical(other.patientCode, patientCode) ||
                other.patientCode == patientCode) &&
            (identical(other.patientName, patientName) ||
                other.patientName == patientName) &&
            (identical(other.patientZipAddr, patientZipAddr) ||
                other.patientZipAddr == patientZipAddr) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.ward, ward) || other.ward == ward) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.mdrpno, mdrpno) || other.mdrpno == mdrpno) &&
            (identical(other.estimateTime, estimateTime) ||
                other.estimateTime == estimateTime) &&
            (identical(other.inspectionName, inspectionName) ||
                other.inspectionName == inspectionName) &&
            (identical(other.inspectionReservationType, inspectionReservationType) ||
                other.inspectionReservationType == inspectionReservationType) &&
            (identical(other.inspectionStatus, inspectionStatus) ||
                other.inspectionStatus == inspectionStatus) &&
            (identical(other.inspectionTime, inspectionTime) ||
                other.inspectionTime == inspectionTime) &&
            (identical(other.operationDate, operationDate) ||
                other.operationDate == operationDate) &&
            (identical(other.operationDept, operationDept) ||
                other.operationDept == operationDept) &&
            (identical(other.operationDoctor, operationDoctor) ||
                other.operationDoctor == operationDoctor) &&
            (identical(other.operationDoctorName, operationDoctorName) ||
                other.operationDoctorName == operationDoctorName) &&
            (identical(other.operationRoom, operationRoom) ||
                other.operationRoom == operationRoom) &&
            (identical(other.operationType, operationType) ||
                other.operationType == operationType) &&
            (identical(other.operationTypeName, operationTypeName) ||
                other.operationTypeName == operationTypeName) &&
            (identical(other.patientAddr, patientAddr) ||
                other.patientAddr == patientAddr) &&
            (identical(other.patientTelNo, patientTelNo) ||
                other.patientTelNo == patientTelNo) &&
            (identical(other.patientHp, patientHp) ||
                other.patientHp == patientHp) &&
            (identical(other.patientZipCode, patientZipCode) ||
                other.patientZipCode == patientZipCode) &&
            (identical(other.bedNo, bedNo) || other.bedNo == bedNo) &&
            (identical(other.visitType, visitType) ||
                other.visitType == visitType) &&
            (identical(other.visitTypeNum, visitTypeNum) ||
                other.visitTypeNum == visitTypeNum) &&
            (identical(other.wardCd, wardCd) || other.wardCd == wardCd) &&
            (identical(other.abrvCareWardCd, abrvCareWardCd) ||
                other.abrvCareWardCd == abrvCareWardCd) &&
            (identical(other.paramCommonJson, paramCommonJson) ||
                other.paramCommonJson == paramCommonJson) &&
            (identical(other.hosType, hosType) || other.hosType == hosType) &&
            (identical(other.operationRoomPlusRoom, operationRoomPlusRoom) ||
                other.operationRoomPlusRoom == operationRoomPlusRoom) &&
            (identical(other.operationName, operationName) || other.operationName == operationName) &&
            (identical(other.orderVisitType, orderVisitType) || other.orderVisitType == orderVisitType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        admissionDate,
        admissionTime,
        age,
        alertBloodGroup,
        alertInfo,
        anesthesiaType,
        bsa,
        chargeId,
        chargeName,
        clinicalDate,
        clinicalTime,
        clnDeptCode,
        clnDeptName,
        clnDeptNum,
        diagName,
        doctorId,
        doctorName,
        patientCode,
        patientName,
        patientZipAddr,
        room,
        sex,
        ward,
        birthday,
        mdrpno,
        estimateTime,
        inspectionName,
        inspectionReservationType,
        inspectionStatus,
        inspectionTime,
        operationDate,
        operationDept,
        operationDoctor,
        operationDoctorName,
        operationRoom,
        operationType,
        operationTypeName,
        patientAddr,
        patientTelNo,
        patientHp,
        patientZipCode,
        bedNo,
        visitType,
        visitTypeNum,
        wardCd,
        abrvCareWardCd,
        paramCommonJson,
        hosType,
        operationRoomPlusRoom,
        operationName,
        orderVisitType
      ]);

  /// Create a copy of PatientInfoResultData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientInfoResultDataImplCopyWith<_$PatientInfoResultDataImpl>
      get copyWith => __$$PatientInfoResultDataImplCopyWithImpl<
          _$PatientInfoResultDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientInfoResultDataImplToJson(
      this,
    );
  }
}

abstract class _PatientInfoResultData implements PatientInfoResultData {
  const factory _PatientInfoResultData(
      {@JsonKey(name: 'AdmissionDate') required final String admissionDate,
      @JsonKey(name: 'AdmissionTime', defaultValue: '')
      final String? admissionTime,
      @JsonKey(name: 'Age') required final String age,
      @JsonKey(name: 'AlertBloodGroup', defaultValue: '')
      final String? alertBloodGroup,
      @JsonKey(name: 'AlertInfo', defaultValue: '') final String? alertInfo,
      @JsonKey(name: 'AnesthesiaType', defaultValue: '')
      final String? anesthesiaType,
      @JsonKey(name: 'Bsa', defaultValue: '') final String? bsa,
      @JsonKey(name: 'ChargeId', defaultValue: '') final String? chargeId,
      @JsonKey(name: 'ChargeName') required final String chargeName,
      @JsonKey(name: 'ClinicalDate', defaultValue: '')
      final String? clinicalDate,
      @JsonKey(name: 'ClinicalTime', defaultValue: '')
      final String? clinicalTime,
      @JsonKey(name: 'ClnDeptCode') required final String clnDeptCode,
      @JsonKey(name: 'ClnDeptName', defaultValue: '') final String? clnDeptName,
      @JsonKey(name: 'ClnDeptNum', defaultValue: '') final String? clnDeptNum,
      @JsonKey(name: 'DiagName') required final String diagName,
      @JsonKey(name: 'DoctorId') required final String doctorId,
      @JsonKey(name: 'DoctorName') required final String doctorName,
      @JsonKey(name: 'PatientCode') required final String patientCode,
      @JsonKey(name: 'PatientName') required final String patientName,
      @JsonKey(name: 'PatientZipAddr') required final String patientZipAddr,
      @JsonKey(name: 'Room') required final String room,
      @JsonKey(name: 'Sex') required final String sex,
      @JsonKey(name: 'Ward') required final String ward,
      @JsonKey(name: 'Birthday') required final String birthday,
      @JsonKey(name: 'MDRPNO') required final String mdrpno,
      @JsonKey(name: 'EstimateTime', defaultValue: '')
      final String? estimateTime,
      @JsonKey(name: 'InspectionName', defaultValue: '')
      final String? inspectionName,
      @JsonKey(name: 'InspectionReservationType', defaultValue: '')
      final String? inspectionReservationType,
      @JsonKey(name: 'Inspectionstatus', defaultValue: '')
      final String? inspectionStatus,
      @JsonKey(name: 'InspectionTime', defaultValue: '')
      final String? inspectionTime,
      @JsonKey(name: 'OperationDate', defaultValue: '')
      final String? operationDate,
      @JsonKey(name: 'OperationDept', defaultValue: '')
      final String? operationDept,
      @JsonKey(name: 'OperationDoctor', defaultValue: '')
      final String? operationDoctor,
      @JsonKey(name: 'OperationDoctorName', defaultValue: '')
      final String? operationDoctorName,
      @JsonKey(name: 'OperationRoom', defaultValue: '')
      final String? operationRoom,
      @JsonKey(name: 'OperationType', defaultValue: '')
      final String? operationType,
      @JsonKey(name: 'OperationTypeName', defaultValue: '')
      final String? operationTypeName,
      @JsonKey(name: 'PatientAddr', defaultValue: '') final String? patientAddr,
      @JsonKey(name: 'PatientTelNo', defaultValue: '')
      final String? patientTelNo,
      @JsonKey(name: 'PatientHp', defaultValue: '') final String? patientHp,
      @JsonKey(name: 'PatientZipCode', defaultValue: '')
      final String? patientZipCode,
      @JsonKey(name: 'Bedno', defaultValue: '') final String? bedNo,
      @JsonKey(name: 'VisitType', defaultValue: '') final String? visitType,
      @JsonKey(name: 'VisitTypeNum', defaultValue: '')
      final String? visitTypeNum,
      @JsonKey(name: 'WardCd', defaultValue: '') final String? wardCd,
      @JsonKey(name: 'ABRV_CARE_WARD_CD', defaultValue: '')
      final String? abrvCareWardCd,
      @JsonKey(name: 'ParamCommonJson', defaultValue: '')
      final String? paramCommonJson,
      @JsonKey(name: 'hosType', defaultValue: '') final String? hosType,
      @JsonKey(name: 'OperationRoomPlusRoom', defaultValue: '')
      final String? operationRoomPlusRoom,
      @JsonKey(name: 'OperationName', defaultValue: '')
      final String? operationName,
      @JsonKey(name: 'OrderVistyType', defaultValue: '')
      final String? orderVisitType}) = _$PatientInfoResultDataImpl;

  factory _PatientInfoResultData.fromJson(Map<String, dynamic> json) =
      _$PatientInfoResultDataImpl.fromJson;

  @override
  @JsonKey(name: 'AdmissionDate')
  String get admissionDate;
  @override
  @JsonKey(name: 'AdmissionTime', defaultValue: '')
  String? get admissionTime;
  @override
  @JsonKey(name: 'Age')
  String get age;
  @override
  @JsonKey(name: 'AlertBloodGroup', defaultValue: '')
  String? get alertBloodGroup;
  @override
  @JsonKey(name: 'AlertInfo', defaultValue: '')
  String? get alertInfo;
  @override
  @JsonKey(name: 'AnesthesiaType', defaultValue: '')
  String? get anesthesiaType;
  @override
  @JsonKey(name: 'Bsa', defaultValue: '')
  String? get bsa;
  @override
  @JsonKey(name: 'ChargeId', defaultValue: '')
  String? get chargeId;
  @override
  @JsonKey(name: 'ChargeName')
  String get chargeName;
  @override
  @JsonKey(name: 'ClinicalDate', defaultValue: '')
  String? get clinicalDate;
  @override
  @JsonKey(name: 'ClinicalTime', defaultValue: '')
  String? get clinicalTime;
  @override
  @JsonKey(name: 'ClnDeptCode')
  String get clnDeptCode;
  @override
  @JsonKey(name: 'ClnDeptName', defaultValue: '')
  String? get clnDeptName;
  @override
  @JsonKey(name: 'ClnDeptNum', defaultValue: '')
  String? get clnDeptNum;
  @override
  @JsonKey(name: 'DiagName')
  String get diagName;
  @override
  @JsonKey(name: 'DoctorId')
  String get doctorId;
  @override
  @JsonKey(name: 'DoctorName')
  String get doctorName;
  @override
  @JsonKey(name: 'PatientCode')
  String get patientCode;
  @override
  @JsonKey(name: 'PatientName')
  String get patientName;
  @override
  @JsonKey(name: 'PatientZipAddr')
  String get patientZipAddr;
  @override
  @JsonKey(name: 'Room')
  String get room;
  @override
  @JsonKey(name: 'Sex')
  String get sex;
  @override
  @JsonKey(name: 'Ward')
  String get ward;
  @override
  @JsonKey(name: 'Birthday')
  String get birthday;
  @override
  @JsonKey(name: 'MDRPNO')
  String get mdrpno;
  @override
  @JsonKey(name: 'EstimateTime', defaultValue: '')
  String? get estimateTime;
  @override
  @JsonKey(name: 'InspectionName', defaultValue: '')
  String? get inspectionName;
  @override
  @JsonKey(name: 'InspectionReservationType', defaultValue: '')
  String? get inspectionReservationType;
  @override
  @JsonKey(name: 'Inspectionstatus', defaultValue: '')
  String? get inspectionStatus;
  @override
  @JsonKey(name: 'InspectionTime', defaultValue: '')
  String? get inspectionTime;
  @override
  @JsonKey(name: 'OperationDate', defaultValue: '')
  String? get operationDate;
  @override
  @JsonKey(name: 'OperationDept', defaultValue: '')
  String? get operationDept;
  @override
  @JsonKey(name: 'OperationDoctor', defaultValue: '')
  String? get operationDoctor;
  @override
  @JsonKey(name: 'OperationDoctorName', defaultValue: '')
  String? get operationDoctorName;
  @override
  @JsonKey(name: 'OperationRoom', defaultValue: '')
  String? get operationRoom;
  @override
  @JsonKey(name: 'OperationType', defaultValue: '')
  String? get operationType;
  @override
  @JsonKey(name: 'OperationTypeName', defaultValue: '')
  String? get operationTypeName;
  @override
  @JsonKey(name: 'PatientAddr', defaultValue: '')
  String? get patientAddr;
  @override
  @JsonKey(name: 'PatientTelNo', defaultValue: '')
  String? get patientTelNo;
  @override
  @JsonKey(name: 'PatientHp', defaultValue: '')
  String? get patientHp;
  @override
  @JsonKey(name: 'PatientZipCode', defaultValue: '')
  String? get patientZipCode;
  @override
  @JsonKey(name: 'Bedno', defaultValue: '')
  String? get bedNo;
  @override
  @JsonKey(name: 'VisitType', defaultValue: '')
  String? get visitType;
  @override
  @JsonKey(name: 'VisitTypeNum', defaultValue: '')
  String? get visitTypeNum;
  @override
  @JsonKey(name: 'WardCd', defaultValue: '')
  String? get wardCd;
  @override
  @JsonKey(name: 'ABRV_CARE_WARD_CD', defaultValue: '')
  String? get abrvCareWardCd;
  @override
  @JsonKey(name: 'ParamCommonJson', defaultValue: '')
  String? get paramCommonJson;
  @override
  @JsonKey(name: 'hosType', defaultValue: '')
  String? get hosType;
  @override
  @JsonKey(name: 'OperationRoomPlusRoom', defaultValue: '')
  String? get operationRoomPlusRoom;
  @override
  @JsonKey(name: 'OperationName', defaultValue: '')
  String? get operationName;
  @override
  @JsonKey(name: 'OrderVistyType', defaultValue: '')
  String? get orderVisitType;

  /// Create a copy of PatientInfoResultData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatientInfoResultDataImplCopyWith<_$PatientInfoResultDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
