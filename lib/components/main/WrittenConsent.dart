import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/components/common/container/Info.dart';
import 'package:flutter_exe/components/common/container/InfoCard.dart';
import 'package:flutter_exe/components/common/container/InfoHeader.dart';
import 'package:flutter_exe/components/common/container/InfoList.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';

class WrittenConsent extends Info {
  const WrittenConsent({super.key}) : super(
    card: const _WrittenConsentCard(
        header: _WrittenConsentHeader(title: '작성동의서'),
        body: _WrittenConsentList(
          consents: _consentData,
        ),
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
  final List<Map<String, String>>? consents;
  const _WrittenConsentList({
    this.consents,
    super.key,
  }) : super(items: const []);

  @override
  List<Map<String, String>> get items => consents ?? const [];

  @override
  Widget build(BuildContext context) {
    if (consents == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (consents!.isEmpty) {
      return const Center(
        child: Text('작성동의서가 없습니다.',
          style: TextStyle(
            color: AppColors.gray500,
            fontSize: 14,
          ),
        ),
      );
    }

    return super.build(context);
  }

  Widget buildItem(Map<String, String> consent) {
    return TaggedConsentItem(
      type: consent['type'] ?? '',
      date: consent['date'] ?? '',
      name: consent['name'] ?? '',
      id: '',
    );
  }
}

const _consentData = <Map<String, String>>[
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


 