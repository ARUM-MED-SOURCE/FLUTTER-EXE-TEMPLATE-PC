import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_list_ui/flutter_list_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_exe/dataloaders/consent_dataloader.dart';
import 'package:flutter_exe/model/writtenscription_consent_data.dart';

class WrittenConsent extends ConsumerWidget {

  const WrittenConsent({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final writtenScriptionConsentData = ref.watch(consentDataLoaderProvider);

    return writtenScriptionConsentData.when(
      data: (response) => Info(
        card: InfoCard(
          header: InfoHeader(
            title: '작성동의서',
            titleStyle: Theme.of(context).textTheme.titleLarge,
          ),
          body: InfoList<WrittenConsentData>(
            shrinkWrap: false,
            physics: const ClampingScrollPhysics(),
            items: response?.resultData ?? [],
            buildItem: (consent) => TaggedConsentItem(
              type: consent.consentStateDisp,
              date: consent.createDateTime,
              name: consent.consentName,
              id: consent.consentMstRid.toString(),
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
      ),
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
