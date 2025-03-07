// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'writtenscription_consent_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WrittenConsentData _$WrittenConsentDataFromJson(Map<String, dynamic> json) {
  return _WrittenConsentData.fromJson(json);
}

/// @nodoc
mixin _$WrittenConsentData {
  String get type => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this WrittenConsentData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WrittenConsentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WrittenConsentDataCopyWith<WrittenConsentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WrittenConsentDataCopyWith<$Res> {
  factory $WrittenConsentDataCopyWith(
          WrittenConsentData value, $Res Function(WrittenConsentData) then) =
      _$WrittenConsentDataCopyWithImpl<$Res, WrittenConsentData>;
  @useResult
  $Res call({String type, String date, String name});
}

/// @nodoc
class _$WrittenConsentDataCopyWithImpl<$Res, $Val extends WrittenConsentData>
    implements $WrittenConsentDataCopyWith<$Res> {
  _$WrittenConsentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WrittenConsentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? date = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WrittenConsentDataImplCopyWith<$Res>
    implements $WrittenConsentDataCopyWith<$Res> {
  factory _$$WrittenConsentDataImplCopyWith(_$WrittenConsentDataImpl value,
          $Res Function(_$WrittenConsentDataImpl) then) =
      __$$WrittenConsentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String date, String name});
}

/// @nodoc
class __$$WrittenConsentDataImplCopyWithImpl<$Res>
    extends _$WrittenConsentDataCopyWithImpl<$Res, _$WrittenConsentDataImpl>
    implements _$$WrittenConsentDataImplCopyWith<$Res> {
  __$$WrittenConsentDataImplCopyWithImpl(_$WrittenConsentDataImpl _value,
      $Res Function(_$WrittenConsentDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of WrittenConsentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? date = null,
    Object? name = null,
  }) {
    return _then(_$WrittenConsentDataImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
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
class _$WrittenConsentDataImpl implements _WrittenConsentData {
  const _$WrittenConsentDataImpl(
      {this.type = '', this.date = '', this.name = ''});

  factory _$WrittenConsentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$WrittenConsentDataImplFromJson(json);

  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String date;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'WrittenConsentData(type: $type, date: $date, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WrittenConsentDataImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, date, name);

  /// Create a copy of WrittenConsentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WrittenConsentDataImplCopyWith<_$WrittenConsentDataImpl> get copyWith =>
      __$$WrittenConsentDataImplCopyWithImpl<_$WrittenConsentDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WrittenConsentDataImplToJson(
      this,
    );
  }
}

abstract class _WrittenConsentData implements WrittenConsentData {
  const factory _WrittenConsentData(
      {final String type,
      final String date,
      final String name}) = _$WrittenConsentDataImpl;

  factory _WrittenConsentData.fromJson(Map<String, dynamic> json) =
      _$WrittenConsentDataImpl.fromJson;

  @override
  String get type;
  @override
  String get date;
  @override
  String get name;

  /// Create a copy of WrittenConsentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WrittenConsentDataImplCopyWith<_$WrittenConsentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
