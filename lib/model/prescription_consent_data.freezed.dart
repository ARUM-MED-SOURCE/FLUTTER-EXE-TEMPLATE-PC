// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prescription_consent_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PrescriptionConsentResponse _$PrescriptionConsentResponseFromJson(
    Map<String, dynamic> json) {
  return _PrescriptionConsentResponse.fromJson(json);
}

/// @nodoc
mixin _$PrescriptionConsentResponse {
  @JsonKey(name: 'RESULT_CODE')
  String get resultCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'RESULT_DATA')
  List<PrescriptionConsentData> get resultData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'ERROR_CODE')
  String get errorCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'ERROR_MESSAGE')
  String get errorMessage => throw _privateConstructorUsedError;

  /// Serializes this PrescriptionConsentResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrescriptionConsentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrescriptionConsentResponseCopyWith<PrescriptionConsentResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrescriptionConsentResponseCopyWith<$Res> {
  factory $PrescriptionConsentResponseCopyWith(
          PrescriptionConsentResponse value,
          $Res Function(PrescriptionConsentResponse) then) =
      _$PrescriptionConsentResponseCopyWithImpl<$Res,
          PrescriptionConsentResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'RESULT_CODE') String resultCode,
      @JsonKey(name: 'RESULT_DATA') List<PrescriptionConsentData> resultData,
      @JsonKey(name: 'ERROR_CODE') String errorCode,
      @JsonKey(name: 'ERROR_MESSAGE') String errorMessage});
}

/// @nodoc
class _$PrescriptionConsentResponseCopyWithImpl<$Res,
        $Val extends PrescriptionConsentResponse>
    implements $PrescriptionConsentResponseCopyWith<$Res> {
  _$PrescriptionConsentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrescriptionConsentResponse
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
              as List<PrescriptionConsentData>,
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
abstract class _$$PrescriptionConsentResponseImplCopyWith<$Res>
    implements $PrescriptionConsentResponseCopyWith<$Res> {
  factory _$$PrescriptionConsentResponseImplCopyWith(
          _$PrescriptionConsentResponseImpl value,
          $Res Function(_$PrescriptionConsentResponseImpl) then) =
      __$$PrescriptionConsentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'RESULT_CODE') String resultCode,
      @JsonKey(name: 'RESULT_DATA') List<PrescriptionConsentData> resultData,
      @JsonKey(name: 'ERROR_CODE') String errorCode,
      @JsonKey(name: 'ERROR_MESSAGE') String errorMessage});
}

