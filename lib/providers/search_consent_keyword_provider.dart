import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchConsentKeywordProvider = StateNotifierProvider<SearchConsentKeywordNotifier, String>(
  (ref) => SearchConsentKeywordNotifier(),
);

// 2. StateNotifier 정의
class SearchConsentKeywordNotifier extends StateNotifier<String> {
  SearchConsentKeywordNotifier() : super('');

  void update(String value) {
    state = value;
  }

  void clear() {
    state = '';
  }
}
