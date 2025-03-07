import 'package:freezed_annotation/freezed_annotation.dart';

part 'writtenscription_consent_data.freezed.dart';
part 'writtenscription_consent_data.g.dart';

@freezed
class WrittenConsentData with _$WrittenConsentData {
  const factory WrittenConsentData({
    @Default('') String type,
    @Default('') String date,
    @Default('') String name,
  }) = _WrittenConsentData;

  factory WrittenConsentData.fromJson(Map<String, dynamic> json) => _$WrittenConsentDataFromJson(json);
}


