import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';
import 'package:flutter_exe/components/common/consent_list_view.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/eform/written_consent_eForm_service.dart';
import 'package:flutter_exe/model/written_consent_data.dart';
import 'package:flutter_exe/providers/consent/selected_patient_provider.dart';
import 'package:flutter_exe/providers/consent/written_consent_provider.dart';
import 'package:flutter_exe/utils/time.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

final logger = Logger();

class WrittenConsent extends ConsumerWidget {
  const WrittenConsent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedPatient = ref.watch(selectedPatientProvider);

    return ConsentListView(
      title: '작성동의서',
      provider: writtenConsentProvider,
      itemBuilder: <WrittenConsentData>(_, index, model) {
        return MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              if (selectedPatient == null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('환자 정보를 먼저 선택해주세요.'),
                    backgroundColor: AppColors.red500,
                  ),
                );
                return;
              }

              logger.i("작성동의서 열기");
              WrittenConsentEFormService.openEForm(
                openConsentData: model,
                patientData: selectedPatient,
                userId: "1",
                context: context,
              );
            },
            child: WrittenConsentItem.fromModel(model: model),
          ),
        );
      },
    );
  }
}

class WrittenConsentItem extends StatelessWidget {
  final WrittenConsentData model;

  const WrittenConsentItem({
    super.key,
    required this.model,
  });

  factory WrittenConsentItem.fromModel({
    required WrittenConsentData model,
  }) {
    return WrittenConsentItem(model: model);
  }

  @override
  Widget build(BuildContext context) {
    return TaggedConsentItem(
      type: model.consentStateDisp,
      date: formatToYYYY_MM_DD(DateTime.parse(model.createDateTime)),
      name: model.consentName,
      id: model.consentMstRid.toString(),
    );
  }
}
