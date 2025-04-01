// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return _LoginResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginResponse {
  @JsonKey(name: 'RESULT_CODE')
  String get resultCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'RESULT_DATA')
  LoginResultData get resultData => throw _privateConstructorUsedError;
  @JsonKey(name: 'ERROR_CODE')
  String get errorCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'ERROR_MESSAGE')
  String get errorMessage => throw _privateConstructorUsedError;

  /// Serializes this LoginResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginResponseCopyWith<LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseCopyWith<$Res> {
  factory $LoginResponseCopyWith(
          LoginResponse value, $Res Function(LoginResponse) then) =
      _$LoginResponseCopyWithImpl<$Res, LoginResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'RESULT_CODE') String resultCode,
      @JsonKey(name: 'RESULT_DATA') LoginResultData resultData,
      @JsonKey(name: 'ERROR_CODE') String errorCode,
      @JsonKey(name: 'ERROR_MESSAGE') String errorMessage});

  $LoginResultDataCopyWith<$Res> get resultData;
}

/// @nodoc
class _$LoginResponseCopyWithImpl<$Res, $Val extends LoginResponse>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginResponse
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
              as LoginResultData,
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

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginResultDataCopyWith<$Res> get resultData {
    return $LoginResultDataCopyWith<$Res>(_value.resultData, (value) {
      return _then(_value.copyWith(resultData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginResponseImplCopyWith<$Res>
    implements $LoginResponseCopyWith<$Res> {
  factory _$$LoginResponseImplCopyWith(
          _$LoginResponseImpl value, $Res Function(_$LoginResponseImpl) then) =
      __$$LoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'RESULT_CODE') String resultCode,
      @JsonKey(name: 'RESULT_DATA') LoginResultData resultData,
      @JsonKey(name: 'ERROR_CODE') String errorCode,
      @JsonKey(name: 'ERROR_MESSAGE') String errorMessage});

  @override
  $LoginResultDataCopyWith<$Res> get resultData;
}

/// @nodoc
class __$$LoginResponseImplCopyWithImpl<$Res>
    extends _$LoginResponseCopyWithImpl<$Res, _$LoginResponseImpl>
    implements _$$LoginResponseImplCopyWith<$Res> {
  __$$LoginResponseImplCopyWithImpl(
      _$LoginResponseImpl _value, $Res Function(_$LoginResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultCode = null,
    Object? resultData = null,
    Object? errorCode = null,
    Object? errorMessage = null,
  }) {
    return _then(_$LoginResponseImpl(
      resultCode: null == resultCode
          ? _value.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as String,
      resultData: null == resultData
          ? _value.resultData
          : resultData // ignore: cast_nullable_to_non_nullable
              as LoginResultData,
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
class _$LoginResponseImpl implements _LoginResponse {
  const _$LoginResponseImpl(
      {@JsonKey(name: 'RESULT_CODE') required this.resultCode,
      @JsonKey(name: 'RESULT_DATA') required this.resultData,
      @JsonKey(name: 'ERROR_CODE') required this.errorCode,
      @JsonKey(name: 'ERROR_MESSAGE') required this.errorMessage});

  factory _$LoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseImplFromJson(json);

  @override
  @JsonKey(name: 'RESULT_CODE')
  final String resultCode;
  @override
  @JsonKey(name: 'RESULT_DATA')
  final LoginResultData resultData;
  @override
  @JsonKey(name: 'ERROR_CODE')
  final String errorCode;
  @override
  @JsonKey(name: 'ERROR_MESSAGE')
  final String errorMessage;

  @override
  String toString() {
    return 'LoginResponse(resultCode: $resultCode, resultData: $resultData, errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseImpl &&
            (identical(other.resultCode, resultCode) ||
                other.resultCode == resultCode) &&
            (identical(other.resultData, resultData) ||
                other.resultData == resultData) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, resultCode, resultData, errorCode, errorMessage);

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseImplCopyWith<_$LoginResponseImpl> get copyWith =>
      __$$LoginResponseImplCopyWithImpl<_$LoginResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseImplToJson(
      this,
    );
  }
}

abstract class _LoginResponse implements LoginResponse {
  const factory _LoginResponse(
      {@JsonKey(name: 'RESULT_CODE') required final String resultCode,
      @JsonKey(name: 'RESULT_DATA') required final LoginResultData resultData,
      @JsonKey(name: 'ERROR_CODE') required final String errorCode,
      @JsonKey(name: 'ERROR_MESSAGE')
      required final String errorMessage}) = _$LoginResponseImpl;

  factory _LoginResponse.fromJson(Map<String, dynamic> json) =
      _$LoginResponseImpl.fromJson;

  @override
  @JsonKey(name: 'RESULT_CODE')
  String get resultCode;
  @override
  @JsonKey(name: 'RESULT_DATA')
  LoginResultData get resultData;
  @override
  @JsonKey(name: 'ERROR_CODE')
  String get errorCode;
  @override
  @JsonKey(name: 'ERROR_MESSAGE')
  String get errorMessage;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginResponseImplCopyWith<_$LoginResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginResultData _$LoginResultDataFromJson(Map<String, dynamic> json) {
  return _LoginResultData.fromJson(json);
}

/// @nodoc
mixin _$LoginResultData {
  @JsonKey(name: 'Status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserID')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserPassword')
  String? get userPassword => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserName')
  String get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserDeptCode')
  String get userDeptCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserDeptName')
  String get userDeptName => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserDeptNum')
  String get userDeptNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserGroupCode')
  String get userGroupCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserGroupName')
  String get userGroupName => throw _privateConstructorUsedError;
  @JsonKey(name: 'ServerTime')
  String get serverTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'HosType')
  String get hosType => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserRid')
  String get userRid => throw _privateConstructorUsedError;
  @JsonKey(name: 'UseExternalYn')
  String get useExternalYn => throw _privateConstructorUsedError;
  @JsonKey(name: 'ResistrationNumber')
  String get resistrationNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'SpecialResistrationNumber')
  String get specialResistrationNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'PartCd')
  String get partCd => throw _privateConstructorUsedError;
  @JsonKey(name: 'DelAuth')
  String get delAuth => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserCertDN')
  String get userCertDN => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserCertPW')
  String get userCertPW => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserWard')
  String get userWard => throw _privateConstructorUsedError;
  @JsonKey(name: 'ParamCommonJson')
  String get paramCommonJson => throw _privateConstructorUsedError;
  @JsonKey(name: 'LoginSuccessYN')
  String get loginSuccessYN => throw _privateConstructorUsedError;
  @JsonKey(name: 'LoginMessage')
  String get loginMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'DoctorYN')
  String get doctorYn => throw _privateConstructorUsedError;

  /// Serializes this LoginResultData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginResultData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginResultDataCopyWith<LoginResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResultDataCopyWith<$Res> {
  factory $LoginResultDataCopyWith(
          LoginResultData value, $Res Function(LoginResultData) then) =
      _$LoginResultDataCopyWithImpl<$Res, LoginResultData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Status') String? status,
      @JsonKey(name: 'UserID') String userId,
      @JsonKey(name: 'UserPassword') String? userPassword,
      @JsonKey(name: 'UserName') String userName,
      @JsonKey(name: 'UserDeptCode') String userDeptCode,
      @JsonKey(name: 'UserDeptName') String userDeptName,
      @JsonKey(name: 'UserDeptNum') String userDeptNum,
      @JsonKey(name: 'UserGroupCode') String userGroupCode,
      @JsonKey(name: 'UserGroupName') String userGroupName,
      @JsonKey(name: 'ServerTime') String serverTime,
      @JsonKey(name: 'HosType') String hosType,
      @JsonKey(name: 'UserRid') String userRid,
      @JsonKey(name: 'UseExternalYn') String useExternalYn,
      @JsonKey(name: 'ResistrationNumber') String resistrationNumber,
      @JsonKey(name: 'SpecialResistrationNumber')
      String specialResistrationNumber,
      @JsonKey(name: 'PartCd') String partCd,
      @JsonKey(name: 'DelAuth') String delAuth,
      @JsonKey(name: 'UserCertDN') String userCertDN,
      @JsonKey(name: 'UserCertPW') String userCertPW,
      @JsonKey(name: 'UserWard') String userWard,
      @JsonKey(name: 'ParamCommonJson') String paramCommonJson,
      @JsonKey(name: 'LoginSuccessYN') String loginSuccessYN,
      @JsonKey(name: 'LoginMessage') String loginMessage,
      @JsonKey(name: 'DoctorYN') String doctorYn});
}

