import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';
import 'package:flutter_exe/model/prescription_consent_data.dart';
import 'package:flutter_exe/providers/selected_consents_provider.dart';
import 'package:flutter_list_ui/flutter_list_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_exe/dataloaders/prescription_consent_dataloader.dart';

class PrescriptionConsent extends ConsumerWidget {
  const PrescriptionConsent({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prescriptionConsentData =
        ref.watch(prescriptionConsentDataLoaderProvider);

    return prescriptionConsentData.when(
        data: (response) => Info(
              card: InfoCard(
                header: InfoHeader(
                  title: '처방동의서',
                  titleStyle: Theme.of(context).textTheme.titleLarge,
                ),
                body: InfoList<PrescriptionConsentData>(
                  shrinkWrap: false,
                  physics: const BouncingScrollPhysics(),
                  items: response?.resultData ?? [],
                  buildItem: (prescription) => Consumer(
                    builder: (context, ref, _) {
                      return CheckableConsentItem(
                        name: prescription.formName ?? "",
                        id: prescription.formId.toString(),
                        isSelected: ref
                            .watch(selectedConsentsProvider)
                            .contains(prescription.formId.toString()),
                        onSelected: () {
                          final notifier =
                              ref.read(selectedConsentsProvider.notifier);
                          notifier
                              .toggleConsent(prescription.formId.toString());
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
            ),
        error: (error, stack) => Text(error.toString()),
        loading: () => const Center(child: CircularProgressIndicator()));
  }
}
