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
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blue50,
      padding: const EdgeInsets.all(8.0),
      child: WrittenConsentCard(
        header: const WrittenConsentHeader(title: '작성동의서'),
        body: WrittenConsentList(consents: _consentData),
      ),
    );
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

  const WrittenConsentHeader({
    required String title,
    super.key,
  }) : super(title: title);
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


 