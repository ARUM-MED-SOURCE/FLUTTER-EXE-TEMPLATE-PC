import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_exe/components/main/header/DropdownOptions.dart';

final dropdownOptionsProvider = StateNotifierProvider<DropdownOptionsNotifier, Map<DropdownType, String>>((ref) {
  return DropdownOptionsNotifier();
});

class DropdownOptionsNotifier extends StateNotifier<Map<DropdownType, String>> {
  DropdownOptionsNotifier() : super(Map.fromEntries(
    DropdownType.values.map((type) => MapEntry(type, DropdownOptions.options[type]![0])),
  ));

  void resetToDefaults() {
    state = Map.fromEntries(
      DropdownType.values.map((type) => MapEntry(type, DropdownOptions.options[type]![0])),
    );
  }

  void setSelectedValue(DropdownType type, String value) {
    state = Map.from(state)..[type] = value;
  }

  String getSelectedValue(DropdownType type) {
    return state[type] ?? DropdownOptions.options[type]![0];
  }
} 