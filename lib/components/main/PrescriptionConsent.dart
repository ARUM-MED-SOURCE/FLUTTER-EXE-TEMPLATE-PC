import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/components/common/container/Info.dart';
import 'package:flutter_exe/components/common/container/InfoCard.dart';
import 'package:flutter_exe/components/common/container/InfoHeader.dart';
import 'package:flutter_exe/components/common/container/InfoList.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';
import 'package:flutter_exe/providers/selected_consents_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_exe/utils/dummy_data.dart';
import 'package:flutter_exe/model/prescription_consent_data.dart';
class PrescriptionConsent extends Info {
  PrescriptionConsent({super.key}) : super(
    card: InfoCard(
      header: _PrescriptionConsentHeader(title: '처방동의서'),
      body: _PrescriptionConsentList(
        consents: prescriptionConsentData.map(PrescriptionConsentData.fromJson).toList(),
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

class _PrescriptionConsentList extends InfoList<PrescriptionConsentData> {
  final List<PrescriptionConsentData> consents;
  const _PrescriptionConsentList({
    required this.consents,
    super.key,
  }) : super(items: consents);

  @override
  Widget build(BuildContext context) {
    if (consents.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (consents.isEmpty) {  
      return const Center(
        child: Text(
          '처방동의서가 없습니다.',
          style: TextStyle(
            color: AppColors.gray500,
            fontSize: 14,
          ),
        ),
      );
    }

    return super.build(context);
  }
  Widget buildItem(PrescriptionConsentData consent) {
    return Consumer(
      builder: (context, ref, _) {
        return CheckableConsentItem(
          name: consent.name,
          id: consent.id,
          isSelected: ref.watch(selectedConsentsProvider).contains(consent.id),
          onSelected: () {
            final notifier = ref.read(selectedConsentsProvider.notifier);
            notifier.toggleConsent(consent.id);
          },
        );
      },
    );
  }
}