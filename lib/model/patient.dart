import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient.freezed.dart';
part 'patient.g.dart';

@freezed
class Patient with _$Patient {
  const factory Patient({
    @Default('') String name,
    @Default('') String id,
    @Default('') String type,
    @Default('') String ward,
    @Default('') String ageGender,
    @Default('') String admissionDate,
    @Default('') String doctor,
    @Default('') String attendingDoctor,
    @Default('') String diagnosis,
    @Default('') String alert,
    @Default([]) List<String> allergies,
  }) = _Patient;

  factory Patient.fromJson(Map<String, dynamic> json) => _$PatientFromJson(json);
}

  