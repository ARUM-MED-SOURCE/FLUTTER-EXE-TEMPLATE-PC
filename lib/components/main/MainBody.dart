import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/components/main/consent/PatientInfo.dart';
import 'package:flutter_exe/components/main/consent/PrescriptionConsent.dart';
import 'package:flutter_exe/components/main/consent/WrittenConsent.dart';
import 'package:flutter_exe/model/prescription_consent_data.dart';
import 'package:flutter_exe/utils/dummy_data.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blue50,
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: PatientInfo(),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: PrescriptionConsent(),
                ),
                Expanded(
                  flex: 1,
                  child: WrittenConsent(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
