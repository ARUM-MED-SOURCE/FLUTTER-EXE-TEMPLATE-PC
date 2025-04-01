import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/model/written_consent.dart';
import 'package:flutter_exe/model/writtenscription_consent_data.dart' as api;
import 'package:flutter_list_ui/flutter_list_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_exe/dataloaders/consent_dataloader.dart';

class WrittenConsent extends ConsumerWidget {
  final String userId;
  final String userPassword;
  final String patientCode;
  final String startDate;
  final String endDate;

  const WrittenConsent({
    super.key,
    required this.userId,
    required this.userPassword,
    required this.patientCode,
    required this.startDate,
    required this.endDate,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final consentState = ref.watch(consentDataLoaderProvider);

    return consentState.when(
      data: (response) {
        final apiConsents = response?.resultData ?? [];
        final consents = apiConsents.map((apiConsent) => WrittenConsentData(
          type: apiConsent.consentStateDisp,
          date: apiConsent.createDateTime,
          name: apiConsent.consentName,
          id: apiConsent.consentMstRid.toString(),
        )).toList();

        return Info(
          card: InfoCard(
            header: InfoHeader(
              title: '작성동의서',
              titleStyle: Theme.of(context).textTheme.titleLarge,
            ),
            body: InfoList<WrittenConsentData>(
              shrinkWrap: false,
              physics: const ClampingScrollPhysics(),
              items: consents.isEmpty
                  ? [const WrittenConsentData(type: '', date: '', name: '', id: '')]
                  : consents,
              buildItem: (consent) => consents.isEmpty
                  ? _EmptyConsentItem()
                  : TaggedConsentItem(
                      type: consent.type,
                      date: consent.date,
                      name: consent.name,
                      id: consent.id,
                    ),
              backgroundColor: Colors.white,
              contentPadding: EdgeInsets.zero,
            ),
            backgroundColor: Colors.white,
            isRound: true,
            showBorder: false,
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
          ),
        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (error, stack) => Center(
        child: Text(
          '데이터를 불러오는데 실패했습니다: $error',
          style: const TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}

class _EmptyConsentItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Center(
        child: Text(
          '작성동의서가 없습니다.',
          style: TextStyle(
            color: AppColors.gray500,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
