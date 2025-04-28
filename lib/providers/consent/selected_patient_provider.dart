import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_exe/model/patient_info_response.dart';

final selectedPatientProvider = StateNotifierProvider<SelectedPatientNotifier, PatientInfoResultData?>((ref) {
  return SelectedPatientNotifier();
});

class SelectedPatientNotifier extends StateNotifier<PatientInfoResultData?> {
  SelectedPatientNotifier() : super(null);

  void selectPatient(PatientInfoResultData patient) {
    state = patient;
  }

  void clearSelection() {
    state = null;
  }
} 