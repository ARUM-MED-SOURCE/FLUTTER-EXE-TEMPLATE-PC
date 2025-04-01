import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:your_app/cubits/patient_info_cubit.dart';
import 'package:your_app/models/patient_info.dart';
import 'package:your_app/providers/consent_data_loader_provider.dart';

class PatientInfoScreen extends StatefulWidget {
  const PatientInfoScreen({Key? key}) : super(key: key);

  @override
  _PatientInfoScreenState createState() => _PatientInfoScreenState();
}

class _PatientInfoScreenState extends State<PatientInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('환자 정보'),
      ),
      body: BlocBuilder<PatientInfoCubit, PatientInfoState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (patient) => SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildPatientInfoCard(patient),
                  const SizedBox(height: 16),
                  _buildConsentInfoCard(patient),
                ],
              ),
            ),
            error: (message) => Center(
              child: SelectableText.rich(
                TextSpan(
                  text: '오류가 발생했습니다: ',
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: [
                    TextSpan(
                      text: message,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildPatientInfoCard(PatientInfo patient) {
    // Implementation of _buildPatientInfoCard method
  }

  Widget _buildConsentInfoCard(PatientInfo patient) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '동의 정보',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            Consumer(
              builder: (context, ref, child) {
                final consentAsync = ref.watch(consentDataLoaderProvider(
                  userId: 'actual_user_id', // 실제 사용자 ID로 교체 필요
                  userPassword: 'actual_password', // 실제 비밀번호로 교체 필요
                  patientCode: patient.patientCode,
                  startDate: DateTime.now().subtract(const Duration(days: 30)).toString().split(' ')[0],
                  endDate: DateTime.now().toString().split(' ')[0],
                ));

                return consentAsync.when(
                  data: (consentData) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('최근 동의일: ${consentData.consentDate ?? '없음'}'),
                      Text('동의 상태: ${consentData.consentStatus ?? '없음'}'),
                    ],
                  ),
                  loading: () => const Center(child: CircularProgressIndicator()),
                  error: (error, stack) => SelectableText.rich(
                    TextSpan(
                      text: '동의 정보를 불러오는데 실패했습니다: ',
                      style: Theme.of(context).textTheme.bodyLarge,
                      children: [
                        TextSpan(
                          text: error.toString(),
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
} 