/// @nodoc
class _$LoginResultDataCopyWithImpl<$Res, $Val extends LoginResultData>
    implements $LoginResultDataCopyWith<$Res> {
  _$LoginResultDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginResultData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? userId = null,
    Object? userPassword = freezed,
    Object? userName = null,
    Object? userDeptCode = null,
    Object? userDeptName = null,
    Object? userDeptNum = null,
    Object? userGroupCode = null,
    Object? userGroupName = null,
    Object? serverTime = null,
    Object? hosType = null,
    Object? userRid = null,
    Object? useExternalYn = null,
    Object? resistrationNumber = null,
    Object? specialResistrationNumber = null,
    Object? partCd = null,
    Object? delAuth = null,
    Object? userCertDN = null,
    Object? userCertPW = null,
    Object? userWard = null,
    Object? paramCommonJson = null,
    Object? loginSuccessYN = null,
    Object? loginMessage = null,
    Object? doctorYn = null,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userPassword: freezed == userPassword
          ? _value.userPassword
          : userPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userDeptCode: null == userDeptCode
          ? _value.userDeptCode
          : userDeptCode // ignore: cast_nullable_to_non_nullable
              as String,
      userDeptName: null == userDeptName
          ? _value.userDeptName
          : userDeptName // ignore: cast_nullable_to_non_nullable
              as String,
      userDeptNum: null == userDeptNum
          ? _value.userDeptNum
          : userDeptNum // ignore: cast_nullable_to_non_nullable
              as String,
      userGroupCode: null == userGroupCode
          ? _value.userGroupCode
          : userGroupCode // ignore: cast_nullable_to_non_nullable
              as String,
      userGroupName: null == userGroupName
          ? _value.userGroupName
          : userGroupName // ignore: cast_nullable_to_non_nullable
              as String,
      serverTime: null == serverTime
          ? _value.serverTime
          : serverTime // ignore: cast_nullable_to_non_nullable
              as String,
      hosType: null == hosType
          ? _value.hosType
          : hosType // ignore: cast_nullable_to_non_nullable
              as String,
      userRid: null == userRid
          ? _value.userRid
          : userRid // ignore: cast_nullable_to_non_nullable
              as String,
      useExternalYn: null == useExternalYn
          ? _value.useExternalYn
          : useExternalYn // ignore: cast_nullable_to_non_nullable
              as String,
      resistrationNumber: null == resistrationNumber
          ? _value.resistrationNumber
          : resistrationNumber // ignore: cast_nullable_to_non_nullable
              as String,
      specialResistrationNumber: null == specialResistrationNumber
          ? _value.specialResistrationNumber
          : specialResistrationNumber // ignore: cast_nullable_to_non_nullable
              as String,
      partCd: null == partCd
          ? _value.partCd
          : partCd // ignore: cast_nullable_to_non_nullable
              as String,
      delAuth: null == delAuth
          ? _value.delAuth
          : delAuth // ignore: cast_nullable_to_non_nullable
              as String,
      userCertDN: null == userCertDN
          ? _value.userCertDN
          : userCertDN // ignore: cast_nullable_to_non_nullable
              as String,
      userCertPW: null == userCertPW
          ? _value.userCertPW
          : userCertPW // ignore: cast_nullable_to_non_nullable
              as String,
      userWard: null == userWard
          ? _value.userWard
          : userWard // ignore: cast_nullable_to_non_nullable
              as String,
      paramCommonJson: null == paramCommonJson
          ? _value.paramCommonJson
          : paramCommonJson // ignore: cast_nullable_to_non_nullable
              as String,
      loginSuccessYN: null == loginSuccessYN
          ? _value.loginSuccessYN
          : loginSuccessYN // ignore: cast_nullable_to_non_nullable
              as String,
      loginMessage: null == loginMessage
          ? _value.loginMessage
          : loginMessage // ignore: cast_nullable_to_non_nullable
              as String,
      doctorYn: null == doctorYn
          ? _value.doctorYn
          : doctorYn // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginResultDataImplCopyWith<$Res>
    implements $LoginResultDataCopyWith<$Res> {
  factory _$$LoginResultDataImplCopyWith(_$LoginResultDataImpl value,
          $Res Function(_$LoginResultDataImpl) then) =
      __$$LoginResultDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Status') String? status,
      @JsonKey(name: 'UserID') String userId,
      @JsonKey(name: 'UserPassword') String? userPassword,
      @JsonKey(name: 'UserName') String userName,
      @JsonKey(name: 'UserDeptCode') String userDeptCode,
      @JsonKey(name: 'UserDeptName') String userDeptName,
      @JsonKey(name: 'UserDeptNum') String userDeptNum,
      @JsonKey(name: 'UserGroupCode') String userGroupCode,
      @JsonKey(name: 'UserGroupName') String userGroupName,
      @JsonKey(name: 'ServerTime') String serverTime,
      @JsonKey(name: 'HosType') String hosType,
      @JsonKey(name: 'UserRid') String userRid,
      @JsonKey(name: 'UseExternalYn') String useExternalYn,
      @JsonKey(name: 'ResistrationNumber') String resistrationNumber,
      @JsonKey(name: 'SpecialResistrationNumber')
      String specialResistrationNumber,
      @JsonKey(name: 'PartCd') String partCd,
      @JsonKey(name: 'DelAuth') String delAuth,
      @JsonKey(name: 'UserCertDN') String userCertDN,
      @JsonKey(name: 'UserCertPW') String userCertPW,
      @JsonKey(name: 'UserWard') String userWard,
      @JsonKey(name: 'ParamCommonJson') String paramCommonJson,
      @JsonKey(name: 'LoginSuccessYN') String loginSuccessYN,
      @JsonKey(name: 'LoginMessage') String loginMessage,
      @JsonKey(name: 'DoctorYN') String doctorYn});
}

