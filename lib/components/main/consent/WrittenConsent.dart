import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';
import 'package:flutter_exe/components/common/InfoListCard.dart';
import 'package:flutter_exe/components/common/Skeleton.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/dataloaders/written_consent_dataloader.dart';
import 'package:flutter_exe/model/writtenscription_consent_data.dart';
import 'package:flutter_exe/utils/time.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WrittenConsent extends ConsumerWidget {
  const WrittenConsent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final writtenScriptionConsentData =
        ref.watch(writtenConsentDataLoaderProvider);

    return writtenScriptionConsentData.when(
      data: (data) => InfoListCard<WrittenConsentData>(
        title: '작성동의서',
        items: data?.resultData ?? [],
        buildItem: (consent) => TaggedConsentItem(
          type: consent.consentStateDisp,
          date: formatToYYYY_MM_DD(DateTime.parse(consent.createDateTime)),
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
      ),
      loading: () => InfoListCard<WrittenConsentData>(
        title: '작성동의서',
        items: const [],
        buildItem: (consent) => const SizedBox(),
        buildEmptyItem: (context, items) => const SizedBox(),
        isLoading: true,
        itemBuilder: (consent) => const ConsentSkeletonItem(),
        emptyItemBuilder: (index) => WrittenConsentData.empty(),
        itemCount: 4,
      ),
      error: (error, stack) => InfoListCard<WrittenConsentData>(
        title: '작성동의서',
        items: const [],
        buildItem: (consent) => TaggedConsentItem(
          type: consent.consentStateDisp,
          date: formatToYYYY_MM_DD(DateTime.parse(consent.createDateTime)),
          name: consent.consentName,
          id: consent.consentMstRid.toString(),
        ),
        buildEmptyItem: (context, items) => const SizedBox(),
        hasError: true,
        errorMessage: error.toString(),
        onRetry: () {
          ref.invalidate(writtenConsentDataLoaderProvider);
        },
      ),
    );
  }
}
