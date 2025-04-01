import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';
import 'package:flutter_exe/model/prescription_consent_data.dart';
import 'package:flutter_exe/providers/selected_consents_provider.dart';
import 'package:flutter_list_ui/flutter_list_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PrescriptionConsent extends StatelessWidget {
  final List<PrescriptionConsentData> prescriptions;

  const PrescriptionConsent({
    super.key,
    required this.prescriptions,
  });

  @override
  Widget build(BuildContext context) {
    return Info(
      card: InfoCard(
        header: InfoHeader(
          title: '처방동의서',
          titleStyle: Theme.of(context).textTheme.titleLarge,
        ),
        body:  InfoList<PrescriptionConsentData>(
            shrinkWrap: false,
            physics: const BouncingScrollPhysics(),
            items: prescriptions,
            buildItem: (prescription) => Consumer(
            builder: (context, ref, _) {
              return CheckableConsentItem(
                name: prescription.name,
                id: prescription.id,
                isSelected: ref
                    .watch(selectedConsentsProvider)
                    .contains(prescription.id),
                onSelected: () {
                  final notifier = ref.read(selectedConsentsProvider.notifier);
                  notifier.toggleConsent(prescription.id);
                },
              );
            },
          ),
          backgroundColor: Colors.white,
          contentPadding: EdgeInsets.zero,
        ),
        backgroundColor: Colors.white,
        isRound: true,
        showBorder: false,
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
      ),
    );
  }
}