/// @nodoc
class __$$LoginResultDataImplCopyWithImpl<$Res>
    extends _$LoginResultDataCopyWithImpl<$Res, _$LoginResultDataImpl>
    implements _$$LoginResultDataImplCopyWith<$Res> {
  __$$LoginResultDataImplCopyWithImpl(
      _$LoginResultDataImpl _value, $Res Function(_$LoginResultDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginResultData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? userId = null,
    Object? userPassword = freezed,
    Object? userName = null,
    Object? userDeptCode = null,
    Object? userDeptName = null,
    Object? userDeptNum = null,
    Object? userGroupCode = null,
    Object? userGroupName = null,
    Object? serverTime = null,
    Object? hosType = null,
    Object? userRid = null,
    Object? useExternalYn = null,
    Object? resistrationNumber = null,
    Object? specialResistrationNumber = null,
    Object? partCd = null,
    Object? delAuth = null,
    Object? userCertDN = null,
    Object? userCertPW = null,
    Object? userWard = null,
    Object? paramCommonJson = null,
    Object? loginSuccessYN = null,
    Object? loginMessage = null,
    Object? doctorYn = null,
  }) {
    return _then(_$LoginResultDataImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userPassword: freezed == userPassword
          ? _value.userPassword
          : userPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userDeptCode: null == userDeptCode
          ? _value.userDeptCode
          : userDeptCode // ignore: cast_nullable_to_non_nullable
              as String,
      userDeptName: null == userDeptName
          ? _value.userDeptName
          : userDeptName // ignore: cast_nullable_to_non_nullable
              as String,
      userDeptNum: null == userDeptNum
          ? _value.userDeptNum
          : userDeptNum // ignore: cast_nullable_to_non_nullable
              as String,
      userGroupCode: null == userGroupCode
          ? _value.userGroupCode
          : userGroupCode // ignore: cast_nullable_to_non_nullable
              as String,
      userGroupName: null == userGroupName
          ? _value.userGroupName
          : userGroupName // ignore: cast_nullable_to_non_nullable
              as String,
      serverTime: null == serverTime
          ? _value.serverTime
          : serverTime // ignore: cast_nullable_to_non_nullable
              as String,
      hosType: null == hosType
          ? _value.hosType
          : hosType // ignore: cast_nullable_to_non_nullable
              as String,
      userRid: null == userRid
          ? _value.userRid
          : userRid // ignore: cast_nullable_to_non_nullable
              as String,
      useExternalYn: null == useExternalYn
          ? _value.useExternalYn
          : useExternalYn // ignore: cast_nullable_to_non_nullable
              as String,
      resistrationNumber: null == resistrationNumber
          ? _value.resistrationNumber
          : resistrationNumber // ignore: cast_nullable_to_non_nullable
              as String,
      specialResistrationNumber: null == specialResistrationNumber
          ? _value.specialResistrationNumber
          : specialResistrationNumber // ignore: cast_nullable_to_non_nullable
              as String,
      partCd: null == partCd
          ? _value.partCd
          : partCd // ignore: cast_nullable_to_non_nullable
              as String,
      delAuth: null == delAuth
          ? _value.delAuth
          : delAuth // ignore: cast_nullable_to_non_nullable
              as String,
      userCertDN: null == userCertDN
          ? _value.userCertDN
          : userCertDN // ignore: cast_nullable_to_non_nullable
              as String,
      userCertPW: null == userCertPW
          ? _value.userCertPW
          : userCertPW // ignore: cast_nullable_to_non_nullable
              as String,
      userWard: null == userWard
          ? _value.userWard
          : userWard // ignore: cast_nullable_to_non_nullable
              as String,
      paramCommonJson: null == paramCommonJson
          ? _value.paramCommonJson
          : paramCommonJson // ignore: cast_nullable_to_non_nullable
              as String,
      loginSuccessYN: null == loginSuccessYN
          ? _value.loginSuccessYN
          : loginSuccessYN // ignore: cast_nullable_to_non_nullable
              as String,
      loginMessage: null == loginMessage
          ? _value.loginMessage
          : loginMessage // ignore: cast_nullable_to_non_nullable
              as String,
      doctorYn: null == doctorYn
          ? _value.doctorYn
          : doctorYn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResultDataImpl implements _LoginResultData {
  const _$LoginResultDataImpl(
      {@JsonKey(name: 'Status') required this.status,
      @JsonKey(name: 'UserID') required this.userId,
      @JsonKey(name: 'UserPassword') required this.userPassword,
      @JsonKey(name: 'UserName') required this.userName,
      @JsonKey(name: 'UserDeptCode') required this.userDeptCode,
      @JsonKey(name: 'UserDeptName') required this.userDeptName,
      @JsonKey(name: 'UserDeptNum') required this.userDeptNum,
      @JsonKey(name: 'UserGroupCode') required this.userGroupCode,
      @JsonKey(name: 'UserGroupName') required this.userGroupName,
      @JsonKey(name: 'ServerTime') required this.serverTime,
      @JsonKey(name: 'HosType') required this.hosType,
      @JsonKey(name: 'UserRid') required this.userRid,
      @JsonKey(name: 'UseExternalYn') required this.useExternalYn,
      @JsonKey(name: 'ResistrationNumber') required this.resistrationNumber,
      @JsonKey(name: 'SpecialResistrationNumber')
      required this.specialResistrationNumber,
      @JsonKey(name: 'PartCd') required this.partCd,
      @JsonKey(name: 'DelAuth') required this.delAuth,
      @JsonKey(name: 'UserCertDN') required this.userCertDN,
      @JsonKey(name: 'UserCertPW') required this.userCertPW,
      @JsonKey(name: 'UserWard') required this.userWard,
      @JsonKey(name: 'ParamCommonJson') required this.paramCommonJson,
      @JsonKey(name: 'LoginSuccessYN') required this.loginSuccessYN,
      @JsonKey(name: 'LoginMessage') required this.loginMessage,
      @JsonKey(name: 'DoctorYN') required this.doctorYn});

  factory _$LoginResultDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResultDataImplFromJson(json);

  @override
  @JsonKey(name: 'Status')
  final String? status;
  @override
  @JsonKey(name: 'UserID')
  final String userId;
  @override
  @JsonKey(name: 'UserPassword')
  final String? userPassword;
  @override
  @JsonKey(name: 'UserName')
  final String userName;
  @override
  @JsonKey(name: 'UserDeptCode')
  final String userDeptCode;
  @override
  @JsonKey(name: 'UserDeptName')
  final String userDeptName;
  @override
  @JsonKey(name: 'UserDeptNum')
  final String userDeptNum;
  @override
  @JsonKey(name: 'UserGroupCode')
  final String userGroupCode;
  @override
  @JsonKey(name: 'UserGroupName')
  final String userGroupName;
  @override
  @JsonKey(name: 'ServerTime')
  final String serverTime;
  @override
  @JsonKey(name: 'HosType')
  final String hosType;
  @override
  @JsonKey(name: 'UserRid')
  final String userRid;
  @override
  @JsonKey(name: 'UseExternalYn')
  final String useExternalYn;
  @override
  @JsonKey(name: 'ResistrationNumber')
  final String resistrationNumber;
  @override
  @JsonKey(name: 'SpecialResistrationNumber')
  final String specialResistrationNumber;
  @override
  @JsonKey(name: 'PartCd')
  final String partCd;
  @override
  @JsonKey(name: 'DelAuth')
  final String delAuth;
  @override
  @JsonKey(name: 'UserCertDN')
  final String userCertDN;
  @override
  @JsonKey(name: 'UserCertPW')
  final String userCertPW;
  @override
  @JsonKey(name: 'UserWard')
  final String userWard;
  @override
  @JsonKey(name: 'ParamCommonJson')
  final String paramCommonJson;
  @override
  @JsonKey(name: 'LoginSuccessYN')
  final String loginSuccessYN;
  @override
  @JsonKey(name: 'LoginMessage')
  final String loginMessage;
  @override
  @JsonKey(name: 'DoctorYN')
  final String doctorYn;

  @override
  String toString() {
    return 'LoginResultData(status: $status, userId: $userId, userPassword: $userPassword, userName: $userName, userDeptCode: $userDeptCode, userDeptName: $userDeptName, userDeptNum: $userDeptNum, userGroupCode: $userGroupCode, userGroupName: $userGroupName, serverTime: $serverTime, hosType: $hosType, userRid: $userRid, useExternalYn: $useExternalYn, resistrationNumber: $resistrationNumber, specialResistrationNumber: $specialResistrationNumber, partCd: $partCd, delAuth: $delAuth, userCertDN: $userCertDN, userCertPW: $userCertPW, userWard: $userWard, paramCommonJson: $paramCommonJson, loginSuccessYN: $loginSuccessYN, loginMessage: $loginMessage, doctorYn: $doctorYn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResultDataImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userPassword, userPassword) ||
                other.userPassword == userPassword) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userDeptCode, userDeptCode) ||
                other.userDeptCode == userDeptCode) &&
            (identical(other.userDeptName, userDeptName) ||
                other.userDeptName == userDeptName) &&
            (identical(other.userDeptNum, userDeptNum) ||
                other.userDeptNum == userDeptNum) &&
            (identical(other.userGroupCode, userGroupCode) ||
                other.userGroupCode == userGroupCode) &&
            (identical(other.userGroupName, userGroupName) ||
                other.userGroupName == userGroupName) &&
            (identical(other.serverTime, serverTime) ||
                other.serverTime == serverTime) &&
            (identical(other.hosType, hosType) || other.hosType == hosType) &&
            (identical(other.userRid, userRid) || other.userRid == userRid) &&
            (identical(other.useExternalYn, useExternalYn) ||
                other.useExternalYn == useExternalYn) &&
            (identical(other.resistrationNumber, resistrationNumber) ||
                other.resistrationNumber == resistrationNumber) &&
            (identical(other.specialResistrationNumber,
                    specialResistrationNumber) ||
                other.specialResistrationNumber == specialResistrationNumber) &&
            (identical(other.partCd, partCd) || other.partCd == partCd) &&
            (identical(other.delAuth, delAuth) || other.delAuth == delAuth) &&
            (identical(other.userCertDN, userCertDN) ||
                other.userCertDN == userCertDN) &&
            (identical(other.userCertPW, userCertPW) ||
                other.userCertPW == userCertPW) &&
            (identical(other.userWard, userWard) ||
                other.userWard == userWard) &&
            (identical(other.paramCommonJson, paramCommonJson) ||
                other.paramCommonJson == paramCommonJson) &&
            (identical(other.loginSuccessYN, loginSuccessYN) ||
                other.loginSuccessYN == loginSuccessYN) &&
            (identical(other.loginMessage, loginMessage) ||
                other.loginMessage == loginMessage) &&
            (identical(other.doctorYn, doctorYn) ||
                other.doctorYn == doctorYn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        status,
        userId,
        userPassword,
        userName,
        userDeptCode,
        userDeptName,
        userDeptNum,
        userGroupCode,
        userGroupName,
        serverTime,
        hosType,
        userRid,
        useExternalYn,
        resistrationNumber,
        specialResistrationNumber,
        partCd,
        delAuth,
        userCertDN,
        userCertPW,
        userWard,
        paramCommonJson,
        loginSuccessYN,
        loginMessage,
        doctorYn
      ]);

  /// Create a copy of LoginResultData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResultDataImplCopyWith<_$LoginResultDataImpl> get copyWith =>
      __$$LoginResultDataImplCopyWithImpl<_$LoginResultDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResultDataImplToJson(
      this,
    );
  }
}

