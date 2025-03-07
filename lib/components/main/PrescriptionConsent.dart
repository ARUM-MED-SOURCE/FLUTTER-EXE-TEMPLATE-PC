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
  final Set<String> selectedConsents = {};

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blue50,
      padding: const EdgeInsets.all(8.0),
      child: PrescriptionConsentCard(
        header: const PrescriptionConsentHeader(title: '처방동의서'),
        body: PrescriptionConsentList(
          consents: _consentData,
          selectedConsents: selectedConsents,
          onConsentSelected: (String id) {
            setState(() {
              if (selectedConsents.contains(id)) {
                selectedConsents.remove(id);
              } else {
                selectedConsents.add(id);
              }
            });
          },
        ),
      ),
    );
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
  const PrescriptionConsentHeader({
    required String title,
    super.key,
  }) : super(title: title);
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


 