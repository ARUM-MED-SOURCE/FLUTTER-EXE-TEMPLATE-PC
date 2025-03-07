// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Patient _$PatientFromJson(Map<String, dynamic> json) {
  return _Patient.fromJson(json);
}

/// @nodoc
mixin _$Patient {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get ward => throw _privateConstructorUsedError;
  String get ageGender => throw _privateConstructorUsedError;
  String get admissionDate => throw _privateConstructorUsedError;
  String get doctor => throw _privateConstructorUsedError;
  String get attendingDoctor => throw _privateConstructorUsedError;
  String get diagnosis => throw _privateConstructorUsedError;
  String get alert => throw _privateConstructorUsedError;
  List<String> get allergies => throw _privateConstructorUsedError;

  /// Serializes this Patient to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Patient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatientCopyWith<Patient> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientCopyWith<$Res> {
  factory $PatientCopyWith(Patient value, $Res Function(Patient) then) =
      _$PatientCopyWithImpl<$Res, Patient>;
  @useResult
  $Res call(
      {String name,
      String id,
      String type,
      String ward,
      String ageGender,
      String admissionDate,
      String doctor,
      String attendingDoctor,
      String diagnosis,
      String alert,
      List<String> allergies});
}

/// @nodoc
class _$PatientCopyWithImpl<$Res, $Val extends Patient>
    implements $PatientCopyWith<$Res> {
  _$PatientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Patient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? type = null,
    Object? ward = null,
    Object? ageGender = null,
    Object? admissionDate = null,
    Object? doctor = null,
    Object? attendingDoctor = null,
    Object? diagnosis = null,
    Object? alert = null,
    Object? allergies = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      ward: null == ward
          ? _value.ward
          : ward // ignore: cast_nullable_to_non_nullable
              as String,
      ageGender: null == ageGender
          ? _value.ageGender
          : ageGender // ignore: cast_nullable_to_non_nullable
              as String,
      admissionDate: null == admissionDate
          ? _value.admissionDate
          : admissionDate // ignore: cast_nullable_to_non_nullable
              as String,
      doctor: null == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as String,
      attendingDoctor: null == attendingDoctor
          ? _value.attendingDoctor
          : attendingDoctor // ignore: cast_nullable_to_non_nullable
              as String,
      diagnosis: null == diagnosis
          ? _value.diagnosis
          : diagnosis // ignore: cast_nullable_to_non_nullable
              as String,
      alert: null == alert
          ? _value.alert
          : alert // ignore: cast_nullable_to_non_nullable
              as String,
      allergies: null == allergies
          ? _value.allergies
          : allergies // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientImplCopyWith<$Res> implements $PatientCopyWith<$Res> {
  factory _$$PatientImplCopyWith(
          _$PatientImpl value, $Res Function(_$PatientImpl) then) =
      __$$PatientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String id,
      String type,
      String ward,
      String ageGender,
      String admissionDate,
      String doctor,
      String attendingDoctor,
      String diagnosis,
      String alert,
      List<String> allergies});
}