/// @nodoc
class __$$PrescriptionConsentResponseImplCopyWithImpl<$Res>
    extends _$PrescriptionConsentResponseCopyWithImpl<$Res,
        _$PrescriptionConsentResponseImpl>
    implements _$$PrescriptionConsentResponseImplCopyWith<$Res> {
  __$$PrescriptionConsentResponseImplCopyWithImpl(
      _$PrescriptionConsentResponseImpl _value,
      $Res Function(_$PrescriptionConsentResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrescriptionConsentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultCode = null,
    Object? resultData = null,
    Object? errorCode = null,
    Object? errorMessage = null,
  }) {
    return _then(_$PrescriptionConsentResponseImpl(
      resultCode: null == resultCode
          ? _value.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as String,
      resultData: null == resultData
          ? _value._resultData
          : resultData // ignore: cast_nullable_to_non_nullable
              as List<PrescriptionConsentData>,
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
class _$PrescriptionConsentResponseImpl
    implements _PrescriptionConsentResponse {
  const _$PrescriptionConsentResponseImpl(
      {@JsonKey(name: 'RESULT_CODE') required this.resultCode,
      @JsonKey(name: 'RESULT_DATA')
      required final List<PrescriptionConsentData> resultData,
      @JsonKey(name: 'ERROR_CODE') required this.errorCode,
      @JsonKey(name: 'ERROR_MESSAGE') required this.errorMessage})
      : _resultData = resultData;

  factory _$PrescriptionConsentResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PrescriptionConsentResponseImplFromJson(json);

  @override
  @JsonKey(name: 'RESULT_CODE')
  final String resultCode;
  final List<PrescriptionConsentData> _resultData;
  @override
  @JsonKey(name: 'RESULT_DATA')
  List<PrescriptionConsentData> get resultData {
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
    return 'PrescriptionConsentResponse(resultCode: $resultCode, resultData: $resultData, errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrescriptionConsentResponseImpl &&
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

  /// Create a copy of PrescriptionConsentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrescriptionConsentResponseImplCopyWith<_$PrescriptionConsentResponseImpl>
      get copyWith => __$$PrescriptionConsentResponseImplCopyWithImpl<
          _$PrescriptionConsentResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrescriptionConsentResponseImplToJson(
      this,
    );
  }
}

abstract class _PrescriptionConsentResponse
    implements PrescriptionConsentResponse {
  const factory _PrescriptionConsentResponse(
          {@JsonKey(name: 'RESULT_CODE') required final String resultCode,
          @JsonKey(name: 'RESULT_DATA')
          required final List<PrescriptionConsentData> resultData,
          @JsonKey(name: 'ERROR_CODE') required final String errorCode,
          @JsonKey(name: 'ERROR_MESSAGE') required final String errorMessage}) =
      _$PrescriptionConsentResponseImpl;

  factory _PrescriptionConsentResponse.fromJson(Map<String, dynamic> json) =
      _$PrescriptionConsentResponseImpl.fromJson;

  @override
  @JsonKey(name: 'RESULT_CODE')
  String get resultCode;
  @override
  @JsonKey(name: 'RESULT_DATA')
  List<PrescriptionConsentData> get resultData;
  @override
  @JsonKey(name: 'ERROR_CODE')
  String get errorCode;
  @override
  @JsonKey(name: 'ERROR_MESSAGE')
  String get errorMessage;

  /// Create a copy of PrescriptionConsentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrescriptionConsentResponseImplCopyWith<_$PrescriptionConsentResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PrescriptionConsentData _$PrescriptionConsentDataFromJson(
    Map<String, dynamic> json) {
  return _PrescriptionConsentData.fromJson(json);
}

/// @nodoc
mixin _$PrescriptionConsentData {
  @JsonKey(name: 'FormName')
  String? get formName => throw _privateConstructorUsedError;
  @JsonKey(name: 'FormCd')
  String? get formCd => throw _privateConstructorUsedError;
  @JsonKey(name: 'FormId')
  int? get formId => throw _privateConstructorUsedError;
  @JsonKey(name: 'FormGuid')
  String? get formGuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'FormVersion')
  int? get formVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'FormRid')
  int? get formRid => throw _privateConstructorUsedError;
  @JsonKey(name: 'ConsentMstRid')
  int? get consentMstRid => throw _privateConstructorUsedError;
  @JsonKey(name: 'FormNum')
  String? get formNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'FormTypeCode')
  String? get formTypeCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'FormTypeName')
  String? get formTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'IntnlMedFormYn')
  String? get intnlMedFormYn => throw _privateConstructorUsedError;
  @JsonKey(name: 'SetType')
  String? get setType => throw _privateConstructorUsedError;
  @JsonKey(name: 'SetAuth')
  String? get setAuth => throw _privateConstructorUsedError;
  @JsonKey(name: 'DeptCd')
  String? get deptCd => throw _privateConstructorUsedError;
  @JsonKey(name: 'DeptNm')
  String? get deptNm => throw _privateConstructorUsedError;
  @JsonKey(name: 'EsignYn')
  String? get esignYn => throw _privateConstructorUsedError;
  @JsonKey(name: 'MediHistoryYn')
  String? get mediHistoryYn => throw _privateConstructorUsedError;
  @JsonKey(name: 'GroupDeptCode')
  String? get groupDeptCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'GroupType')
  String? get groupType => throw _privateConstructorUsedError;
  @JsonKey(name: 'GroupName')
  String? get groupName => throw _privateConstructorUsedError;
  @JsonKey(name: 'GroupNumber')
  String? get groupNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'PaymentCode')
  String? get paymentCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'InspectionNameKor')
  String? get inspectionNameKor => throw _privateConstructorUsedError;
  @JsonKey(name: 'InspectionNameEng')
  String? get inspectionNameEng => throw _privateConstructorUsedError;
  @JsonKey(name: 'OrderDate')
  String? get orderDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'OrderYn')
  String? get orderYn => throw _privateConstructorUsedError;
  @JsonKey(name: 'OrderCd')
  String? get orderCd => throw _privateConstructorUsedError;
  @JsonKey(name: 'OrderName')
  String? get orderName => throw _privateConstructorUsedError;
  @JsonKey(name: 'OrderSeqNo')
  int? get orderSeqNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'OrderClass')
  String? get orderClass => throw _privateConstructorUsedError;
  @JsonKey(name: 'PrintCnt')
  String? get printCnt => throw _privateConstructorUsedError;
  @JsonKey(name: 'OcrFormCd')
  String? get ocrFormCd => throw _privateConstructorUsedError;
  @JsonKey(name: 'ConsentState')
  String? get consentState => throw _privateConstructorUsedError;
  @JsonKey(name: 'RecordCnt')
  String? get recordCnt => throw _privateConstructorUsedError;
  @JsonKey(name: 'Test')
  String? get test => throw _privateConstructorUsedError;
  @JsonKey(name: 'Image')
  dynamic get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'UseYN')
  String? get useYn => throw _privateConstructorUsedError;
  @JsonKey(name: 'ConsentFolderRid')
  int? get consentFolderRid => throw _privateConstructorUsedError;
  @JsonKey(name: 'ConsentListRid')
  int? get consentListRid => throw _privateConstructorUsedError;
  @JsonKey(name: 'FolderName')
  String? get folderName => throw _privateConstructorUsedError;
  @JsonKey(name: 'ParamCommonJson')
  String? get paramCommonJson => throw _privateConstructorUsedError;
  @JsonKey(name: 'PRCPHISTNO')
  String? get prcphistno => throw _privateConstructorUsedError;
  @JsonKey(name: 'EXECPRCPNO')
  String? get execprcpno => throw _privateConstructorUsedError;
  @JsonKey(name: 'CategoryCode')
  String? get categoryCode => throw _privateConstructorUsedError;

  /// Serializes this PrescriptionConsentData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrescriptionConsentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrescriptionConsentDataCopyWith<PrescriptionConsentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrescriptionConsentDataCopyWith<$Res> {
  factory $PrescriptionConsentDataCopyWith(PrescriptionConsentData value,
          $Res Function(PrescriptionConsentData) then) =
      _$PrescriptionConsentDataCopyWithImpl<$Res, PrescriptionConsentData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'FormName') String? formName,
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
      @JsonKey(name: 'Image') dynamic image,
      @JsonKey(name: 'UseYN') String? useYn,
      @JsonKey(name: 'ConsentFolderRid') int? consentFolderRid,
      @JsonKey(name: 'ConsentListRid') int? consentListRid,
      @JsonKey(name: 'FolderName') String? folderName,
      @JsonKey(name: 'ParamCommonJson') String? paramCommonJson,
      @JsonKey(name: 'PRCPHISTNO') String? prcphistno,
      @JsonKey(name: 'EXECPRCPNO') String? execprcpno,
      @JsonKey(name: 'CategoryCode') String? categoryCode});
}

