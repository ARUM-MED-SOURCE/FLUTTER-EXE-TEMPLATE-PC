import 'package:flutter_exe/constants/index.dart';

enum HospitalSection {
  inpatient('입원', ApiMethod.inpatient),
  outpatient('외래', ApiMethod.outpatient),
  emergency('응급', ApiMethod.emergency),
  surgery('수술', ApiMethod.surgery),
  laboratory('검사실', ApiMethod.laboratory),
  search('검색', ApiMethod.search),
  quickView('빠른조회', ApiMethod.quickView);

  final String label;
  final String methodName;
  const HospitalSection(this.label, this.methodName);
}