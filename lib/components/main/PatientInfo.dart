import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';

class PatientInfo extends StatelessWidget {
  const PatientInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blue50,
      child: Column(
        children: [
          Container(
            color: AppColors.white,
            padding: EdgeInsets.zero,
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
                  ),
                  child: Column(
                    children: [
                      const Text(
                        '환자 정보',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        height: MediaQuery.of(context).size.height - 100,
                        child: ListView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          padding: const EdgeInsets.only(bottom: 24),
                          children: [
                            _buildPatientCard(
                              name: '김영진',
                              id: '00000010',
                              type: 'OS',
                              ward: 'A5 / 85',
                              ageGender: '32 / 여',
                              admissionDate: '2023/07/31 / B7 / 14',
                              doctor: '장준혁',
                              attendingDoctor: '최준영',
                              diagnosis: '발목 골절',
                              alert: 'BSA : FM90.00, 혈액형 : O+',
                            ),
                            _buildPatientCard(
                              name: '김영진',
                              id: '00000010',
                              type: 'OS',
                              ward: 'A5 / 85',
                              ageGender: '32 / 여',
                              admissionDate: '2023/07/31 / B7 / 14',
                              doctor: '장준혁',
                              attendingDoctor: '최준영',
                              diagnosis: '발목 골절',
                              alert: 'BSA : FM90.00, 혈액형 : O+',
                            ),
                            _buildPatientCard(
                              name: '김영진',
                              id: '00000010',
                              type: 'OS',
                              ward: 'A5 / 85',
                              ageGender: '32 / 여',
                              admissionDate: '2023/07/31 / B7 / 14',
                              doctor: '장준혁',
                              attendingDoctor: '최준영',
                              diagnosis: '발목 골절',
                              alert: 'BSA : FM90.00, 혈액형 : O+',
                            ),
                            _buildPatientCard(
                              name: '김영진',
                              id: '00000010',
                              type: 'OS',
                              ward: 'A5 / 85',
                              ageGender: '32 / 여',
                              admissionDate: '2023/07/31 / B7 / 14',
                              doctor: '장준혁',
                              attendingDoctor: '최준영',
                              diagnosis: '발목 골절',
                              alert: 'BSA : FM90.00, 혈액형 : O+',
                            ),
                            _buildPatientCard(
                              name: '김영진',
                              id: '00000010',
                              type: 'OS',
                              ward: 'A5 / 85',
                              ageGender: '32 / 여',
                              admissionDate: '2023/07/31 / B7 / 14',
                              doctor: '장준혁',
                              attendingDoctor: '최준영',
                              diagnosis: '발목 골절',
                              alert: 'BSA : FM90.00, 혈액형 : O+',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPatientCard({
    required String name,
    required String id,
    required String type,
    required String ward,
    required String ageGender,
    required String admissionDate,
    required String doctor,
    required String attendingDoctor,
    required String diagnosis,
    required String alert,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade200),
        ),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPatientInfoRow(name, id, type),
          const SizedBox(height: 12),
          _buildInfoGrid(
            '병동/병실: $ward',
            '나이/성별: $ageGender',
            '입원일: $admissionDate',
            '지정의: $doctor',
            '주치의: $attendingDoctor',
            '진단명: $diagnosis',
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: Colors.red.shade50,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  'ALERT',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                alert,
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: const Size(0, 30),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: const Text(
              '복숭아 알레르기',
              style: TextStyle(
                color: Colors.red,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPatientInfoRow(String name, String id, String type) {
    return Row(
      children: [
        Text(
          name,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          id,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey.shade600,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          type,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey.shade600,
          ),
        ),
      ],
    );
  }

  Widget _buildInfoGrid(
    String ward,
    String ageGender,
    String admissionDate,
    String doctor,
    String attendingDoctor,
    String diagnosis,
  ) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Text(ward, style: const TextStyle(fontSize: 12))),
            Expanded(child: Text(ageGender, style: const TextStyle(fontSize: 12))),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            Expanded(
                child:
                    Text(admissionDate, style: const TextStyle(fontSize: 12))),
            Expanded(child: Text(doctor, style: const TextStyle(fontSize: 12))),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            Expanded(
                child:
                    Text(attendingDoctor, style: const TextStyle(fontSize: 12))),
            Expanded(
                child: Text(diagnosis, style: const TextStyle(fontSize: 12))),
          ],
        ),
      ],
    );
  }
}