/// @nodoc
class _$PrescriptionConsentDataCopyWithImpl<$Res,
        $Val extends PrescriptionConsentData>
    implements $PrescriptionConsentDataCopyWith<$Res> {
  _$PrescriptionConsentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrescriptionConsentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formName = freezed,
    Object? formCd = freezed,
    Object? formId = freezed,
    Object? formGuid = freezed,
    Object? formVersion = freezed,
    Object? formRid = freezed,
    Object? consentMstRid = freezed,
    Object? formNum = freezed,
    Object? formTypeCode = freezed,
    Object? formTypeName = freezed,
    Object? intnlMedFormYn = freezed,
    Object? setType = freezed,
    Object? setAuth = freezed,
    Object? deptCd = freezed,
    Object? deptNm = freezed,
    Object? esignYn = freezed,
    Object? mediHistoryYn = freezed,
    Object? groupDeptCode = freezed,
    Object? groupType = freezed,
    Object? groupName = freezed,
    Object? groupNumber = freezed,
    Object? paymentCode = freezed,
    Object? inspectionNameKor = freezed,
    Object? inspectionNameEng = freezed,
    Object? orderDate = freezed,
    Object? orderYn = freezed,
    Object? orderCd = freezed,
    Object? orderName = freezed,
    Object? orderSeqNo = freezed,
    Object? orderClass = freezed,
    Object? printCnt = freezed,
    Object? ocrFormCd = freezed,
    Object? consentState = freezed,
    Object? recordCnt = freezed,
    Object? test = freezed,
    Object? image = freezed,
    Object? useYn = freezed,
    Object? consentFolderRid = freezed,
    Object? consentListRid = freezed,
    Object? folderName = freezed,
    Object? paramCommonJson = freezed,
    Object? prcphistno = freezed,
    Object? execprcpno = freezed,
    Object? categoryCode = freezed,
  }) {
    return _then(_value.copyWith(
      formName: freezed == formName
          ? _value.formName
          : formName // ignore: cast_nullable_to_non_nullable
              as String?,
      formCd: freezed == formCd
          ? _value.formCd
          : formCd // ignore: cast_nullable_to_non_nullable
              as String?,
      formId: freezed == formId
          ? _value.formId
          : formId // ignore: cast_nullable_to_non_nullable
              as int?,
      formGuid: freezed == formGuid
          ? _value.formGuid
          : formGuid // ignore: cast_nullable_to_non_nullable
              as String?,
      formVersion: freezed == formVersion
          ? _value.formVersion
          : formVersion // ignore: cast_nullable_to_non_nullable
              as int?,
      formRid: freezed == formRid
          ? _value.formRid
          : formRid // ignore: cast_nullable_to_non_nullable
              as int?,
      consentMstRid: freezed == consentMstRid
          ? _value.consentMstRid
          : consentMstRid // ignore: cast_nullable_to_non_nullable
              as int?,
      formNum: freezed == formNum
          ? _value.formNum
          : formNum // ignore: cast_nullable_to_non_nullable
              as String?,
      formTypeCode: freezed == formTypeCode
          ? _value.formTypeCode
          : formTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      formTypeName: freezed == formTypeName
          ? _value.formTypeName
          : formTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      intnlMedFormYn: freezed == intnlMedFormYn
          ? _value.intnlMedFormYn
          : intnlMedFormYn // ignore: cast_nullable_to_non_nullable
              as String?,
      setType: freezed == setType
          ? _value.setType
          : setType // ignore: cast_nullable_to_non_nullable
              as String?,
      setAuth: freezed == setAuth
          ? _value.setAuth
          : setAuth // ignore: cast_nullable_to_non_nullable
              as String?,
      deptCd: freezed == deptCd
          ? _value.deptCd
          : deptCd // ignore: cast_nullable_to_non_nullable
              as String?,
      deptNm: freezed == deptNm
          ? _value.deptNm
          : deptNm // ignore: cast_nullable_to_non_nullable
              as String?,
      esignYn: freezed == esignYn
          ? _value.esignYn
          : esignYn // ignore: cast_nullable_to_non_nullable
              as String?,
      mediHistoryYn: freezed == mediHistoryYn
          ? _value.mediHistoryYn
          : mediHistoryYn // ignore: cast_nullable_to_non_nullable
              as String?,
      groupDeptCode: freezed == groupDeptCode
          ? _value.groupDeptCode
          : groupDeptCode // ignore: cast_nullable_to_non_nullable
              as String?,
      groupType: freezed == groupType
          ? _value.groupType
          : groupType // ignore: cast_nullable_to_non_nullable
              as String?,
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      groupNumber: freezed == groupNumber
          ? _value.groupNumber
          : groupNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentCode: freezed == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionNameKor: freezed == inspectionNameKor
          ? _value.inspectionNameKor
          : inspectionNameKor // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionNameEng: freezed == inspectionNameEng
          ? _value.inspectionNameEng
          : inspectionNameEng // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      orderYn: freezed == orderYn
          ? _value.orderYn
          : orderYn // ignore: cast_nullable_to_non_nullable
              as String?,
      orderCd: freezed == orderCd
          ? _value.orderCd
          : orderCd // ignore: cast_nullable_to_non_nullable
              as String?,
      orderName: freezed == orderName
          ? _value.orderName
          : orderName // ignore: cast_nullable_to_non_nullable
              as String?,
      orderSeqNo: freezed == orderSeqNo
          ? _value.orderSeqNo
          : orderSeqNo // ignore: cast_nullable_to_non_nullable
              as int?,
      orderClass: freezed == orderClass
          ? _value.orderClass
          : orderClass // ignore: cast_nullable_to_non_nullable
              as String?,
      printCnt: freezed == printCnt
          ? _value.printCnt
          : printCnt // ignore: cast_nullable_to_non_nullable
              as String?,
      ocrFormCd: freezed == ocrFormCd
          ? _value.ocrFormCd
          : ocrFormCd // ignore: cast_nullable_to_non_nullable
              as String?,
      consentState: freezed == consentState
          ? _value.consentState
          : consentState // ignore: cast_nullable_to_non_nullable
              as String?,
      recordCnt: freezed == recordCnt
          ? _value.recordCnt
          : recordCnt // ignore: cast_nullable_to_non_nullable
              as String?,
      test: freezed == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      useYn: freezed == useYn
          ? _value.useYn
          : useYn // ignore: cast_nullable_to_non_nullable
              as String?,
      consentFolderRid: freezed == consentFolderRid
          ? _value.consentFolderRid
          : consentFolderRid // ignore: cast_nullable_to_non_nullable
              as int?,
      consentListRid: freezed == consentListRid
          ? _value.consentListRid
          : consentListRid // ignore: cast_nullable_to_non_nullable
              as int?,
      folderName: freezed == folderName
          ? _value.folderName
          : folderName // ignore: cast_nullable_to_non_nullable
              as String?,
      paramCommonJson: freezed == paramCommonJson
          ? _value.paramCommonJson
          : paramCommonJson // ignore: cast_nullable_to_non_nullable
              as String?,
      prcphistno: freezed == prcphistno
          ? _value.prcphistno
          : prcphistno // ignore: cast_nullable_to_non_nullable
              as String?,
      execprcpno: freezed == execprcpno
          ? _value.execprcpno
          : execprcpno // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryCode: freezed == categoryCode
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrescriptionConsentDataImplCopyWith<$Res>
    implements $PrescriptionConsentDataCopyWith<$Res> {
  factory _$$PrescriptionConsentDataImplCopyWith(
          _$PrescriptionConsentDataImpl value,
          $Res Function(_$PrescriptionConsentDataImpl) then) =
      __$$PrescriptionConsentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'FormName') String? formName,
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
      @JsonKey(name: 'Image') dynamic image,
      @JsonKey(name: 'UseYN') String? useYn,
      @JsonKey(name: 'ConsentFolderRid') int? consentFolderRid,
      @JsonKey(name: 'ConsentListRid') int? consentListRid,
      @JsonKey(name: 'FolderName') String? folderName,
      @JsonKey(name: 'ParamCommonJson') String? paramCommonJson,
      @JsonKey(name: 'PRCPHISTNO') String? prcphistno,
      @JsonKey(name: 'EXECPRCPNO') String? execprcpno,
      @JsonKey(name: 'CategoryCode') String? categoryCode});
}

