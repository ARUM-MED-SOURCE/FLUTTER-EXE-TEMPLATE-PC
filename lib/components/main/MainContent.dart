import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/components/main/PatientInfo.dart';
import 'package:flutter_exe/components/main/PrescriptionConsent.dart';
import 'package:flutter_exe/components/main/WrittenConsent.dart';
import 'package:flutter_exe/model/prescription_consent_data.dart';
import 'package:flutter_exe/model/written_consent.dart';
import 'package:flutter_exe/utils/dummy_data.dart';

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blue50,
      child: Row(
        children: [
          Expanded(
            child: PatientInfo(),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: PrescriptionConsent(
                    prescriptions: prescriptionConsentData
                        .map(PrescriptionConsentData.fromJson)
                        .toList(),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: WrittenConsent(
                    consents: writtenConsentData
                        .map(WrittenConsentData.fromJson)
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
