import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/model/patient.dart';
import 'package:flutter_exe/styles/patient_styles.dart';
import 'package:flutter_exe/utils/dummy_data.dart';
import 'package:flutter_list_ui/flutter_list_ui.dart';

class PatientInfo extends StatelessWidget {
  const PatientInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Info(
      card: InfoCard(
        header: InfoHeader(
          title: '환자정보',
          titleStyle: Theme.of(context).textTheme.titleLarge,
          backgroundColor: Colors.white,
        ),
        body: InfoList<Patient>(
          shrinkWrap: false,
          physics: const BouncingScrollPhysics(),
          items: patientData.map(Patient.fromJson).toList(),
          buildItem: (patient) => _PatientInfoItem(patient: patient),
          backgroundColor: AppColors.white,
          contentPadding: EdgeInsets.zero,
          itemDecoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: AppColors.gray100,
              ),
            ),
          ),
        ),
        backgroundColor: AppColors.white,
        isRound: true,
        showBorder: false,
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
      ),
    );
  }
}

class _PatientInfoItem extends StatelessWidget {
  final Patient patient;

  const _PatientInfoItem({
    required this.patient,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _PatientDetail(patient: patient),
          _PatientAlert(patient: patient),
        ],
      ),
    );
  }
}

class _PatientDetail extends StatelessWidget {
  final Patient patient;

  const _PatientDetail({
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
            children: row
                .map(
                  (widget) => Expanded(
                    child: widget,
                  ),
                )
                .toList(),
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

class _PatientAlert extends StatelessWidget {
  final Patient patient;

  const _PatientAlert({
    required this.patient,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
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
