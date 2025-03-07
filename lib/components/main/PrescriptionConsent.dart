import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/container/Info.dart';
import 'package:flutter_exe/components/common/container/InfoCard.dart';
import 'package:flutter_exe/components/common/container/InfoHeader.dart';
import 'package:flutter_exe/components/common/container/InfoList.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PrescriptionConsent extends Info {
  PrescriptionConsent({super.key}) : super(
    card: InfoCard(
      header: _PrescriptionConsentHeader(title: '처방동의서'),
      body: _PrescriptionConsentList(
        consents: _consentData,
      ),
    ),
  );
}

class _PrescriptionConsentCard extends InfoCard {
  const _PrescriptionConsentCard({
    required InfoHeader header,
    required InfoList body,
    super.key,
  }) : super(header: header, body: body);
}

class _PrescriptionConsentHeader extends InfoHeader {
  const _PrescriptionConsentHeader({
    required String title,
    super.key,
  }) : super(title: title);
}

class _PrescriptionConsentList extends InfoList<Map<String, String>> {
  const _PrescriptionConsentList({
    required List<Map<String, String>> consents,
    super.key,
  }) : super(items: consents);

  @override
  Widget buildItem(Map<String, String> consent) {
    return Consumer(
      builder: (context, ref, _) {
        return CheckableConsentItem(
          name: consent['name'] ?? '',
          id: consent['id'] ?? '',
          isSelected: ref.watch(selectedConsentsProvider).contains(consent['id']),
          onSelected: () {
            final notifier = ref.read(selectedConsentsProvider.notifier);
            notifier.toggleConsent(consent['id']!);
          },
        );
      },
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

// 상태 관리를 위한 Riverpod 프로바이더 추가
final selectedConsentsProvider = StateNotifierProvider<SelectedConsentsNotifier, Set<String>>((ref) {
  return SelectedConsentsNotifier();
});

class SelectedConsentsNotifier extends StateNotifier<Set<String>> {
  SelectedConsentsNotifier() : super({});

  void toggleConsent(String id) {
    if (state.contains(id)) {
      state = Set.from(state)..remove(id);
    } else {
      state = Set.from(state)..add(id);
    }
  }
}


 