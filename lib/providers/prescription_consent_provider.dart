import 'package:flutter_exe/model/common/consent_list_model.dart';
import 'package:flutter_exe/model/common/conset_model.dart';
import 'package:flutter_exe/providers/consent_list_provider.dart';
import 'package:flutter_exe/repositories/consent/prescription_consent_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final prescriptionConsentProvider = StateNotifierProvider<
    PrescriptionConsentStateNotifier, ConsentListBase>((ref) {
  final repository = ref.watch(prescriptionConsentRepositoryProvider);
  return PrescriptionConsentStateNotifier(repository: repository);
});

class PrescriptionConsentStateNotifier
    extends ConsentListProvider<ConsentModel, PrescriptionConsentRepository> {
  PrescriptionConsentStateNotifier({required super.repository});
}
