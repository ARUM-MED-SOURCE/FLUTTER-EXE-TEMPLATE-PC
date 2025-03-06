import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:intl/intl.dart';

class WrittenConsent extends StatefulWidget {
  const WrittenConsent({super.key});

  @override
  State<WrittenConsent> createState() => _WrittenConsentState();
}

class _WrittenConsentState extends State<WrittenConsent> {
  DateTime? selectedDate = DateTime.now();
  final DateFormat dateFormat = DateFormat('yyyy-MM-dd', 'ko_KR');

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blue50,
      padding: const EdgeInsets.all(8.0),
      child: WrittenConsentCard(
        header: WrittenConsentHeader(
          selectedDate: selectedDate,
          dateFormat: dateFormat,
          onDateSelected: _selectDate,
        ),
        body: WrittenConsentList(consents: _consentData),
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

class WrittenConsentCard extends StatelessWidget {
  final Widget header;
  final Widget body;

  const WrittenConsentCard({
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

class WrittenConsentHeader extends StatelessWidget {
  final DateTime? selectedDate;
  final DateFormat dateFormat;
  final Function(BuildContext) onDateSelected;

  const WrittenConsentHeader({
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
            '작성동의서',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              _buildDatePicker(context, true),
              const SizedBox(width: 8),
              Text('~', style: TextStyle(fontSize: 14, color: AppColors.gray500)),
              const SizedBox(width: 8),
              _buildDatePicker(context, false),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDatePicker(BuildContext context, bool isStartDate) {
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

class WrittenConsentList extends StatelessWidget {
  final List<Map<String, String>> consents;

  const WrittenConsentList({
    required this.consents,
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
            return WrittenConsentItem(
              type: consent['type'] ?? '',
              date: consent['date'] ?? '',
              name: consent['name'] ?? '',
            );
          },
        ),
      ),
    );
  }
}

class WrittenConsentItem extends StatelessWidget {
  final String type;
  final String date;
  final String name;

  const WrittenConsentItem({
    required this.type,
    required this.date,
    required this.name,
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
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.blue100,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                type,
                style: const TextStyle(fontSize: 14, color: AppColors.blue300),
              ),
            ),
            const SizedBox(width: 8),
            Text('[$date]', style: const TextStyle(fontSize: 14)),
            const SizedBox(width: 8),
            Text(name, style: const TextStyle(fontSize: 14)),
          ],
        ),
      ),
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


 