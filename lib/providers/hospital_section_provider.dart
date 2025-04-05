import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_exe/components/navigation/enum/HospitalSection.dart';

final hospitalSectionProvider = StateProvider<HospitalSection>((ref) {
  return HospitalSection.inpatient;
}); 