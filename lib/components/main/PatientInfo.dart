import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/components/common/container/InfoCard.dart';
import 'package:flutter_exe/components/common/container/InfoHeader.dart';
import 'package:flutter_exe/components/common/container/InfoList.dart';
import 'package:flutter_exe/model/patient.dart';
import 'package:flutter_exe/styles/patient_styles.dart';

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

class PatientInfo extends StatelessWidget {
  const PatientInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blue50,
      padding: const EdgeInsets.all(8.0),
      child: PatientInfoCard(
        header: const PatientInfoHeader(title: '환자정보'),
        body: PatientInfoList(patients: _patientData.map(Patient.fromJson).toList()),
      ),
    );
  }
}

class PatientInfoCard extends InfoCard {
  const PatientInfoCard({
    required InfoHeader header,
    required InfoList body,
    super.key,
  }) : super(header: header, body: body);
}

class PatientInfoHeader extends InfoHeader {
  const PatientInfoHeader({
    required String title,
    super.key,
  }) : super(title: title);
}

class PatientInfoList extends InfoList<Patient> {
  const PatientInfoList({
    required List<Patient> patients,
    super.key,
  }) : super(items: patients);

  @override
  Widget buildItem(Patient patient) {
    return PatientInfoItem(patient: patient);
  }
}

class PatientInfoItem extends StatelessWidget {
  final Patient patient;

  const PatientInfoItem({
    required this.patient,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.gray100)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PatientDetail(patient: patient),
          PatientAlert(patient: patient),
        ],
      ),
    );
  }
}

class PatientDetail extends StatelessWidget {
  final Patient patient;

  const PatientDetail({
    required this.patient,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return _buildInfoGrid();
  }

  Widget _buildInfoGrid() {
    final infoRows = [
      [
        _buildInfoItem('병동/병실: ', patient.ward),
        _buildInfoItem('나이/성별: ', patient.ageGender),
      ],
      [
        _buildInfoItem('입원일: ', patient.admissionDate),
        _buildInfoItem('지정의: ', patient.doctor),
      ],
      [
        _buildInfoItem('주치의: ', patient.attendingDoctor),
        _buildInfoItem('진단명: ', patient.diagnosis),
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
          style: PatientStyles.infoLabelStyle,
        ),
        Text(
          value,
          style: PatientStyles.infoValueStyle,
        ),
      ],
    );
  }
}

class PatientAlert extends StatelessWidget {
  final Patient patient;

  const PatientAlert({
    required this.patient,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'ALERT',
          style: PatientStyles.alertStyle,
        ),
        const SizedBox(width: 8),
        Text(
          patient.alert,
          style: PatientStyles.alertStyle,
        ),
      ],
    );
  }
}





