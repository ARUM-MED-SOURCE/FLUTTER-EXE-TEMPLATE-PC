// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consent_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConsentParams _$ConsentParamsFromJson(Map<String, dynamic> json) =>
    ConsentParams(
      methodName: json['methodName'] as String?,
      params: json['params'] as String?,
      userId: json['userId'] as String?,
      deviceType: json['deviceType'] as String?,
      deviceIdentName: json['deviceIdentName'] as String?,
      deviceIdentIP: json['deviceIdentIP'] as String?,
      deviceIdentMac: json['deviceIdentMac'] as String?,
    );

Map<String, dynamic> _$ConsentParamsToJson(ConsentParams instance) =>
    <String, dynamic>{
      'methodName': instance.methodName,
      'params': instance.params,
      'userId': instance.userId,
      'deviceType': instance.deviceType,
      'deviceIdentName': instance.deviceIdentName,
      'deviceIdentIP': instance.deviceIdentIP,
      'deviceIdentMac': instance.deviceIdentMac,
    };
