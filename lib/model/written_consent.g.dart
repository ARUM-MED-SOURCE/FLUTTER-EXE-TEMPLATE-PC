// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'written_consent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WrittenConsentDataImpl _$$WrittenConsentDataImplFromJson(
        Map<String, dynamic> json) =>
    _$WrittenConsentDataImpl(
      type: json['type'] as String? ?? '',
      date: json['date'] as String? ?? '',
      name: json['name'] as String? ?? '',
      id: json['id'] as String? ?? '',
    );

Map<String, dynamic> _$$WrittenConsentDataImplToJson(
        _$WrittenConsentDataImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'date': instance.date,
      'name': instance.name,
      'id': instance.id,
    };
