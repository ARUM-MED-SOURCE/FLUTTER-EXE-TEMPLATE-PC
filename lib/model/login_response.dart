import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResultData with _$LoginResultData {
  const factory LoginResultData({
    @JsonKey(name: 'Status') required String? status,
    @JsonKey(name: 'UserID') required String userId,
    @JsonKey(name: 'UserPassword') required String? userPassword,
    @JsonKey(name: 'UserName') required String userName,
    @JsonKey(name: 'UserDeptCode') required String userDeptCode,
    @JsonKey(name: 'UserDeptName') required String userDeptName,
    @JsonKey(name: 'UserDeptNum') required String userDeptNum,
    @JsonKey(name: 'UserGroupCode') required String userGroupCode,
    @JsonKey(name: 'UserGroupName') required String userGroupName,
    @JsonKey(name: 'ServerTime') required String serverTime,
    @JsonKey(name: 'HosType') required String hosType,
    @JsonKey(name: 'UserRid') required String userRid,
    @JsonKey(name: 'UseExternalYn') required String useExternalYn,
    @JsonKey(name: 'ResistrationNumber') required String resistrationNumber,
    @JsonKey(name: 'SpecialResistrationNumber') required String specialResistrationNumber,
    @JsonKey(name: 'PartCd') required String partCd,
    @JsonKey(name: 'DelAuth') required String delAuth,
    @JsonKey(name: 'UserCertDN') required String userCertDN,
    @JsonKey(name: 'UserCertPW') required String userCertPW,
    @JsonKey(name: 'UserWard') required String userWard,
    @JsonKey(name: 'ParamCommonJson') required String paramCommonJson,
    @JsonKey(name: 'LoginSuccessYN') required String loginSuccessYN,
    @JsonKey(name: 'LoginMessage') required String loginMessage,
    @JsonKey(name: 'DoctorYN') required String doctorYn,
  }) = _LoginResultData;

  factory LoginResultData.fromJson(Map<String, dynamic> json) =>
      _$LoginResultDataFromJson(json);
}