/// @nodoc
class __$$PrescriptionConsentDataImplCopyWithImpl<$Res>
    extends _$PrescriptionConsentDataCopyWithImpl<$Res,
        _$PrescriptionConsentDataImpl>
    implements _$$PrescriptionConsentDataImplCopyWith<$Res> {
  __$$PrescriptionConsentDataImplCopyWithImpl(
      _$PrescriptionConsentDataImpl _value,
      $Res Function(_$PrescriptionConsentDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrescriptionConsentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formName = freezed,
    Object? formCd = freezed,
    Object? formId = freezed,
    Object? formGuid = freezed,
    Object? formVersion = freezed,
    Object? formRid = freezed,
    Object? consentMstRid = freezed,
    Object? formNum = freezed,
    Object? formTypeCode = freezed,
    Object? formTypeName = freezed,
    Object? intnlMedFormYn = freezed,
    Object? setType = freezed,
    Object? setAuth = freezed,
    Object? deptCd = freezed,
    Object? deptNm = freezed,
    Object? esignYn = freezed,
    Object? mediHistoryYn = freezed,
    Object? groupDeptCode = freezed,
    Object? groupType = freezed,
    Object? groupName = freezed,
    Object? groupNumber = freezed,
    Object? paymentCode = freezed,
    Object? inspectionNameKor = freezed,
    Object? inspectionNameEng = freezed,
    Object? orderDate = freezed,
    Object? orderYn = freezed,
    Object? orderCd = freezed,
    Object? orderName = freezed,
    Object? orderSeqNo = freezed,
    Object? orderClass = freezed,
    Object? printCnt = freezed,
    Object? ocrFormCd = freezed,
    Object? consentState = freezed,
    Object? recordCnt = freezed,
    Object? test = freezed,
    Object? image = freezed,
    Object? useYn = freezed,
    Object? consentFolderRid = freezed,
    Object? consentListRid = freezed,
    Object? folderName = freezed,
    Object? paramCommonJson = freezed,
    Object? prcphistno = freezed,
    Object? execprcpno = freezed,
    Object? categoryCode = freezed,
  }) {
    return _then(_$PrescriptionConsentDataImpl(
      formName: freezed == formName
          ? _value.formName
          : formName // ignore: cast_nullable_to_non_nullable
              as String?,
      formCd: freezed == formCd
          ? _value.formCd
          : formCd // ignore: cast_nullable_to_non_nullable
              as String?,
      formId: freezed == formId
          ? _value.formId
          : formId // ignore: cast_nullable_to_non_nullable
              as int?,
      formGuid: freezed == formGuid
          ? _value.formGuid
          : formGuid // ignore: cast_nullable_to_non_nullable
              as String?,
      formVersion: freezed == formVersion
          ? _value.formVersion
          : formVersion // ignore: cast_nullable_to_non_nullable
              as int?,
      formRid: freezed == formRid
          ? _value.formRid
          : formRid // ignore: cast_nullable_to_non_nullable
              as int?,
      consentMstRid: freezed == consentMstRid
          ? _value.consentMstRid
          : consentMstRid // ignore: cast_nullable_to_non_nullable
              as int?,
      formNum: freezed == formNum
          ? _value.formNum
          : formNum // ignore: cast_nullable_to_non_nullable
              as String?,
      formTypeCode: freezed == formTypeCode
          ? _value.formTypeCode
          : formTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      formTypeName: freezed == formTypeName
          ? _value.formTypeName
          : formTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      intnlMedFormYn: freezed == intnlMedFormYn
          ? _value.intnlMedFormYn
          : intnlMedFormYn // ignore: cast_nullable_to_non_nullable
              as String?,
      setType: freezed == setType
          ? _value.setType
          : setType // ignore: cast_nullable_to_non_nullable
              as String?,
      setAuth: freezed == setAuth
          ? _value.setAuth
          : setAuth // ignore: cast_nullable_to_non_nullable
              as String?,
      deptCd: freezed == deptCd
          ? _value.deptCd
          : deptCd // ignore: cast_nullable_to_non_nullable
              as String?,
      deptNm: freezed == deptNm
          ? _value.deptNm
          : deptNm // ignore: cast_nullable_to_non_nullable
              as String?,
      esignYn: freezed == esignYn
          ? _value.esignYn
          : esignYn // ignore: cast_nullable_to_non_nullable
              as String?,
      mediHistoryYn: freezed == mediHistoryYn
          ? _value.mediHistoryYn
          : mediHistoryYn // ignore: cast_nullable_to_non_nullable
              as String?,
      groupDeptCode: freezed == groupDeptCode
          ? _value.groupDeptCode
          : groupDeptCode // ignore: cast_nullable_to_non_nullable
              as String?,
      groupType: freezed == groupType
          ? _value.groupType
          : groupType // ignore: cast_nullable_to_non_nullable
              as String?,
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      groupNumber: freezed == groupNumber
          ? _value.groupNumber
          : groupNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentCode: freezed == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionNameKor: freezed == inspectionNameKor
          ? _value.inspectionNameKor
          : inspectionNameKor // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectionNameEng: freezed == inspectionNameEng
          ? _value.inspectionNameEng
          : inspectionNameEng // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      orderYn: freezed == orderYn
          ? _value.orderYn
          : orderYn // ignore: cast_nullable_to_non_nullable
              as String?,
      orderCd: freezed == orderCd
          ? _value.orderCd
          : orderCd // ignore: cast_nullable_to_non_nullable
              as String?,
      orderName: freezed == orderName
          ? _value.orderName
          : orderName // ignore: cast_nullable_to_non_nullable
              as String?,
      orderSeqNo: freezed == orderSeqNo
          ? _value.orderSeqNo
          : orderSeqNo // ignore: cast_nullable_to_non_nullable
              as int?,
      orderClass: freezed == orderClass
          ? _value.orderClass
          : orderClass // ignore: cast_nullable_to_non_nullable
              as String?,
      printCnt: freezed == printCnt
          ? _value.printCnt
          : printCnt // ignore: cast_nullable_to_non_nullable
              as String?,
      ocrFormCd: freezed == ocrFormCd
          ? _value.ocrFormCd
          : ocrFormCd // ignore: cast_nullable_to_non_nullable
              as String?,
      consentState: freezed == consentState
          ? _value.consentState
          : consentState // ignore: cast_nullable_to_non_nullable
              as String?,
      recordCnt: freezed == recordCnt
          ? _value.recordCnt
          : recordCnt // ignore: cast_nullable_to_non_nullable
              as String?,
      test: freezed == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      useYn: freezed == useYn
          ? _value.useYn
          : useYn // ignore: cast_nullable_to_non_nullable
              as String?,
      consentFolderRid: freezed == consentFolderRid
          ? _value.consentFolderRid
          : consentFolderRid // ignore: cast_nullable_to_non_nullable
              as int?,
      consentListRid: freezed == consentListRid
          ? _value.consentListRid
          : consentListRid // ignore: cast_nullable_to_non_nullable
              as int?,
      folderName: freezed == folderName
          ? _value.folderName
          : folderName // ignore: cast_nullable_to_non_nullable
              as String?,
      paramCommonJson: freezed == paramCommonJson
          ? _value.paramCommonJson
          : paramCommonJson // ignore: cast_nullable_to_non_nullable
              as String?,
      prcphistno: freezed == prcphistno
          ? _value.prcphistno
          : prcphistno // ignore: cast_nullable_to_non_nullable
              as String?,
      execprcpno: freezed == execprcpno
          ? _value.execprcpno
          : execprcpno // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryCode: freezed == categoryCode
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrescriptionConsentDataImpl implements _PrescriptionConsentData {
  const _$PrescriptionConsentDataImpl(
      {@JsonKey(name: 'FormName') this.formName,
      @JsonKey(name: 'FormCd') this.formCd,
      @JsonKey(name: 'FormId') this.formId,
      @JsonKey(name: 'FormGuid') this.formGuid,
      @JsonKey(name: 'FormVersion') this.formVersion,
      @JsonKey(name: 'FormRid') this.formRid,
      @JsonKey(name: 'ConsentMstRid') this.consentMstRid,
      @JsonKey(name: 'FormNum') this.formNum,
      @JsonKey(name: 'FormTypeCode') this.formTypeCode,
      @JsonKey(name: 'FormTypeName') this.formTypeName,
      @JsonKey(name: 'IntnlMedFormYn') this.intnlMedFormYn,
      @JsonKey(name: 'SetType') this.setType,
      @JsonKey(name: 'SetAuth') this.setAuth,
      @JsonKey(name: 'DeptCd') this.deptCd,
      @JsonKey(name: 'DeptNm') this.deptNm,
      @JsonKey(name: 'EsignYn') this.esignYn,
      @JsonKey(name: 'MediHistoryYn') this.mediHistoryYn,
      @JsonKey(name: 'GroupDeptCode') this.groupDeptCode,
      @JsonKey(name: 'GroupType') this.groupType,
      @JsonKey(name: 'GroupName') this.groupName,
      @JsonKey(name: 'GroupNumber') this.groupNumber,
      @JsonKey(name: 'PaymentCode') this.paymentCode,
      @JsonKey(name: 'InspectionNameKor') this.inspectionNameKor,
      @JsonKey(name: 'InspectionNameEng') this.inspectionNameEng,
      @JsonKey(name: 'OrderDate') this.orderDate,
      @JsonKey(name: 'OrderYn') this.orderYn,
      @JsonKey(name: 'OrderCd') this.orderCd,
      @JsonKey(name: 'OrderName') this.orderName,
      @JsonKey(name: 'OrderSeqNo') this.orderSeqNo,
      @JsonKey(name: 'OrderClass') this.orderClass,
      @JsonKey(name: 'PrintCnt') this.printCnt,
      @JsonKey(name: 'OcrFormCd') this.ocrFormCd,
      @JsonKey(name: 'ConsentState') this.consentState,
      @JsonKey(name: 'RecordCnt') this.recordCnt,
      @JsonKey(name: 'Test') this.test,
      @JsonKey(name: 'Image') this.image,
      @JsonKey(name: 'UseYN') this.useYn,
      @JsonKey(name: 'ConsentFolderRid') this.consentFolderRid,
      @JsonKey(name: 'ConsentListRid') this.consentListRid,
      @JsonKey(name: 'FolderName') this.folderName,
      @JsonKey(name: 'ParamCommonJson') this.paramCommonJson,
      @JsonKey(name: 'PRCPHISTNO') this.prcphistno,
      @JsonKey(name: 'EXECPRCPNO') this.execprcpno,
      @JsonKey(name: 'CategoryCode') this.categoryCode});

  factory _$PrescriptionConsentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrescriptionConsentDataImplFromJson(json);

  @override
  @JsonKey(name: 'FormName')
  final String? formName;
  @override
  @JsonKey(name: 'FormCd')
  final String? formCd;
  @override
  @JsonKey(name: 'FormId')
  final int? formId;
  @override
  @JsonKey(name: 'FormGuid')
  final String? formGuid;
  @override
  @JsonKey(name: 'FormVersion')
  final int? formVersion;
  @override
  @JsonKey(name: 'FormRid')
  final int? formRid;
  @override
  @JsonKey(name: 'ConsentMstRid')
  final int? consentMstRid;
  @override
  @JsonKey(name: 'FormNum')
  final String? formNum;
  @override
  @JsonKey(name: 'FormTypeCode')
  final String? formTypeCode;
  @override
  @JsonKey(name: 'FormTypeName')
  final String? formTypeName;
  @override
  @JsonKey(name: 'IntnlMedFormYn')
  final String? intnlMedFormYn;
  @override
  @JsonKey(name: 'SetType')
  final String? setType;
  @override
  @JsonKey(name: 'SetAuth')
  final String? setAuth;
  @override
  @JsonKey(name: 'DeptCd')
  final String? deptCd;
  @override
  @JsonKey(name: 'DeptNm')
  final String? deptNm;
  @override
  @JsonKey(name: 'EsignYn')
  final String? esignYn;
  @override
  @JsonKey(name: 'MediHistoryYn')
  final String? mediHistoryYn;
  @override
  @JsonKey(name: 'GroupDeptCode')
  final String? groupDeptCode;
  @override
  @JsonKey(name: 'GroupType')
  final String? groupType;
  @override
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @override
  @JsonKey(name: 'GroupNumber')
  final String? groupNumber;
  @override
  @JsonKey(name: 'PaymentCode')
  final String? paymentCode;
  @override
  @JsonKey(name: 'InspectionNameKor')
  final String? inspectionNameKor;
  @override
  @JsonKey(name: 'InspectionNameEng')
  final String? inspectionNameEng;
  @override
  @JsonKey(name: 'OrderDate')
  final String? orderDate;
  @override
  @JsonKey(name: 'OrderYn')
  final String? orderYn;
  @override
  @JsonKey(name: 'OrderCd')
  final String? orderCd;
  @override
  @JsonKey(name: 'OrderName')
  final String? orderName;
  @override
  @JsonKey(name: 'OrderSeqNo')
  final int? orderSeqNo;
  @override
  @JsonKey(name: 'OrderClass')
  final String? orderClass;
  @override
  @JsonKey(name: 'PrintCnt')
  final String? printCnt;
  @override
  @JsonKey(name: 'OcrFormCd')
  final String? ocrFormCd;
  @override
  @JsonKey(name: 'ConsentState')
  final String? consentState;
  @override
  @JsonKey(name: 'RecordCnt')
  final String? recordCnt;
  @override
  @JsonKey(name: 'Test')
  final String? test;
  @override
  @JsonKey(name: 'Image')
  final dynamic image;
  @override
  @JsonKey(name: 'UseYN')
  final String? useYn;
  @override
  @JsonKey(name: 'ConsentFolderRid')
  final int? consentFolderRid;
  @override
  @JsonKey(name: 'ConsentListRid')
  final int? consentListRid;
  @override
  @JsonKey(name: 'FolderName')
  final String? folderName;
  @override
  @JsonKey(name: 'ParamCommonJson')
  final String? paramCommonJson;
  @override
  @JsonKey(name: 'PRCPHISTNO')
  final String? prcphistno;
  @override
  @JsonKey(name: 'EXECPRCPNO')
  final String? execprcpno;
  @override
  @JsonKey(name: 'CategoryCode')
  final String? categoryCode;

  @override
  String toString() {
    return 'PrescriptionConsentData(formName: $formName, formCd: $formCd, formId: $formId, formGuid: $formGuid, formVersion: $formVersion, formRid: $formRid, consentMstRid: $consentMstRid, formNum: $formNum, formTypeCode: $formTypeCode, formTypeName: $formTypeName, intnlMedFormYn: $intnlMedFormYn, setType: $setType, setAuth: $setAuth, deptCd: $deptCd, deptNm: $deptNm, esignYn: $esignYn, mediHistoryYn: $mediHistoryYn, groupDeptCode: $groupDeptCode, groupType: $groupType, groupName: $groupName, groupNumber: $groupNumber, paymentCode: $paymentCode, inspectionNameKor: $inspectionNameKor, inspectionNameEng: $inspectionNameEng, orderDate: $orderDate, orderYn: $orderYn, orderCd: $orderCd, orderName: $orderName, orderSeqNo: $orderSeqNo, orderClass: $orderClass, printCnt: $printCnt, ocrFormCd: $ocrFormCd, consentState: $consentState, recordCnt: $recordCnt, test: $test, image: $image, useYn: $useYn, consentFolderRid: $consentFolderRid, consentListRid: $consentListRid, folderName: $folderName, paramCommonJson: $paramCommonJson, prcphistno: $prcphistno, execprcpno: $execprcpno, categoryCode: $categoryCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrescriptionConsentDataImpl &&
            (identical(other.formName, formName) ||
                other.formName == formName) &&
            (identical(other.formCd, formCd) || other.formCd == formCd) &&
            (identical(other.formId, formId) || other.formId == formId) &&
            (identical(other.formGuid, formGuid) ||
                other.formGuid == formGuid) &&
            (identical(other.formVersion, formVersion) ||
                other.formVersion == formVersion) &&
            (identical(other.formRid, formRid) || other.formRid == formRid) &&
            (identical(other.consentMstRid, consentMstRid) ||
                other.consentMstRid == consentMstRid) &&
            (identical(other.formNum, formNum) || other.formNum == formNum) &&
            (identical(other.formTypeCode, formTypeCode) ||
                other.formTypeCode == formTypeCode) &&
            (identical(other.formTypeName, formTypeName) ||
                other.formTypeName == formTypeName) &&
            (identical(other.intnlMedFormYn, intnlMedFormYn) ||
                other.intnlMedFormYn == intnlMedFormYn) &&
            (identical(other.setType, setType) || other.setType == setType) &&
            (identical(other.setAuth, setAuth) || other.setAuth == setAuth) &&
            (identical(other.deptCd, deptCd) || other.deptCd == deptCd) &&
            (identical(other.deptNm, deptNm) || other.deptNm == deptNm) &&
            (identical(other.esignYn, esignYn) || other.esignYn == esignYn) &&
            (identical(other.mediHistoryYn, mediHistoryYn) ||
                other.mediHistoryYn == mediHistoryYn) &&
            (identical(other.groupDeptCode, groupDeptCode) ||
                other.groupDeptCode == groupDeptCode) &&
            (identical(other.groupType, groupType) ||
                other.groupType == groupType) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.groupNumber, groupNumber) ||
                other.groupNumber == groupNumber) &&
            (identical(other.paymentCode, paymentCode) ||
                other.paymentCode == paymentCode) &&
            (identical(other.inspectionNameKor, inspectionNameKor) ||
                other.inspectionNameKor == inspectionNameKor) &&
            (identical(other.inspectionNameEng, inspectionNameEng) ||
                other.inspectionNameEng == inspectionNameEng) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.orderYn, orderYn) || other.orderYn == orderYn) &&
            (identical(other.orderCd, orderCd) || other.orderCd == orderCd) &&
            (identical(other.orderName, orderName) ||
                other.orderName == orderName) &&
            (identical(other.orderSeqNo, orderSeqNo) ||
                other.orderSeqNo == orderSeqNo) &&
            (identical(other.orderClass, orderClass) ||
                other.orderClass == orderClass) &&
            (identical(other.printCnt, printCnt) ||
                other.printCnt == printCnt) &&
            (identical(other.ocrFormCd, ocrFormCd) ||
                other.ocrFormCd == ocrFormCd) &&
            (identical(other.consentState, consentState) ||
                other.consentState == consentState) &&
            (identical(other.recordCnt, recordCnt) ||
                other.recordCnt == recordCnt) &&
            (identical(other.test, test) || other.test == test) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.useYn, useYn) || other.useYn == useYn) &&
            (identical(other.consentFolderRid, consentFolderRid) ||
                other.consentFolderRid == consentFolderRid) &&
            (identical(other.consentListRid, consentListRid) ||
                other.consentListRid == consentListRid) &&
            (identical(other.folderName, folderName) ||
                other.folderName == folderName) &&
            (identical(other.paramCommonJson, paramCommonJson) ||
                other.paramCommonJson == paramCommonJson) &&
            (identical(other.prcphistno, prcphistno) ||
                other.prcphistno == prcphistno) &&
            (identical(other.execprcpno, execprcpno) ||
                other.execprcpno == execprcpno) &&
            (identical(other.categoryCode, categoryCode) ||
                other.categoryCode == categoryCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        formName,
        formCd,
        formId,
        formGuid,
        formVersion,
        formRid,
        consentMstRid,
        formNum,
        formTypeCode,
        formTypeName,
        intnlMedFormYn,
        setType,
        setAuth,
        deptCd,
        deptNm,
        esignYn,
        mediHistoryYn,
        groupDeptCode,
        groupType,
        groupName,
        groupNumber,
        paymentCode,
        inspectionNameKor,
        inspectionNameEng,
        orderDate,
        orderYn,
        orderCd,
        orderName,
        orderSeqNo,
        orderClass,
        printCnt,
        ocrFormCd,
        consentState,
        recordCnt,
        test,
        const DeepCollectionEquality().hash(image),
        useYn,
        consentFolderRid,
        consentListRid,
        folderName,
        paramCommonJson,
        prcphistno,
        execprcpno,
        categoryCode
      ]);

  /// Create a copy of PrescriptionConsentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrescriptionConsentDataImplCopyWith<_$PrescriptionConsentDataImpl>
      get copyWith => __$$PrescriptionConsentDataImplCopyWithImpl<
          _$PrescriptionConsentDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrescriptionConsentDataImplToJson(
      this,
    );
  }
}

