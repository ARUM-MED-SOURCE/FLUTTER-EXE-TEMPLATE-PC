import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:intl/intl.dart';
import 'package:flutter_exe/components/common/InfoCard.dart';
import 'package:flutter_exe/components/common/InfoHeader.dart';
import 'package:flutter_exe/components/common/InfoList.dart';
import 'package:flutter_exe/components/common/DatePickerField.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';

class WrittenConsent extends StatefulWidget {
  const WrittenConsent({super.key});

  @override
  State<WrittenConsent> createState() => _WrittenConsentState();
}

class _WrittenConsentState extends State<WrittenConsent> {
  DateTime? startDate = DateTime.now();
  DateTime? endDate = DateTime.now();
  final DateFormat dateFormat = DateFormat('yyyy-MM-dd', 'ko_KR');

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blue50,
      padding: const EdgeInsets.all(8.0),
      child: WrittenConsentCard(
        header: WrittenConsentHeader(
          title: '작성동의서',
          startDate: startDate,
          endDate: endDate,
          dateFormat: dateFormat,
          onStartDateSelected: _selectStartDate,
          onEndDateSelected: _selectEndDate,
        ),
        body: WrittenConsentList(consents: _consentData),
      ),
    );
  }

  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: startDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2030, 12, 31),
      locale: const Locale('ko', 'KR'),
    );
    if (picked != null) {
      setState(() => startDate = picked);
    }
  }

  Future<void> _selectEndDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: endDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2030, 12, 31),
      locale: const Locale('ko', 'KR'),
    );
    if (picked != null) {
      setState(() => endDate = picked);
    }
  }
}

class WrittenConsentCard extends InfoCard {
  const WrittenConsentCard({
    required Widget header,
    required Widget body,
    super.key,
  }) : super(header: header, body: body);
}

class WrittenConsentHeader extends InfoHeader {
  final DateTime? startDate;
  final DateTime? endDate;
  final DateFormat dateFormat;
  final Function(BuildContext) onStartDateSelected;
  final Function(BuildContext) onEndDateSelected;

  const WrittenConsentHeader({
    required String title,
    required this.startDate,
    required this.endDate,
    required this.dateFormat,
    required this.onStartDateSelected,
    required this.onEndDateSelected,
    super.key,
  }) : super(title: title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.gray100),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          DateRangePickerField(
            startDate: startDate,
            endDate: endDate,
            dateFormat: dateFormat,
            onStartDateSelected: onStartDateSelected,
            onEndDateSelected: onEndDateSelected,
          ),
        ],
      ),
    );
  }
}

class WrittenConsentList extends InfoList<Map<String, String>> {
  const WrittenConsentList({
    required List<Map<String, String>> consents,
    super.key,
  }) : super(items: consents);

  @override
  Widget buildItem(Map<String, String> consent) {
    return TaggedConsentItem(
      type: consent['type'] ?? '',
      date: consent['date'] ?? '',
      name: consent['name'] ?? '',
      id: '',
    );
  }
}

const _consentData = [
  {
    'type': '임시',
    'date': '2025-03-04',
    'name': '제왕절개술 동의서'
  },
  {
    'type': '임시',
    'date': '2025-03-04',
    'name': '척추 신경 차단술 동의서'
  },
  {
    'type': '임시',
    'date': '2025-03-04',
    'name': '척추 신경 차단술 동의서'
  },
  {
    'type': '임시',
    'date': '2025-03-04',
    'name': '척추 신경 차단술 동의서'
  },
  {
    'type': '임시',
    'date': '2025-03-04',
    'name': '척추 신경 차단술 동의서'
  },
  {
    'type': '임시',
    'date': '2025-03-04',
    'name': '척추 신경 차단술 동의서'
  },
];


 