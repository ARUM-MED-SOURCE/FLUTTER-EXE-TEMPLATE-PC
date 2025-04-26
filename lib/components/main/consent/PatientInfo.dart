import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/consent_list_view.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/model/patient_info_response.dart';
import 'package:flutter_exe/providers/consent/patient_info_provider.dart';
import 'package:flutter_exe/providers/consent/prescription_consent_provider.dart';
import 'package:flutter_exe/providers/consent/written_consent_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

final logger = Logger();

class PatientInfo extends ConsumerWidget {
  const PatientInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ConsentListView(
      provider: patientInfoProvider,
      itemBuilder: <PatientInfoResultData>(_, index, model) {
        return MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              logger.i("처방동의서 및 작성동의서 조회 ${index}");
              ref.read(prescriptionConsentProvider.notifier).getData();
              ref.read(writtenConsentProvider.notifier).getData();
            },
            child: PatientInfoItem.fromModel(
              model: model,
            ),
          ),
        );
      },
      title: '환자정보',
    );
  }
}

class PatientInfoItem extends ConsumerWidget {
  final PatientInfoResultData model;

  const PatientInfoItem({
    super.key,
    required this.model,
  });

  factory PatientInfoItem.fromModel({
    required PatientInfoResultData model,
  }) {
    return PatientInfoItem(
      model: model,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _PatientName(patient: model),
          _PatientDetail(patient: model),
          _PatientProcedure(patient: model),
        ],
      ),
    );
  }
}

class _PatientName extends StatelessWidget {
  final PatientInfoResultData patient;

  const _PatientName({
    required this.patient,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          patient.patientName,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          patient.patientCode,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class _PatientDetail extends StatelessWidget {
  final PatientInfoResultData patient;

  const _PatientDetail({
    required this.patient,
  });

  @override
  Widget build(BuildContext context) {
    return _buildInfoGrid();
  }

  Widget _buildInfoGrid() {
    final infoRows = [
      [
        _buildInfoItem('병동/병실: ', '${patient.ward}/${patient.room}'),
        _buildInfoItem('나이/성별: ', '${patient.age}/${patient.sex}'),
      ],
      [
        _buildInfoItem('입원일: ', patient.admissionDate),
        _buildInfoItem('지정의: ', patient.doctorName),
      ],
      [
        _buildInfoItem('주치의: ', patient.doctorName),
        _buildInfoItem('진단명: ', patient.diagName),
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

class _PatientProcedure extends StatelessWidget {
  final PatientInfoResultData patient;

  const _PatientProcedure({
    required this.patient,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            color: AppColors.blue400,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            children: [
              const Text(
                "임시",
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors.white,
                ),
              ),
              const SizedBox(width: 4),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Text(
                  "1",
                  style: TextStyle(
                    fontSize: 8,
                    color: AppColors.blue400,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            color: AppColors.gray100,
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Text(
            "진행",
            style: TextStyle(
              fontSize: 14,
              color: AppColors.gray500,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            color: AppColors.gray100,
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Text(
            "완료",
            style: TextStyle(
              fontSize: 14,
              color: AppColors.gray500,
            ),
          ),
        ),
      ],
    );
  }
}