abstract class _PrescriptionConsentData implements PrescriptionConsentData {
  const factory _PrescriptionConsentData(
          {@JsonKey(name: 'FormName') final String? formName,
          @JsonKey(name: 'FormCd') final String? formCd,
          @JsonKey(name: 'FormId') final int? formId,
          @JsonKey(name: 'FormGuid') final String? formGuid,
          @JsonKey(name: 'FormVersion') final int? formVersion,
          @JsonKey(name: 'FormRid') final int? formRid,
          @JsonKey(name: 'ConsentMstRid') final int? consentMstRid,
          @JsonKey(name: 'FormNum') final String? formNum,
          @JsonKey(name: 'FormTypeCode') final String? formTypeCode,
          @JsonKey(name: 'FormTypeName') final String? formTypeName,
          @JsonKey(name: 'IntnlMedFormYn') final String? intnlMedFormYn,
          @JsonKey(name: 'SetType') final String? setType,
          @JsonKey(name: 'SetAuth') final String? setAuth,
          @JsonKey(name: 'DeptCd') final String? deptCd,
          @JsonKey(name: 'DeptNm') final String? deptNm,
          @JsonKey(name: 'EsignYn') final String? esignYn,
          @JsonKey(name: 'MediHistoryYn') final String? mediHistoryYn,
          @JsonKey(name: 'GroupDeptCode') final String? groupDeptCode,
          @JsonKey(name: 'GroupType') final String? groupType,
          @JsonKey(name: 'GroupName') final String? groupName,
          @JsonKey(name: 'GroupNumber') final String? groupNumber,
          @JsonKey(name: 'PaymentCode') final String? paymentCode,
          @JsonKey(name: 'InspectionNameKor') final String? inspectionNameKor,
          @JsonKey(name: 'InspectionNameEng') final String? inspectionNameEng,
          @JsonKey(name: 'OrderDate') final String? orderDate,
          @JsonKey(name: 'OrderYn') final String? orderYn,
          @JsonKey(name: 'OrderCd') final String? orderCd,
          @JsonKey(name: 'OrderName') final String? orderName,
          @JsonKey(name: 'OrderSeqNo') final int? orderSeqNo,
          @JsonKey(name: 'OrderClass') final String? orderClass,
          @JsonKey(name: 'PrintCnt') final String? printCnt,
          @JsonKey(name: 'OcrFormCd') final String? ocrFormCd,
          @JsonKey(name: 'ConsentState') final String? consentState,
          @JsonKey(name: 'RecordCnt') final String? recordCnt,
          @JsonKey(name: 'Test') final String? test,
          @JsonKey(name: 'Image') final dynamic image,
          @JsonKey(name: 'UseYN') final String? useYn,
          @JsonKey(name: 'ConsentFolderRid') final int? consentFolderRid,
          @JsonKey(name: 'ConsentListRid') final int? consentListRid,
          @JsonKey(name: 'FolderName') final String? folderName,
          @JsonKey(name: 'ParamCommonJson') final String? paramCommonJson,
          @JsonKey(name: 'PRCPHISTNO') final String? prcphistno,
          @JsonKey(name: 'EXECPRCPNO') final String? execprcpno,
          @JsonKey(name: 'CategoryCode') final String? categoryCode}) =
      _$PrescriptionConsentDataImpl;

