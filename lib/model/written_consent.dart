class WrittenConsentData {
  final String type;
  final String date;
  final String name;
  final String id;

  const WrittenConsentData({
    required this.type,
    required this.date,
    required this.name,
    required this.id,
  });

  factory WrittenConsentData.fromJson(Map<String, String> json) {
    return WrittenConsentData(
      type: json['type'] ?? '',
      date: json['date'] ?? '',
      name: json['name'] ?? '',
      id: json['id'] ?? '',
    );
  }
} 