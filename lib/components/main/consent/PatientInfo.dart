import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/Skeleton.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/dataloaders/patientinfo_dataloader.dart';
import 'package:flutter_exe/dataloaders/prescription_consent_dataloader.dart';
import 'package:flutter_exe/dataloaders/written_consent_dataloader.dart';
import 'package:flutter_exe/model/patient_info_response.dart';
import 'package:flutter_exe/providers/hospital_section_provider.dart';
import 'package:flutter_exe/providers/selected_date_provider.dart';
import 'package:flutter_exe/styles/patient_styles.dart';
import 'package:flutter_exe/utils/time.dart';
import 'package:flutter_list_ui/flutter_list_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PatientInfo extends ConsumerWidget {
  const PatientInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hospitalSection = ref.watch(hospitalSectionProvider);
    final patientData =
        ref.watch(patientInfoLoaderProvider(hospitalSection.methodName));

    return patientData.when(
      data: (response) => Info(
        card: InfoCard(
          header: InfoHeader(
            title: '환자정보',
            titleStyle: Theme.of(context).textTheme.titleLarge,
          ),
          body: InfoList<PatientInfoResultData>(
            items: response?.resultData ?? [],
            shrinkWrap: false,
            physics: const BouncingScrollPhysics(),
            separatorBuilder: (context, index) => const SizedBox(height: 0),
            buildItem: (patient) => _PatientInfoItem(patient: patient),
            buildEmptyItem: (context, items) => Container(
              padding: const EdgeInsets.symmetric(vertical: 32),
              alignment: Alignment.center,
              child: const Column(
                children: [
                  Icon(
                    Icons.description_outlined,
                    size: 48,
                    color: AppColors.gray400,
                  ),
                  SizedBox(height: 16),
                  Text('검색 결과가 없습니다.'),
                ],
              ),
            ),
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
      ),
      loading: () => Info(
        card: InfoCard(
          header: InfoHeader(
            title: '환자정보',
            titleStyle: Theme.of(context).textTheme.titleLarge,
          ),
          body: createSkeletonList<PatientInfoResultData>(
            itemBuilder: (patient) => const ConsentSkeletonItem(),
            emptyItemBuilder: (index) => const PatientInfoResultData(
              admissionDate: '',
              age: '',
              chargeName: '',
              diagName: '',
              doctorName: '',
              patientCode: '',
              patientName: '',
              patientZipAddr: '',
              room: '',
              sex: '',
              clnDeptCode: '',
              clnDeptName: '',
              clnDeptNum: '',
              birthday: '',
              mdrpno: '',
              estimateTime: '',
              doctorId: '',
              patientAddr: '',
              patientHp: '',
              patientTelNo: '',
              patientZipCode: '',
              ward: '',
            ),
            itemCount: 8,
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
      ),
      error: (error, stack) => Center(
        child: SelectableText.rich(
          TextSpan(
            text: 'Error: ',
            style: const TextStyle(color: AppColors.red500),
            children: [
              TextSpan(text: error.toString()),
            ],
          ),
        ),
      ),
    );
  }
}

class _PatientInfoItem extends ConsumerWidget {
  final PatientInfoResultData patient;

  const _PatientInfoItem({
    required this.patient,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDate = ref.watch(selectedDateProvider);
    return InkWell(
      onTap: () {
        ref
            .read(prescriptionConsentDataLoaderProvider.notifier)
            .getPrescriptionConsent(
              userId: 'userId', // TODO: 실제 사용자 ID로 변경 필요
              userPassword: 'userPassword', // TODO: 실제 비밀번호로 변경 필
            );

        ref.read(writtenConsentDataLoaderProvider.notifier).getWrittenConsent(
              userId: 'userId',
              // TODO: 실제 사용자 ID로 변경 필요
              userPassword: 'userPassword',
              // TODO: 실제 비밀번호로 변경 필요
              patientCode: patient.patientCode,
              startDate: formatToYYYYMMDD(selectedDate),
              endDate: formatToYYYYMMDD(DateTime.now()),
            );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _PatientDetail(patient: patient),
            _PatientAlert(patient: patient),
          ],
        ),
      ),
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
  final PatientInfoResultData patient;

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
          patient.alertBloodGroup ?? '',
          style: PatientStyles.alertStyle,
        ),
      ],
    );
  }
}
