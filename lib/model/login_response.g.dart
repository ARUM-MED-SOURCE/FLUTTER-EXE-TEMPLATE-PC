// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      resultCode: json['RESULT_CODE'] as String,
      resultData:
          LoginResultData.fromJson(json['RESULT_DATA'] as Map<String, dynamic>),
      errorCode: json['ERROR_CODE'] as String,
      errorMessage: json['ERROR_MESSAGE'] as String,
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'RESULT_CODE': instance.resultCode,
      'RESULT_DATA': instance.resultData,
      'ERROR_CODE': instance.errorCode,
      'ERROR_MESSAGE': instance.errorMessage,
    };

_$LoginResultDataImpl _$$LoginResultDataImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResultDataImpl(
      status: json['Status'] as String?,
      userId: json['UserID'] as String,
      userPassword: json['UserPassword'] as String?,
      userName: json['UserName'] as String,
      userDeptCode: json['UserDeptCode'] as String,
      userDeptName: json['UserDeptName'] as String,
      userDeptNum: json['UserDeptNum'] as String,
      userGroupCode: json['UserGroupCode'] as String,
      userGroupName: json['UserGroupName'] as String,
      serverTime: json['ServerTime'] as String,
      hosType: json['HosType'] as String,
      userRid: json['UserRid'] as String,
      useExternalYn: json['UseExternalYn'] as String,
      resistrationNumber: json['ResistrationNumber'] as String,
      specialResistrationNumber: json['SpecialResistrationNumber'] as String,
      partCd: json['PartCd'] as String,
      delAuth: json['DelAuth'] as String,
      userCertDN: json['UserCertDN'] as String,
      userCertPW: json['UserCertPW'] as String,
      userWard: json['UserWard'] as String,
      paramCommonJson: json['ParamCommonJson'] as String,
      loginSuccessYN: json['LoginSuccessYN'] as String,
      loginMessage: json['LoginMessage'] as String,
      doctorYn: json['DoctorYN'] as String,
    );

Map<String, dynamic> _$$LoginResultDataImplToJson(
        _$LoginResultDataImpl instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'UserID': instance.userId,
      'UserPassword': instance.userPassword,
      'UserName': instance.userName,
      'UserDeptCode': instance.userDeptCode,
      'UserDeptName': instance.userDeptName,
      'UserDeptNum': instance.userDeptNum,
      'UserGroupCode': instance.userGroupCode,
      'UserGroupName': instance.userGroupName,
      'ServerTime': instance.serverTime,
      'HosType': instance.hosType,
      'UserRid': instance.userRid,
      'UseExternalYn': instance.useExternalYn,
      'ResistrationNumber': instance.resistrationNumber,
      'SpecialResistrationNumber': instance.specialResistrationNumber,
      'PartCd': instance.partCd,
      'DelAuth': instance.delAuth,
      'UserCertDN': instance.userCertDN,
      'UserCertPW': instance.userCertPW,
      'UserWard': instance.userWard,
      'ParamCommonJson': instance.paramCommonJson,
      'LoginSuccessYN': instance.loginSuccessYN,
      'LoginMessage': instance.loginMessage,
      'DoctorYN': instance.doctorYn,
    };
