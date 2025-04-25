import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/Skeleton.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_list_ui/flutter_list_ui.dart';

class InfoListCard<T> extends StatelessWidget {
  final String title;
  final List<T> items;
  final Widget Function(T item) buildItem;
  final Widget Function(BuildContext context, List<T> items) buildEmptyItem;
  final Widget Function(T item)? itemBuilder;
  final T Function(int index)? emptyItemBuilder;
  final int? itemCount;
  final bool isLoading;
  final bool hasError;
  final String? errorMessage;
  final VoidCallback? onRetry;
  final ScrollPhysics? physics;
  final bool shrinkWrap;

  const InfoListCard({
    super.key,
    required this.title,
    required this.items,
    required this.buildItem,
    required this.buildEmptyItem,
    this.itemBuilder,
    this.emptyItemBuilder,
    this.itemCount,
    this.isLoading = false,
    this.hasError = false,
    this.errorMessage,
    this.onRetry,
    this.physics,
    this.shrinkWrap = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Info(
        card: InfoCard(
          header: InfoHeader(
            title: title,
            titleStyle: Theme.of(context).textTheme.titleLarge,
          ),
          body: createSkeletonList<T>(
            itemBuilder: itemBuilder ?? (item) => const ConsentSkeletonItem(),
            emptyItemBuilder: emptyItemBuilder ?? (index) => throw UnimplementedError(),
            itemCount: itemCount ?? 8,
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
      );
    }

    if (hasError) {
      return Info(
        card: InfoCard(
          header: InfoHeader(
            title: title,
            titleStyle: Theme.of(context).textTheme.titleLarge,
          ),
          body: InfoList<T>(
            items: [],
            buildItem: buildItem,
            buildEmptyItem: (context, items) => Container(
              padding: const EdgeInsets.symmetric(vertical: 32),
              alignment: Alignment.center,
              child: Column(
                children: [
                  const Icon(
                    Icons.error_outline,
                    size: 48,
                    color: AppColors.red500,
                  ),
                  SizedBox(height: 16),
                  Text(errorMessage ?? '내용을 불러오는데 실패했습니다.'),
                  if (onRetry != null)
                    IconButton(
                      onPressed: onRetry,
                      icon: const Icon(Icons.refresh),
                    ),
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
      );
    }

    return Info(
      card: InfoCard(
        header: InfoHeader(
          title: title,
          titleStyle: Theme.of(context).textTheme.titleLarge,
        ),
        body: InfoList<T>(
          items: items,
          shrinkWrap: shrinkWrap,
          physics: physics ?? const BouncingScrollPhysics(),
          separatorBuilder: (context, index) => const SizedBox(height: 0),
          buildItem: buildItem,
          buildEmptyItem: buildEmptyItem,
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
    );
  }
} 