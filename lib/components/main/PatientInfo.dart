import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';

const _patientData = [
  {
    'name': '김영진',
    'id': '00000010',
    'type': 'OS',
    'ward': 'A5 / 85',
    'ageGender': '32 / 여',
    'admissionDate': '2023/07/31 / B7 / 14',
    'doctor': '장준혁',
    'attendingDoctor': '최준영',
    'diagnosis': '발목 골절',
    'alert': 'BSA : FM90.00, 혈액형 : O+'
  },
  {
    'name': '김영진',
    'id': '00000010',
    'type': 'OS',
    'ward': 'A5 / 85',
    'ageGender': '32 / 여',
    'admissionDate': '2023/07/31 / B7 / 14',
    'doctor': '장준혁',
    'attendingDoctor': '최준영',
    'diagnosis': '발목 골절',
    'alert': 'BSA : FM90.00, 혈액형 : O+'
  },
  {
    'name': '김영진',
    'id': '00000010',
    'type': 'OS',
    'ward': 'A5 / 85',
    'ageGender': '32 / 여',
    'admissionDate': '2023/07/31 / B7 / 14',
    'doctor': '장준혁',
    'attendingDoctor': '최준영',
    'diagnosis': '발목 골절',
    'alert': 'BSA : FM90.00, 혈액형 : O+'
  },
  {
    'name': '김영진',
    'id': '00000010',
    'type': 'OS',
    'ward': 'A5 / 85',
    'ageGender': '32 / 여',
    'admissionDate': '2023/07/31 / B7 / 14',
    'doctor': '장준혁',
    'attendingDoctor': '최준영',
    'diagnosis': '발목 골절',
    'alert': 'BSA : FM90.00, 혈액형 : O+'
  }
];

class PatientInfo extends StatefulWidget {
  const PatientInfo({super.key});

  @override
  State<PatientInfo> createState() => _PatientInfoState();
}

class _PatientInfoState extends State<PatientInfo> {
  DateTime? selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {  
    return Container(
      color: AppColors.blue50,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.gray100.withOpacity(0.5)),

          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: AppColors.gray100),
                  ),
                ),
                width: double.infinity,
                child: Text(
                  '환자정보',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.builder(
                    itemCount: _patientData.length,
                    itemBuilder: (context, index) {
                      final patient = _patientData[index];
                      return PatientInfoItem(
                        name: patient['name'] ?? '',
                        id: patient['id'] ?? '',
                        type: patient['type'] ?? '',
                        ward: patient['ward'] ?? '',
                        ageGender: patient['ageGender'] ?? '',
                        admissionDate: patient['admissionDate'] ?? '',
                        doctor: patient['doctor'] ?? '',
                        attendingDoctor: patient['attendingDoctor'] ?? '',
                        diagnosis: patient['diagnosis'] ?? '',
                        alert: patient['alert'] ?? '',
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PatientInfoItem extends StatelessWidget {
  final String name;
  final String id;
  final String type;
  final String ward;
  final String ageGender;
  final String admissionDate;
  final String doctor;
  final String attendingDoctor;
  final String diagnosis;
  final String alert; 
  const PatientInfoItem({
    super.key, 
    required this.name, 
    required this.id, 
    required this.type, 
    required this.ward, 
    required this.ageGender, 
    required this.admissionDate, 
    required this.doctor, 
    required this.attendingDoctor, 
    required this.diagnosis, 
    required this.alert,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.gray100),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildPatientInfoRow(name, id, type),
                  const SizedBox(height: 12),
                  _buildInfoGrid(
                    ward,
                    ageGender,
                    admissionDate,
                    doctor,
                    attendingDoctor,
                    diagnosis,
                  ),
                  Row(
                    children: [
                      Text(
                        'ALERT',
                        style: TextStyle(
                          color: AppColors.pink500,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        alert,
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '복숭아 알레르기',
                    style: TextStyle(
                      color: AppColors.pink500,
                      fontSize: 12,
                    ),
                  ),
                ],
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
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 4,
          ),
          decoration: BoxDecoration(
            color: AppColors.blue100,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            id,
            style: TextStyle(fontSize: 12, color: AppColors.blue300),
          ),
        ),
        const SizedBox(width: 8),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 4,
          ),
          decoration: BoxDecoration(
            color: AppColors.blue70,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            type,
            style: TextStyle(fontSize: 12, color: AppColors.blue200),
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
    final infoRows = [
      [
        _buildInfoItem('병동/병실: ', ward),
        _buildInfoItem('나이/성별: ', ageGender),
      ],
      [
        _buildInfoItem('입원일: ', admissionDate),
        _buildInfoItem('지정의: ', doctor),
      ],
      [
        _buildInfoItem('주치의: ', attendingDoctor),
        _buildInfoItem('진단명: ', diagnosis),
      ],
    ];

    return Column(
      children: infoRows.map((row) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: Row(
            children: row.map((widget) => 
              Expanded(
                child: widget,
              ),
            ).toList(),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildInfoItem(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: AppColors.gray500,
            height: 1.5,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 12,
              color: AppColors.black,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
