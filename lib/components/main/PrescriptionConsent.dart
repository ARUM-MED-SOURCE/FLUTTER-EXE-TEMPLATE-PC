import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:intl/intl.dart';
import 'package:flutter_exe/components/common/InfoCard.dart';
import 'package:flutter_exe/components/common/InfoHeader.dart';
import 'package:flutter_exe/components/common/InfoList.dart';
import 'package:flutter_exe/components/common/DatePickerField.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';

class PrescriptionConsent extends StatefulWidget {
  const PrescriptionConsent({super.key});

  @override
  State<PrescriptionConsent> createState() => _PrescriptionConsentState();
}

class _PrescriptionConsentState extends State<PrescriptionConsent> {
  DateTime? selectedDate = DateTime.now();
  final DateFormat dateFormat = DateFormat('yyyy-MM-dd', 'ko_KR');
  final Set<String> selectedConsents = {};

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blue50,
      padding: const EdgeInsets.all(8.0),
      child: PrescriptionConsentCard(
        header: PrescriptionConsentHeader(
          title: '처방동의서',
          selectedDate: selectedDate,
          dateFormat: dateFormat,
          onDateSelected: _selectDate,
        ),
        body: PrescriptionConsentList(
          consents: _consentData,
          selectedConsents: selectedConsents,
          onConsentSelected: (consentId) {
            setState(() {
              if (selectedConsents.contains(consentId)) {
                selectedConsents.remove(consentId);
              } else {
                selectedConsents.add(consentId);
              }
            });
          },
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2030, 12, 31),
      locale: const Locale('ko', 'KR'),
    );
    if (picked != null) {
      setState(() => selectedDate = picked);
    }
  }
}

class PrescriptionConsentCard extends InfoCard {
  const PrescriptionConsentCard({
    required Widget header,
    required Widget body,
    super.key,
  }) : super(header: header, body: body);
}

class PrescriptionConsentHeader extends InfoHeader {
  final DateTime? selectedDate;
  final DateFormat dateFormat;
  final Function(BuildContext) onDateSelected;

  const PrescriptionConsentHeader({
    required String title,
    required this.selectedDate,
    required this.dateFormat,
    required this.onDateSelected,
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
          DatePickerField(
            selectedDate: selectedDate,
            dateFormat: dateFormat,
            onDateSelected: onDateSelected,
            label: '처방일',
          ),
        ],
      ),
    );
  }
}

class PrescriptionConsentList extends InfoList<Map<String, String>> {
  final Set<String> selectedConsents;
  final Function(String) onConsentSelected;

  const PrescriptionConsentList({
    required List<Map<String, String>> consents,
    required this.selectedConsents,
    required this.onConsentSelected,
    super.key,
  }) : super(items: consents);

  @override
  Widget buildItem(Map<String, String> consent) {
    return CheckableConsentItem(
      name: consent['name'] ?? '',
      id: consent['id'] ?? '',
      isSelected: selectedConsents.contains(consent['id']),
      onSelected: () => onConsentSelected(consent['id']!),
    );
  }
}

const _consentData = [
  {
    'id': '1',
    'name': '제왕절개술 동의서'
  },
  {
    'id': '2',
    'name': '척추 신경 차단술 동의서'
  },
  {
    'id': '3',
    'name': '척추 신경 차단술 동의서'
  },
  {
    'id': '4',
    'name': '척추 신경 차단술 동의서'
  },
  {
    'id': '5',
    'name': '척추 신경 차단술 동의서'
  },
  {
    'id': '6',
    'name': '척추 신경 차단술 동의서'
  },
];


 