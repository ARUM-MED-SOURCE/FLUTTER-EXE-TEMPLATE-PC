import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/Skeleton.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/model/common/consent_list_model.dart';
import 'package:flutter_exe/model/common/conset_model.dart';
import 'package:flutter_exe/providers/consent_list_provider.dart';
import 'package:flutter_list_ui/flutter_list_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

typedef ConsentListViewBuilder<T extends ConsentModel> = Widget Function(
    BuildContext context, int index, T model);

final logger = Logger();

class ConsentListView<T extends ConsentModel> extends ConsumerStatefulWidget {
  final StateNotifierProvider<ConsentListProvider, ConsentListBase> provider;
  final ConsentListViewBuilder<T> itemBuilder;
  final String title;

  final int? itemCount;
  final ScrollPhysics? physics;
  final bool shrinkWrap;

  const ConsentListView({
    super.key,
    required this.provider,
    required this.itemBuilder,
    required this.title,
    this.itemCount,
    this.physics,
    this.shrinkWrap = false,
  });

  @override
  ConsumerState<ConsentListView> createState() => _ConsentListViewState<T>();
}

class _ConsentListViewState<T> extends ConsumerState<ConsentListView> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(widget.provider);
    logger.i(state);
    if (state is ConsentListLoading) {
      return Info(
        card: InfoCard(
          header: InfoHeader(
            title: widget.title,
            titleStyle: Theme.of(context).textTheme.titleLarge,
          ),
          body: createSkeletonList<T>(
            itemBuilder: (context) => const ConsentSkeletonItem(),
            itemCount: widget.itemCount ?? 8,
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

    if (state is ConsentListError) {
      return Info(
        card: InfoCard(
          header: InfoHeader(
            title: widget.title,
            titleStyle: Theme.of(context).textTheme.titleLarge,
          ),
          body: InfoList<T>(
            items: const [],
            buildItem: (T item) => const SizedBox(),
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
                  const SizedBox(height: 16),
                  Text(state.message),
                    IconButton(
                      onPressed: () {
                        ref.invalidate(widget.provider);
                      },
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

    final consents = state as ConsentList<T>;
    logger.i("상태");
    logger.i(state);
    return Info(
      card: InfoCard(
        header: InfoHeader(
          title: widget.title,
          titleStyle: Theme.of(context).textTheme.titleLarge,
        ),
        body: InfoList<T>(
          items: consents.data,
          shrinkWrap: widget.shrinkWrap,
          physics: widget.physics ?? const BouncingScrollPhysics(),
          separatorBuilder: (context, index) => const SizedBox(height: 0),
          buildEmptyItem: (context, items) => Container(
            padding: const EdgeInsets.symmetric(vertical: 32),
            alignment: Alignment.center,
            child: Column(
              children: [
                const Icon(
                  Icons.description_outlined,
                  size: 48,
                  color: AppColors.gray400,
                ),
                const SizedBox(height: 16),
                Text(
                  '${widget.title}가 없습니다.',
                  style: const TextStyle(
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
                color: AppColors.gray100,
              ),
            ),
          ),
          buildItem: (T item) => widget.itemBuilder(
            context,
            consents.data.indexOf(item),
            item as ConsentModel,
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
