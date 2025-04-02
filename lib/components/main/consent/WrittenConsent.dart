import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/dataloaders/written_consent_dataloader.dart';
import 'package:flutter_exe/model/writtenscription_consent_data.dart';
import 'package:flutter_list_ui/flutter_list_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_skeleton_ui/flutter_skeleton_ui.dart';

/// 스켈레톤 UI에 사용되는 상수 값들
class SkeletonConstants {
  static const double avatarSize = 40.0;
  static const double mainLineHeight = 16.0;
  static const double subLineHeight = 12.0;
  static const double subLineWidth = 100.0;
  static const double borderRadius = 4.0;
  static const double horizontalPadding = 16.0;
  static const double verticalPadding = 12.0;
  static const double spacing = 16.0;
  static const double subLineSpacing = 8.0;
  static const int skeletonItemCount = 4;
}

/// 스켈레톤 UI에 사용되는 스타일들
class SkeletonStyles {
  static final avatarStyle = SkeletonAvatarStyle(
    width: SkeletonConstants.avatarSize,
    height: SkeletonConstants.avatarSize,
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.all(Radius.circular(SkeletonConstants.borderRadius)),
  );

  static final mainLineStyle = SkeletonLineStyle(
    height: SkeletonConstants.mainLineHeight,
    width: double.infinity,
    borderRadius: BorderRadius.all(Radius.circular(SkeletonConstants.borderRadius)),
  );

  static final subLineStyle = SkeletonLineStyle(
    height: SkeletonConstants.subLineHeight,
    width: SkeletonConstants.subLineWidth,
    borderRadius: BorderRadius.all(Radius.circular(SkeletonConstants.borderRadius)),
  );
}

class WrittenConsent extends ConsumerWidget {
  const WrittenConsent({
    super.key,
  });

  InfoList<WrittenConsentData> _buildSkeletonList() {
    return InfoList<WrittenConsentData>(
      items: List.generate(
        SkeletonConstants.skeletonItemCount,
        (index) => WrittenConsentData(
          consentMstRid: 0,
          consentName: '',
          consentStateDisp: '',
          createDateTime: '',
        ),
      ),
      shrinkWrap: false,
      physics: const ClampingScrollPhysics(),
      buildItem: (consent) => const _ConsentSkeletonItem(),
      backgroundColor: AppColors.white,
      contentPadding: EdgeInsets.zero,
      itemDecoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

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
              child: Column(
                children: [
                  Icon(
                    Icons.description_outlined,
                    size: 48,
                    color: AppColors.gray400,
                  ),
                  const SizedBox(height: 16),
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
          body: _buildSkeletonList(),
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

class _ConsentSkeletonItem extends StatelessWidget {
  const _ConsentSkeletonItem();

  @override
  Widget build(BuildContext context) {
    return SkeletonItem(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SkeletonConstants.horizontalPadding,
          vertical: SkeletonConstants.verticalPadding,
        ),
        child: Row(
          children: [
            SkeletonAvatar(style: SkeletonStyles.avatarStyle),
            SizedBox(width: SkeletonConstants.spacing),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SkeletonLine(style: SkeletonStyles.mainLineStyle),
                  SizedBox(height: SkeletonConstants.subLineSpacing),
                  SkeletonLine(style: SkeletonStyles.subLineStyle),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}