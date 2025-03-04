import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/components/main/PatientInfo.dart';
import 'package:flutter_exe/components/main/PrescriptionConsent.dart';
import 'package:flutter_exe/components/main/WrittenConsent.dart';

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {  
    return Container(
      height: MediaQuery.of(context).size.height - 100,
      color: AppColors.blue50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: PatientInfo(),
            ),
          ),
          SizedBox(width: 20),
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