import 'package:flutter_skeleton_ui/flutter_skeleton_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_list_ui/flutter_list_ui.dart';
import 'package:flutter_exe/constants/colors.dart';

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

class SkeletonStyles {
  static const avatarStyle = SkeletonAvatarStyle(
    width: SkeletonConstants.avatarSize,
    height: SkeletonConstants.avatarSize,
    shape: BoxShape.rectangle,
    borderRadius:
        BorderRadius.all(Radius.circular(SkeletonConstants.borderRadius)),
  );

  static const mainLineStyle = SkeletonLineStyle(
    height: SkeletonConstants.mainLineHeight,
    width: double.infinity,
    borderRadius:
        BorderRadius.all(Radius.circular(SkeletonConstants.borderRadius)),
  );

  static const subLineStyle = SkeletonLineStyle(
    height: SkeletonConstants.subLineHeight,
    width: SkeletonConstants.subLineWidth,
    borderRadius:
        BorderRadius.all(Radius.circular(SkeletonConstants.borderRadius)),
  );
}

InfoList<T> createSkeletonList<T>({
  required Widget Function(BuildContext) itemBuilder,
  int itemCount = SkeletonConstants.skeletonItemCount,
  bool shrinkWrap = false,
  ScrollPhysics physics = const ClampingScrollPhysics(),
  Color backgroundColor = AppColors.white,
  EdgeInsetsGeometry contentPadding = EdgeInsets.zero,
  BoxDecoration? itemDecoration,
  bool useSliver = false,
  EdgeInsetsGeometry itemPadding = EdgeInsets.zero,
}) {
  return InfoList<T>(
    items: const [],
    shrinkWrap: shrinkWrap,
    physics: physics,
    buildItem: (item) => Builder(
      builder: (context) => itemBuilder(context),
    ),
    buildEmptyItem: (context, items) {
      return Column(
        children: [
          ...List.generate(itemCount, (i) => const ConsentSkeletonItem())
        ],
      );
    },
  );
}

class ConsentSkeletonItem extends StatelessWidget {
  const ConsentSkeletonItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const SkeletonItem(
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