abstract class _LoginResultData implements LoginResultData {
  const factory _LoginResultData(
      {@JsonKey(name: 'Status') required final String? status,
      @JsonKey(name: 'UserID') required final String userId,
      @JsonKey(name: 'UserPassword') required final String? userPassword,
      @JsonKey(name: 'UserName') required final String userName,
      @JsonKey(name: 'UserDeptCode') required final String userDeptCode,
      @JsonKey(name: 'UserDeptName') required final String userDeptName,
      @JsonKey(name: 'UserDeptNum') required final String userDeptNum,
      @JsonKey(name: 'UserGroupCode') required final String userGroupCode,
      @JsonKey(name: 'UserGroupName') required final String userGroupName,
      @JsonKey(name: 'ServerTime') required final String serverTime,
      @JsonKey(name: 'HosType') required final String hosType,
      @JsonKey(name: 'UserRid') required final String userRid,
      @JsonKey(name: 'UseExternalYn') required final String useExternalYn,
      @JsonKey(name: 'ResistrationNumber')
      required final String resistrationNumber,
      @JsonKey(name: 'SpecialResistrationNumber')
      required final String specialResistrationNumber,
      @JsonKey(name: 'PartCd') required final String partCd,
      @JsonKey(name: 'DelAuth') required final String delAuth,
      @JsonKey(name: 'UserCertDN') required final String userCertDN,
      @JsonKey(name: 'UserCertPW') required final String userCertPW,
      @JsonKey(name: 'UserWard') required final String userWard,
      @JsonKey(name: 'ParamCommonJson') required final String paramCommonJson,
      @JsonKey(name: 'LoginSuccessYN') required final String loginSuccessYN,
      @JsonKey(name: 'LoginMessage') required final String loginMessage,
      @JsonKey(name: 'DoctorYN')
      required final String doctorYn}) = _$LoginResultDataImpl;

