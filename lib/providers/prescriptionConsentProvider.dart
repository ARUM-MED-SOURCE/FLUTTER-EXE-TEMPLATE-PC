import 'package:flutter_riverpod/flutter_riverpod.dart';

final prescriptionConsentProvider = StateNotifierProvider<PrescriptionConsentNotifier, Set<String>>((ref) {
  return PrescriptionConsentNotifier();
});

class PrescriptionConsentNotifier extends StateNotifier<Set<String>> {
  PrescriptionConsentNotifier() : super({});

void toggleConsent(String consentId) {
    if (state.contains(consentId)) {
      state = Set.from(state)..remove(consentId);
    } else {
      state = Set.from(state)..add(consentId);
    }
  }
}
