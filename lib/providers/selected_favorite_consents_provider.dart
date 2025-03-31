import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedFavoriteConsentsProvider = StateNotifierProvider<SelectedFavoriteConsentsNotifier, Set<String>>((ref) {
  return SelectedFavoriteConsentsNotifier();
});

class SelectedFavoriteConsentsNotifier extends StateNotifier<Set<String>> {
  SelectedFavoriteConsentsNotifier() : super({});

  void toggleConsent(String id) {
    if (state.contains(id)) {
      state = Set.from(state)..remove(id);
    } else {
      state = Set.from(state)..add(id);
    }
  }
}