/// @nodoc
class __$$PatientImplCopyWithImpl<$Res>
    extends _$PatientCopyWithImpl<$Res, _$PatientImpl>
    implements _$$PatientImplCopyWith<$Res> {
  __$$PatientImplCopyWithImpl(
      _$PatientImpl _value, $Res Function(_$PatientImpl) _then)
      : super(_value, _then);

  /// Create a copy of Patient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? type = null,
    Object? ward = null,
    Object? ageGender = null,
    Object? admissionDate = null,
    Object? doctor = null,
    Object? attendingDoctor = null,
    Object? diagnosis = null,
    Object? alert = null,
    Object? allergies = null,
  }) {
    return _then(_$PatientImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      ward: null == ward
          ? _value.ward
          : ward // ignore: cast_nullable_to_non_nullable
              as String,
      ageGender: null == ageGender
          ? _value.ageGender
          : ageGender // ignore: cast_nullable_to_non_nullable
              as String,
      admissionDate: null == admissionDate
          ? _value.admissionDate
          : admissionDate // ignore: cast_nullable_to_non_nullable
              as String,
      doctor: null == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as String,
      attendingDoctor: null == attendingDoctor
          ? _value.attendingDoctor
          : attendingDoctor // ignore: cast_nullable_to_non_nullable
              as String,
      diagnosis: null == diagnosis
          ? _value.diagnosis
          : diagnosis // ignore: cast_nullable_to_non_nullable
              as String,
      alert: null == alert
          ? _value.alert
          : alert // ignore: cast_nullable_to_non_nullable
              as String,
      allergies: null == allergies
          ? _value._allergies
          : allergies // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientImpl implements _Patient {
  const _$PatientImpl(
      {this.name = '',
      this.id = '',
      this.type = '',
      this.ward = '',
      this.ageGender = '',
      this.admissionDate = '',
      this.doctor = '',
      this.attendingDoctor = '',
      this.diagnosis = '',
      this.alert = '',
      final List<String> allergies = const []})
      : _allergies = allergies;

  factory _$PatientImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String ward;
  @override
  @JsonKey()
  final String ageGender;
  @override
  @JsonKey()
  final String admissionDate;
  @override
  @JsonKey()
  final String doctor;
  @override
  @JsonKey()
  final String attendingDoctor;
  @override
  @JsonKey()
  final String diagnosis;
  @override
  @JsonKey()
  final String alert;
  final List<String> _allergies;
  @override
  @JsonKey()
  List<String> get allergies {
    if (_allergies is EqualUnmodifiableListView) return _allergies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allergies);
  }

  @override
  String toString() {
    return 'Patient(name: $name, id: $id, type: $type, ward: $ward, ageGender: $ageGender, admissionDate: $admissionDate, doctor: $doctor, attendingDoctor: $attendingDoctor, diagnosis: $diagnosis, alert: $alert, allergies: $allergies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.ward, ward) || other.ward == ward) &&
            (identical(other.ageGender, ageGender) ||
                other.ageGender == ageGender) &&
            (identical(other.admissionDate, admissionDate) ||
                other.admissionDate == admissionDate) &&
            (identical(other.doctor, doctor) || other.doctor == doctor) &&
            (identical(other.attendingDoctor, attendingDoctor) ||
                other.attendingDoctor == attendingDoctor) &&
            (identical(other.diagnosis, diagnosis) ||
                other.diagnosis == diagnosis) &&
            (identical(other.alert, alert) || other.alert == alert) &&
            const DeepCollectionEquality()
                .equals(other._allergies, _allergies));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      id,
      type,
      ward,
      ageGender,
      admissionDate,
      doctor,
      attendingDoctor,
      diagnosis,
      alert,
      const DeepCollectionEquality().hash(_allergies));

  /// Create a copy of Patient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientImplCopyWith<_$PatientImpl> get copyWith =>
      __$$PatientImplCopyWithImpl<_$PatientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientImplToJson(
      this,
    );
  }
}

abstract class _Patient implements Patient {
  const factory _Patient(
      {final String name,
      final String id,
      final String type,
      final String ward,
      final String ageGender,
      final String admissionDate,
      final String doctor,
      final String attendingDoctor,
      final String diagnosis,
      final String alert,
      final List<String> allergies}) = _$PatientImpl;

  factory _Patient.fromJson(Map<String, dynamic> json) = _$PatientImpl.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  String get type;
  @override
  String get ward;
  @override
  String get ageGender;
  @override
  String get admissionDate;
  @override
  String get doctor;
  @override
  String get attendingDoctor;
  @override
  String get diagnosis;
  @override
  String get alert;
  @override
  List<String> get allergies;

  /// Create a copy of Patient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatientImplCopyWith<_$PatientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
