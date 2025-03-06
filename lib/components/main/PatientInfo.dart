import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
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
        header: const PatientInfoHeader(),
        body: PatientInfoList(patients: _patientData.map(Patient.fromJson).toList()),
      ),
    );
  }
}

class PatientInfoCard extends StatelessWidget {
  final Widget header;
  final Widget body;

  const PatientInfoCard({
    required this.header,
    required this.body,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.gray100.withOpacity(0.5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [header, body],
      ),
    );
  }
}

class PatientInfoHeader extends StatelessWidget {
  const PatientInfoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class PatientInfoList extends StatelessWidget {
  final List<Patient> patients;

  const PatientInfoList({
    required this.patients,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView.builder(
          itemCount: patients.length,
          itemBuilder: (context, index) {
            final patient = patients[index];
            return PatientInfoItem(patient: patient);
          },
        ),
      ),
    );
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
          PatientDetailInfo(patient: patient),
          PatientAlertInfo(
            alert: patient.alert,
            allergies: patient.allergies,
          ),
        ],
      ),
    );
  }
}

class PatientDetailInfo extends StatelessWidget {
  final Patient patient;

  const PatientDetailInfo({
    required this.patient,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return _buildInfoGrid(
      patient.ward,
      patient.ageGender,
      patient.admissionDate,
      patient.doctor,
      patient.attendingDoctor,
      patient.diagnosis,
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

class PatientAlertInfo extends StatelessWidget {
  final String alert;
  final List<String> allergies;

  const PatientAlertInfo({
    required this.alert,
    required this.allergies,
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
          alert,
          style: PatientStyles.alertStyle,
        ),
      ],
    );
  }
}
