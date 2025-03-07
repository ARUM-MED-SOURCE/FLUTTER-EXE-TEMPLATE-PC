import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/components/common/container/Info.dart';
import 'package:flutter_exe/components/common/container/InfoCard.dart';
import 'package:flutter_exe/components/common/container/InfoHeader.dart';
import 'package:flutter_exe/components/common/container/InfoList.dart';
import 'package:flutter_exe/model/patient.dart';
import 'package:flutter_exe/styles/patient_styles.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_exe/providers/selected_consents_provider.dart';
import 'package:flutter_exe/utils/dummy_data.dart';

class PatientInfo extends Info {
  PatientInfo({super.key}) : super(card: _PatientInfoCard(
        header: _PatientInfoHeader(title: '환자정보'),
        body: _PatientInfoList(patients: patientData.map(Patient.fromJson).toList()),
      ),
    ),
  );
}

class _PatientInfoCard extends InfoCard {
  const _PatientInfoCard({
    required InfoHeader header,
    required InfoList body,
    super.key,
  }) : super(header: header, body: body);
}

class _PatientInfoHeader extends InfoHeader {
  const _PatientInfoHeader({
    required String title,
    super.key,
  }) : super(title: title);
}

class _PatientInfoList extends InfoList<Patient> {
  const _PatientInfoList({
    required List<Patient> patients,
    super.key,
  }) : super(items: patients);

  @override
  Widget buildItem(Patient patient) {
    return _PatientInfoItem(patient: patient);
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
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.gray100)),
      ),
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




