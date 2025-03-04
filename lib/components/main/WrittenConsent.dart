import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';

const _patientData = [
  {
    'id' : '1',
    'name' : '제왕절개술 동의서'
  },
  {
    'id' : '2',
    'name' : '척추 신경 차단술 동의서'
  }
];

class WrittenConsent extends StatelessWidget {
  const WrittenConsent({super.key});

  @override
  Widget build(BuildContext context) {  
    return Container(
      color: AppColors.blue50,
      child: Column(
          children: [
            Expanded( // Container를 Expanded로 감싸서 최대 높이 사용
              child: Container(
                margin: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade200), // 테두리 추가
                ),
                // Container의 높이를 최대한 늘리기 위해 Expanded 사용
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border(
                            bottom: BorderSide(color: Colors.grey.shade200),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(vertical: 16.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.grey.shade200,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              child: const Text(
                                '작성동의서',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            ListView(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              padding: const EdgeInsets.only(bottom: 24),
                              children: _patientData.map((patient) => 
                                Text(patient['name'] ?? '', style: const TextStyle(fontSize: 12))
                              ).toList(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}

