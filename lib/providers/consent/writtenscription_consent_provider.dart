import 'package:flutter_exe/model/common/consent_list_model.dart';
import 'package:flutter_exe/model/common/conset_model.dart';
import 'package:flutter_exe/providers/consent/consent_list_provider.dart';
import 'package:flutter_exe/repositories/consent/written_consent_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final writtenscriptionConsentProvider = StateNotifierProvider<
    WrittenscriptionConsentStateNotifier, ConsentListBase>((ref) {
  final repository = ref.watch(writtenConsentRepositoryProvider);
  return WrittenscriptionConsentStateNotifier(repository: repository);
});

class WrittenscriptionConsentStateNotifier
    extends ConsentListProvider<ConsentModel, WrittenConsentRepository> {
  WrittenscriptionConsentStateNotifier({required super.repository});
}
