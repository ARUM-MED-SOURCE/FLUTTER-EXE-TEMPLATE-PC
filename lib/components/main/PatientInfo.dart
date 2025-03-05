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
        padding: const EdgeInsets.all(16.0),
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
                    bottom: BorderSide(color: Colors.grey.shade200),
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
  const PatientInfoItem({super.key, required this.name, required this.id, required this.type, required this.ward, required this.ageGender, required this.admissionDate, required this.doctor, required this.attendingDoctor, required this.diagnosis, required this.alert});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade200),
        ),
      ),
      child: Row(
        children: [
         _buildPatientCard(name: name, id: id, type: type, ward: ward, ageGender: ageGender, admissionDate: admissionDate, doctor: doctor, attendingDoctor: attendingDoctor, diagnosis: diagnosis, alert: alert),
        ],
      ),
    );
  }
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
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border(
            bottom: BorderSide(color: Colors.grey.shade200),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.symmetric(vertical: 4),
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
