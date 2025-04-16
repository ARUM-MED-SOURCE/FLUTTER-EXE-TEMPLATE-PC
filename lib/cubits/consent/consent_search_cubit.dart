import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'consent_search_cubit.freezed.dart';
part 'consent_search_state.dart';

@freezed
class ConsentSearchState with _$ConsentSearchState {
  const factory ConsentSearchState({
    @Default(false) bool isMyConsentOnly,
    @Default('') String employeeId,
    @Default('') String patientId,
    @Default('신경과') String department,
    @Default('병동') String ward,
    @Default('주치의') String doctor,
    @Default('전체') String visitType,
    @Default(true) bool isTemporarySaved,
    @Default(false) bool isCertifiedSaved,
    @Default(false) bool isVerbalConsent,
    @Default(false) bool isEmergencyConsent,
    DateTime? startDate,
    DateTime? endDate,
  }) = _ConsentSearchState;
}

class ConsentSearchCubit extends Cubit<ConsentSearchState> {
  ConsentSearchCubit() : super(const ConsentSearchState());

  void updateIsMyConsentOnly(bool value) {
    emit(state.copyWith(isMyConsentOnly: value));
  }

  void updateEmployeeId(String value) {
    emit(state.copyWith(employeeId: value));
  }

  void updatePatientId(String value) {
    emit(state.copyWith(patientId: value));
  }

  void updateDepartment(String value) {
    emit(state.copyWith(department: value));
  }

  void updateWard(String value) {
    emit(state.copyWith(ward: value));
  }

  void updateDoctor(String value) {
    emit(state.copyWith(doctor: value));
  }

  void updateVisitType(String value) {
    emit(state.copyWith(visitType: value));
  }

  void updateIsTemporarySaved(bool value) {
    emit(state.copyWith(isTemporarySaved: value));
  }

  void updateIsCertifiedSaved(bool value) {
    emit(state.copyWith(isCertifiedSaved: value));
  }

  void updateIsVerbalConsent(bool value) {
    emit(state.copyWith(isVerbalConsent: value));
  }

  void updateIsEmergencyConsent(bool value) {
    emit(state.copyWith(isEmergencyConsent: value));
  }

  void updateDateRange(DateTime? start, DateTime? end) {
    emit(state.copyWith(startDate: start, endDate: end));
  }

  void reset() {
    emit(const ConsentSearchState());
  }
} 