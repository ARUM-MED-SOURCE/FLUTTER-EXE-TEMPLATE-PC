import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/Skeleton.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/model/common/consent_list_model.dart';
import 'package:flutter_exe/model/common/conset_model.dart';
import 'package:flutter_exe/providers/consent/consent_list_provider.dart';
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
  final InfoHeaderBase? header;
  final int? itemCount;
  final ScrollPhysics? physics;
  final bool shrinkWrap;

  const ConsentListView({
    super.key,
    required this.provider,
    required this.itemBuilder,
    required this.title,
    this.header,
    this.itemCount,
    this.physics,
    this.shrinkWrap = false,
  });

  @override
  ConsumerState<ConsentListView> createState() => _ConsentListViewState<T>();
}

class _ConsentListViewState<T extends ConsentModel>
    extends ConsumerState<ConsentListView> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(widget.provider);

    return Info(
      card: InfoCard(
        header: widget.header ??
            InfoHeader(
              title: widget.title,
              titleStyle: Theme.of(context).textTheme.titleLarge,
            ),
        body: _buildBody(state) as InfoList<dynamic>,
        backgroundColor: AppColors.white,
        isRound: true,
        showBorder: false,
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
      ),
    );
  }

  InfoList<T> _buildBody(ConsentListBase state) {
    if (state is ConsentListInitial) {
      return _buildInitialState();
    }

    if (state is ConsentListError) {
      return _buildErrorState(state);
    }

    if (state is ConsentListLoading) {
      return _buildLoadingState();
    }

    if (state is ConsentList<T>) {
      return _buildListState(state);
    }

    return _buildEmptyState();
  }

  InfoList<T> _buildInitialState() {
    return InfoList<T>(
      backgroundColor: AppColors.white,
      contentPadding: EdgeInsets.zero,
      items: List<T>.empty(),
      buildItem: (_) => const SizedBox(),
      buildEmptyItem: (_, __) => _buildEmptyState(),
    );
  }

  InfoList<T> _buildErrorState(ConsentListError state) {
    return InfoList<T>(
      backgroundColor: AppColors.white,
      contentPadding: EdgeInsets.zero,
      items: List<T>.empty(),
      buildItem: (_) => const SizedBox(),
      buildEmptyItem: (_, __) => Container(
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
            SelectableText.rich(
              TextSpan(
                text: state.message,
                style: const TextStyle(
                  color: AppColors.red500,
                  fontSize: 14,
                ),
              ),
            ),
            IconButton(
              onPressed: () => ref.invalidate(widget.provider),
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }

  InfoList<T> _buildLoadingState() {
    return InfoList<T>(
      backgroundColor: AppColors.white,
      contentPadding: EdgeInsets.zero,
      items: List<T>.empty(),
      buildItem: (_) => const SizedBox(),
      buildEmptyItem: (_, __) => createSkeletonList(
        itemBuilder: (BuildContext context) => const ConsentSkeletonItem(),
        itemCount: 3,
      ),
    );
  }

  InfoList<T> _buildListState(ConsentList<T> state) {
    if (state.resultData.isEmpty) {
      return _buildEmptyState();
    }

    return InfoList<T>(
      backgroundColor: AppColors.white,
      contentPadding: EdgeInsets.zero,
      items: state.resultData,
      shrinkWrap: widget.shrinkWrap,
      separatorBuilder: (context, index) => const SizedBox(),
      physics: widget.physics ?? const BouncingScrollPhysics(),
      itemDecoration: const BoxDecoration(
        border: Border(
            bottom: BorderSide(
          color: AppColors.gray100,
        )),
      ),
      buildItem: (T item) => widget.itemBuilder(
        context,
        state.resultData.indexOf(item),
        item,
      ),
      buildEmptyItem: (_, __) => _buildEmptyState(),
    );
  }

  InfoList<T> _buildEmptyState() {
    return InfoList<T>(
      backgroundColor: AppColors.white,
      contentPadding: EdgeInsets.zero,
      items: List<T>.empty(),
      buildItem: (_) => const SizedBox(),
      buildEmptyItem: (_, __) => Container(
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
              '환자정보를 선택해주세요.',
              style: TextStyle(
                color: AppColors.gray500,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
