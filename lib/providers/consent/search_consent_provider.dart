import 'package:flutter_exe/model/common/consent_list_model.dart';
import 'package:flutter_exe/model/common/conset_model.dart';
import 'package:flutter_exe/providers/consent/consent_list_provider.dart';
import 'package:flutter_exe/repositories/consent/prescription_consent_repository.dart';
import 'package:flutter_exe/repositories/consent/search_consent_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchConsentProvider = StateNotifierProvider<
    SearchConsentStateNotifier, ConsentListBase>((ref) {
  final repository = ref.watch(searchConsentRepositoryProvider);
  return SearchConsentStateNotifier(repository: repository);
});

class SearchConsentStateNotifier
    extends ConsentListProvider<ConsentModel, SearchConsentRepository> {
  SearchConsentStateNotifier({required super.repository});
}
