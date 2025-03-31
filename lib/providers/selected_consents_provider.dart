import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedConsentsProvider = StateNotifierProvider<SelectedConsentsNotifier, Set<String>>((ref) {
  return SelectedConsentsNotifier();
});

class SelectedConsentsNotifier extends StateNotifier<Set<String>> {
  SelectedConsentsNotifier() : super({});

  void toggleConsent(String id) {
    if (state.contains(id)) {
      state = Set.from(state)..remove(id);
    } else {
      state = Set.from(state)..add(id);
    }
  }
}