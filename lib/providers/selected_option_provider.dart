import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedOptionProvider = StateNotifierProvider<SelectedOptionNotifier, String>((ref) => SelectedOptionNotifier());

class SelectedOptionNotifier extends StateNotifier<String> {
  SelectedOptionNotifier() : super('all');

  void setOption(String option) {
    state = option;
  }
}
