enum HospitalSection {
  inpatient('입원'),
  outpatient('외래'),
  emergency('응급'),
  surgery('수술'),
  laboratory('검사실'),
  search('검색'),
  quickView('빠른조회');

  final String label;
  const HospitalSection(this.label);
}