  factory _PrescriptionConsentData.fromJson(Map<String, dynamic> json) =
      _$PrescriptionConsentDataImpl.fromJson;

  @override
  @JsonKey(name: 'FormName')
  String? get formName;
  @override
  @JsonKey(name: 'FormCd')
  String? get formCd;
  @override
  @JsonKey(name: 'FormId')
  int? get formId;
  @override
  @JsonKey(name: 'FormGuid')
  String? get formGuid;
  @override
  @JsonKey(name: 'FormVersion')
  int? get formVersion;
  @override
  @JsonKey(name: 'FormRid')
  int? get formRid;
  @override
  @JsonKey(name: 'ConsentMstRid')
  int? get consentMstRid;
  @override
  @JsonKey(name: 'FormNum')
  String? get formNum;
  @override
  @JsonKey(name: 'FormTypeCode')
  String? get formTypeCode;
  @override
  @JsonKey(name: 'FormTypeName')
  String? get formTypeName;
  @override
  @JsonKey(name: 'IntnlMedFormYn')
  String? get intnlMedFormYn;
  @override
  @JsonKey(name: 'SetType')
  String? get setType;
  @override
  @JsonKey(name: 'SetAuth')
  String? get setAuth;
  @override
  @JsonKey(name: 'DeptCd')
  String? get deptCd;
  @override
  @JsonKey(name: 'DeptNm')
  String? get deptNm;
  @override
  @JsonKey(name: 'EsignYn')
  String? get esignYn;
  @override
  @JsonKey(name: 'MediHistoryYn')
  String? get mediHistoryYn;
  @override
  @JsonKey(name: 'GroupDeptCode')
  String? get groupDeptCode;
  @override
  @JsonKey(name: 'GroupType')
  String? get groupType;
  @override
  @JsonKey(name: 'GroupName')
  String? get groupName;
  @override
  @JsonKey(name: 'GroupNumber')
  String? get groupNumber;
  @override
  @JsonKey(name: 'PaymentCode')
  String? get paymentCode;
  @override
  @JsonKey(name: 'InspectionNameKor')
  String? get inspectionNameKor;
  @override
  @JsonKey(name: 'InspectionNameEng')
  String? get inspectionNameEng;
  @override
  @JsonKey(name: 'OrderDate')
  String? get orderDate;
  @override
  @JsonKey(name: 'OrderYn')
  String? get orderYn;
  @override
  @JsonKey(name: 'OrderCd')
  String? get orderCd;
  @override
  @JsonKey(name: 'OrderName')
  String? get orderName;
  @override
  @JsonKey(name: 'OrderSeqNo')
  int? get orderSeqNo;
  @override
  @JsonKey(name: 'OrderClass')
  String? get orderClass;
  @override
  @JsonKey(name: 'PrintCnt')
  String? get printCnt;
  @override
  @JsonKey(name: 'OcrFormCd')
  String? get ocrFormCd;
  @override
  @JsonKey(name: 'ConsentState')
  String? get consentState;
  @override
  @JsonKey(name: 'RecordCnt')
  String? get recordCnt;
  @override
  @JsonKey(name: 'Test')
  String? get test;
  @override
  @JsonKey(name: 'Image')
  dynamic get image;
  @override
  @JsonKey(name: 'UseYN')
  String? get useYn;
  @override
  @JsonKey(name: 'ConsentFolderRid')
  int? get consentFolderRid;
  @override
  @JsonKey(name: 'ConsentListRid')
  int? get consentListRid;
  @override
  @JsonKey(name: 'FolderName')
  String? get folderName;
  @override
  @JsonKey(name: 'ParamCommonJson')
  String? get paramCommonJson;
  @override
  @JsonKey(name: 'PRCPHISTNO')
  String? get prcphistno;
  @override
  @JsonKey(name: 'EXECPRCPNO')
  String? get execprcpno;
  @override
  @JsonKey(name: 'CategoryCode')
  String? get categoryCode;

  /// Create a copy of PrescriptionConsentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrescriptionConsentDataImplCopyWith<_$PrescriptionConsentDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
