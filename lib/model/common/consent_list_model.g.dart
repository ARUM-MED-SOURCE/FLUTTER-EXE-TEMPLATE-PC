// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consent_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConsentList<T> _$ConsentListFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ConsentList<T>(
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$ConsentListToJson<T>(
  ConsentList<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': instance.data.map(toJsonT).toList(),
    };

ConsentListResponse<T> _$ConsentListResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ConsentListResponse<T>(
      resultCode: json['RESULT_CODE'] as String,
      resultData:
          (json['RESULT_DATA'] as List<dynamic>).map(fromJsonT).toList(),
      errorCode: json['ERROR_CODE'] as String,
      errorMessage: json['ERROR_MESSAGE'] as String,
    );

Map<String, dynamic> _$ConsentListResponseToJson<T>(
  ConsentListResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'RESULT_CODE': instance.resultCode,
      'RESULT_DATA': instance.resultData.map(toJsonT).toList(),
      'ERROR_CODE': instance.errorCode,
      'ERROR_MESSAGE': instance.errorMessage,
    };
