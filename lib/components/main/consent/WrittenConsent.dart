import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/dataloaders/written_consent_dataloader.dart';
import 'package:flutter_exe/model/writtenscription_consent_data.dart';
import 'package:flutter_list_ui/flutter_list_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_skeleton_ui/flutter_skeleton_ui.dart';

import '../../common/Skeleton.dart';

class WrittenConsent extends ConsumerWidget {
  const WrittenConsent({
    super.key,
  });


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final writtenScriptionConsentData =
        ref.watch(writtenConsentDataLoaderProvider);

    return writtenScriptionConsentData.when(
      data: (data) => Info(
        card: InfoCard(
          header: InfoHeader(
            title: '작성동의서',
            titleStyle: Theme.of(context).textTheme.titleLarge,
          ),
          body: InfoList<WrittenConsentData>(
            items: data?.resultData ?? [],
            shrinkWrap: false,
            physics: const ClampingScrollPhysics(),
            buildItem: (consent) => TaggedConsentItem(
              type: consent.consentStateDisp,
              date: consent.createDateTime,
              name: consent.consentName,
              id: consent.consentMstRid.toString(),
            ),
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
                  Text(
                    '작성동의서가 없습니다',
                    style: TextStyle(
                      color: AppColors.gray500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: AppColors.white,
            contentPadding: EdgeInsets.zero,
            itemDecoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
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
            style: const TextStyle(color: Colors.red),
            children: [
              TextSpan(
                text: error.toString(),
                style: const TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
      ),
      loading: () => Info(
        card: InfoCard(
          header: InfoHeader(
            title: '작성동의서',
            titleStyle: Theme.of(context).textTheme.titleLarge,
          ),
          body: createSkeletonList<WrittenConsentData>(
            itemBuilder: (consent) => const ConsentSkeletonItem(),
            emptyItemBuilder: (index) => const WrittenConsentData(
              consentMstRid: 0,
              consentName: '',
              consentStateDisp: '',
              createDateTime: '',
            ),
            itemCount: 4,
            backgroundColor: AppColors.white,
            contentPadding: EdgeInsets.zero,
            itemDecoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
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
    );
  }
}

