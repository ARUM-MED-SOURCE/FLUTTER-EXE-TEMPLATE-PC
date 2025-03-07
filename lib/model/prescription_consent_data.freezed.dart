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

PrescriptionConsentData _$PrescriptionConsentDataFromJson(
    Map<String, dynamic> json) {
  return _PrescriptionConsentData.fromJson(json);
}

/// @nodoc
mixin _$PrescriptionConsentData {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

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
  $Res call({String id, String name});
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
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({String id, String name});
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
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$PrescriptionConsentDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrescriptionConsentDataImpl implements _PrescriptionConsentData {
  const _$PrescriptionConsentDataImpl({this.id = '', this.name = ''});

  factory _$PrescriptionConsentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrescriptionConsentDataImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'PrescriptionConsentData(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrescriptionConsentDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

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
  const factory _PrescriptionConsentData({final String id, final String name}) =
      _$PrescriptionConsentDataImpl;

  factory _PrescriptionConsentData.fromJson(Map<String, dynamic> json) =
      _$PrescriptionConsentDataImpl.fromJson;

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of PrescriptionConsentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrescriptionConsentDataImplCopyWith<_$PrescriptionConsentDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
