import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';
import 'package:flutter_exe/components/common/consent_list_view.dart';
import 'package:flutter_exe/model/prescription_consent_data.dart';
import 'package:flutter_exe/providers/consent/prescription_consent_provider.dart';

class PrescriptionConsent extends StatelessWidget {
  const PrescriptionConsent({super.key});

  @override
  Widget build(BuildContext context) {
    return ConsentListView(
      provider: prescriptionConsentProvider,
      itemBuilder: <PrescriptionConsentData>(_, index, model) {
        return GestureDetector(
          onTap: () {},
          child: PrescriptionConsentItem.fromModel(model: model),
        );
      },
      title: '처방동의서',
    );
  }
}

class PrescriptionConsentItem extends StatelessWidget {
  final PrescriptionConsentData model;

  const PrescriptionConsentItem({
    super.key,
    required this.model,
  });

  factory PrescriptionConsentItem.fromModel({
    required PrescriptionConsentData model,
  }) {
    return PrescriptionConsentItem(model: model);
  }

  @override
  Widget build(BuildContext context) {
    return CheckableConsentItem(
      name: model.formName ?? "",
      id: model.formId.toString(),
      isSelected: true,
      onSelected: () {},
    );
  }
}
/*return CheckableConsentItem(
isSelected: ref
    .watch(selectedConsentsProvider)
    .contains(prescription.formId.toString()),
onSelected: () {
final notifier = ref.read(selectedConsentsProvider.notifier);
notifier.toggleConsent(prescription.formId.toString());
},
);*/
