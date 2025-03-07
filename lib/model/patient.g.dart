// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientImpl _$$PatientImplFromJson(Map<String, dynamic> json) =>
    _$PatientImpl(
      name: json['name'] as String? ?? '',
      id: json['id'] as String? ?? '',
      type: json['type'] as String? ?? '',
      ward: json['ward'] as String? ?? '',
      ageGender: json['ageGender'] as String? ?? '',
      admissionDate: json['admissionDate'] as String? ?? '',
      doctor: json['doctor'] as String? ?? '',
      attendingDoctor: json['attendingDoctor'] as String? ?? '',
      diagnosis: json['diagnosis'] as String? ?? '',
      alert: json['alert'] as String? ?? '',
      allergies: (json['allergies'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PatientImplToJson(_$PatientImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'type': instance.type,
      'ward': instance.ward,
      'ageGender': instance.ageGender,
      'admissionDate': instance.admissionDate,
      'doctor': instance.doctor,
      'attendingDoctor': instance.attendingDoctor,
      'diagnosis': instance.diagnosis,
      'alert': instance.alert,
      'allergies': instance.allergies,
    };
