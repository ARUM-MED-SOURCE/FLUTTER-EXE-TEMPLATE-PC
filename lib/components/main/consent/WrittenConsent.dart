import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/dataloaders/written_consent_dataloader.dart';
import 'package:flutter_exe/model/writtenscription_consent_data.dart';
import 'package:flutter_list_ui/flutter_list_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_skeleton_ui/flutter_skeleton_ui.dart';

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
            backgroundColor: Colors.white,
            contentPadding: EdgeInsets.zero,
            itemDecoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          backgroundColor: Colors.white,
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
          body: InfoList<WrittenConsentData>(
            items: List.generate(4, (index) => WrittenConsentData(
              consentMstRid: 0,
              consentName: '',
              consentStateDisp: '',
              createDateTime: '',
            )),
            shrinkWrap: false,
            physics: const ClampingScrollPhysics(),
            buildItem: (consent) => const _ConsentSkeletonItem(),
            backgroundColor: Colors.white,
            contentPadding: EdgeInsets.zero,
            itemDecoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          backgroundColor: Colors.white,
          isRound: true,
          showBorder: false,
          padding: EdgeInsets.zero,
          margin: EdgeInsets.zero,
        ),
      ),
    );
  }
}

class _ConsentSkeletonItem extends StatelessWidget {
  const _ConsentSkeletonItem();

  @override
  Widget build(BuildContext context) {
    return SkeletonItem(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            SkeletonAvatar(
              style: SkeletonAvatarStyle(
                width: 40,
                height: 40,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SkeletonLine(
                    style: SkeletonLineStyle(
                      height: 16,
                      width: double.infinity,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const SizedBox(height: 8),
                  SkeletonLine(
                    style: SkeletonLineStyle(
                      height: 12,
                      width: 100,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _EmptyConsentItem extends StatelessWidget {
  const _EmptyConsentItem();

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