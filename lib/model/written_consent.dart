import 'package:freezed_annotation/freezed_annotation.dart';

part 'written_consent.freezed.dart';
part 'written_consent.g.dart';

@freezed
class WrittenConsentData with _$WrittenConsentData {
  const factory WrittenConsentData({
    @Default('') String type,
    @Default('') String date,
    @Default('') String name,
    @Default('') String id,
  }) = _WrittenConsentData;

  factory WrittenConsentData.fromJson(Map<String, dynamic> json) => _$WrittenConsentDataFromJson(json);
} 