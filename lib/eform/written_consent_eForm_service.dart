import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_exe/model/patient_info_response.dart';
import 'package:flutter_exe/model/written_consent_data.dart';

class WrittenConsentEFormService {
   static final platform = MethodChannel("com.example.consent5/kmiPlugin");

  static void openEForm({
    required WrittenConsentData openConsentData,
    required PatientInfoResultData patientData,
    required String userId,
    required BuildContext context,
  }) {
    // 동의서 선택 시 동작
    print(openConsentData.toString());
    String consentType = 'temp';
    String korConsentType = '';

    List<Map<String, String>> saveConsent = [
      {
        'ConsentMstRid': openConsentData.consentMstRid.toString(),
        'FormCd': openConsentData.formCd.toString(),
        'FormId': openConsentData.formId.toString(),
        'FormVersion': openConsentData.formId.toString(),
        'FormRid': openConsentData.formRid.toString(),
        'FormGuid': openConsentData.formGuid.toString(),
      }
    ];
    // 환자 상세정보
    Map<String, dynamic> params = {
      'detail': patientData.toJson(),
      'params': userId,
      // 'params': userData.toJson()
    }; // PatientModel을 JSON으로 변환

    if (openConsentData.consentState == 'ELECTR_CMP') {
      consentType = 'end';
    }

    if (consentType == 'temp') {
      korConsentType = '임시저장';
    } else {
      korConsentType = '인증저장';
    }

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text('${openConsentData.consentName.toString()} 서식을 열겠습니까?'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                print('consent INFO : ${jsonEncode(saveConsent)}');
                print('param INFO : ${jsonEncode(params)}');
                // 동의서 열기
                platform.invokeMethod('openEForm', {
                  'type': consentType,
                  'consents': jsonEncode(saveConsent),
                  'params': jsonEncode(params),
                });
              },
              child: Text('확인'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('취소'),
            ),
          ],
        );
      },
    );
  }
}
