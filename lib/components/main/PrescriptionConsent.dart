import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:intl/intl.dart';

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

class PrescriptionConsentCard extends StatelessWidget {
  final Widget header;
  final Widget body;

  const PrescriptionConsentCard({
    required this.header,
    required this.body,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.gray100.withOpacity(0.5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [header, body],
      ),
    );
  }
}

class PrescriptionConsentHeader extends StatelessWidget {
  final DateTime? selectedDate;
  final DateFormat dateFormat;
  final Function(BuildContext) onDateSelected;

  const PrescriptionConsentHeader({
    required this.selectedDate,
    required this.dateFormat,
    required this.onDateSelected,
    super.key,
  });

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
          const Text(
            '처방동의서',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text('처방일', style: TextStyle(fontSize: 14, color: AppColors.gray500)),
              const SizedBox(width: 8),
              _buildDatePicker(context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDatePicker(BuildContext context) {
    return GestureDetector(
      onTap: () => onDateSelected(context),
      child: Container(
        width: 150,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.gray100),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              dateFormat.format(selectedDate ?? DateTime.now()),
              style: const TextStyle(fontSize: 14),
            ),
            const Icon(
              Icons.calendar_today,
              size: 16,
              color: AppColors.gray200,
            ),
          ],
        ),
      ),
    );
  }
}

class PrescriptionConsentList extends StatelessWidget {
  final List<Map<String, String>> consents;
  final Set<String> selectedConsents;
  final Function(String) onConsentSelected;

  const PrescriptionConsentList({
    required this.consents,
    required this.selectedConsents,
    required this.onConsentSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView.builder(
          itemCount: consents.length,
          itemBuilder: (context, index) {
            final consent = consents[index];
            return PrescriptionConsentItem(
              name: consent['name'] ?? '',
              id: consent['id'] ?? '',
              isSelected: selectedConsents.contains(consent['id']),
              onSelected: () => onConsentSelected(consent['id']!),
            );
          },
        ),
      ),
    );
  }
}

class PrescriptionConsentItem extends StatelessWidget {
  final String name;
  final String id;
  final bool isSelected;
  final VoidCallback onSelected;

  const PrescriptionConsentItem({
    required this.name,
    required this.id,
    required this.isSelected,
    required this.onSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.gray100),
        ),
      ),
      child: Row(
        children: [
          Text('$id.', style: const TextStyle(fontSize: 14)),
          Checkbox(
            value: isSelected,
            onChanged: (_) => onSelected(),
            side: BorderSide(color: AppColors.gray150),
          ),
          Expanded(
            child: Text(
              name,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
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


 