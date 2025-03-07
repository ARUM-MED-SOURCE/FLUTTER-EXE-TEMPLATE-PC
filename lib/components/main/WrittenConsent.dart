import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/container/Info.dart';
import 'package:flutter_exe/components/common/container/InfoCard.dart';
import 'package:flutter_exe/components/common/container/InfoHeader.dart';
import 'package:flutter_exe/components/common/container/InfoList.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';

class WrittenConsent extends Info {
  const WrittenConsent({super.key}) : super(
    card: const _WrittenConsentCard(
        header: _WrittenConsentHeader(title: '작성동의서'),
        body: _WrittenConsentList(consents: _consentData),
      ),
    );
  }

class _WrittenConsentCard extends InfoCard {
  const _WrittenConsentCard({
    required InfoHeader header,
    required InfoList body,
    super.key,
  }) : super(header: header, body: body);
}

class _WrittenConsentHeader extends InfoHeader {
  const _WrittenConsentHeader({
    required String title,
    super.key,
  }) : super(title: title);
}

class _WrittenConsentList extends InfoList<Map<String, String>> {
  const _WrittenConsentList({
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


 