  factory _LoginResultData.fromJson(Map<String, dynamic> json) =
      _$LoginResultDataImpl.fromJson;

  @override
  @JsonKey(name: 'Status')
  String? get status;
  @override
  @JsonKey(name: 'UserID')
  String get userId;
  @override
  @JsonKey(name: 'UserPassword')
  String? get userPassword;
  @override
  @JsonKey(name: 'UserName')
  String get userName;
  @override
  @JsonKey(name: 'UserDeptCode')
  String get userDeptCode;
  @override
  @JsonKey(name: 'UserDeptName')
  String get userDeptName;
  @override
  @JsonKey(name: 'UserDeptNum')
  String get userDeptNum;
  @override
  @JsonKey(name: 'UserGroupCode')
  String get userGroupCode;
  @override
  @JsonKey(name: 'UserGroupName')
  String get userGroupName;
  @override
  @JsonKey(name: 'ServerTime')
  String get serverTime;
  @override
  @JsonKey(name: 'HosType')
  String get hosType;
  @override
  @JsonKey(name: 'UserRid')
  String get userRid;
  @override
  @JsonKey(name: 'UseExternalYn')
  String get useExternalYn;
  @override
  @JsonKey(name: 'ResistrationNumber')
  String get resistrationNumber;
  @override
  @JsonKey(name: 'SpecialResistrationNumber')
  String get specialResistrationNumber;
  @override
  @JsonKey(name: 'PartCd')
  String get partCd;
  @override
  @JsonKey(name: 'DelAuth')
  String get delAuth;
  @override
  @JsonKey(name: 'UserCertDN')
  String get userCertDN;
  @override
  @JsonKey(name: 'UserCertPW')
  String get userCertPW;
  @override
  @JsonKey(name: 'UserWard')
  String get userWard;
  @override
  @JsonKey(name: 'ParamCommonJson')
  String get paramCommonJson;
  @override
  @JsonKey(name: 'LoginSuccessYN')
  String get loginSuccessYN;
  @override
  @JsonKey(name: 'LoginMessage')
  String get loginMessage;
  @override
  @JsonKey(name: 'DoctorYN')
  String get doctorYn;

  /// Create a copy of LoginResultData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginResultDataImplCopyWith<_$LoginResultDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
