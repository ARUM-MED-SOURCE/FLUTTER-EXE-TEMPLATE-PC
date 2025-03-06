class Patient {
  final String name;
  final String id;
  final String type;
  final String ward;
  final String ageGender;
  final String admissionDate;
  final String doctor;
  final String attendingDoctor;
  final String diagnosis;
  final String alert;
  final List<String> allergies;

  const Patient({
    required this.name,
    required this.id,
    required this.type,
    required this.ward,
    required this.ageGender,
    required this.admissionDate,
    required this.doctor,
    required this.attendingDoctor,
    required this.diagnosis,
    required this.alert,
    this.allergies = const [],
  });

  factory Patient.fromJson(Map<String, dynamic> json) {
    return Patient(
      name: json['name'] ?? '',
      id: json['id'] ?? '',
      type: json['type'] ?? '',
      ward: json['ward'] ?? '',
      ageGender: json['ageGender'] ?? '',
      admissionDate: json['admissionDate'] ?? '',
      doctor: json['doctor'] ?? '',
      attendingDoctor: json['attendingDoctor'] ?? '',
      diagnosis: json['diagnosis'] ?? '',
      alert: json['alert'] ?? '',
    );
  }
}