class ApiMethod {
  // user
  static const String login = 'Login';

  // consent
  static const String inpatient = 'GetInpatientSearch';
  static const String outpatient = 'GetOutpatientSearch';
  static const String emergency = 'GetEmergencyPatientSearch';
  static const String surgery = 'GetOperationSearch';
  static const String laboratory = 'GetInpatientSearch';
  static const String search = 'GetSearch';
  static const String quickView = 'GetQuickView';

  // 작성동의서
  static const String writtenConsent = 'GetConsents';
  // 처방동의서
  static const String prescriptionConsent = 'GetUnfinishedConsentSearch';

  // 동의서 검색
  static const String searchConsent = 'GetDocList';

}
