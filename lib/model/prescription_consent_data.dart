import 'package:freezed_annotation/freezed_annotation.dart';

part 'prescription_consent_data.freezed.dart';
part 'prescription_consent_data.g.dart';

@freezed
class PrescriptionConsentData with _$PrescriptionConsentData {
  const factory PrescriptionConsentData({
    @Default('') String id,
    @Default('') String name,
  }) = _PrescriptionConsentData;

  factory PrescriptionConsentData.fromJson(Map<String, dynamic> json) => _$PrescriptionConsentDataFromJson(json);
}
