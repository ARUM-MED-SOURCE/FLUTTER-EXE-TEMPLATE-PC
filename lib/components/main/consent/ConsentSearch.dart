import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';
import 'package:flutter_exe/components/main/set/SetBody.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/dataloaders/search_consent_dataloader.dart';
import 'package:flutter_exe/model/prescription_consent_data.dart';
import 'package:flutter_exe/model/search_consent_data.dart';
import 'package:flutter_exe/providers/search_consent_keyword_provider.dart';
import 'package:flutter_exe/providers/selected_consents_provider.dart';
import 'package:flutter_exe/providers/selected_favorite_consents_provider.dart';
import 'package:flutter_exe/providers/selected_option_provider.dart';
import 'package:flutter_list_ui/flutter_list_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/Skeleton.dart';

class ConsentSearch extends ConsumerWidget {
  const ConsentSearch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchResults = ref.watch(searchConsentDataLoaderProvider); // 검색 결과 정보를 가진 프로바이더 변수

    return Info(
      card: InfoCard(
        header: const _ConsentSearchHeader(title: "동의서 검색"),
        body: searchResults.when(
          /// DATA EXIST CASE
          data: (data) => InfoList<SearchConsentData>(
            shrinkWrap: false,
            physics: const BouncingScrollPhysics(),
            items: data?.resultData ?? [],
            buildItem: (consent) => Consumer(
              builder: (context, ref, _) {
                final id = consent.formId.toString();
                final name = consent.formName;

                if (id == null || name == null) {
                  return const SizedBox.shrink();
                }

                return FavoriteConsentItem(
                  name: name,
                  id: id,
                  isSelected: ref.watch(selectedConsentsProvider).contains(id),
                  isFavorite: ref.watch(selectedFavoriteConsentsProvider).contains(id),
                  onSelected: () {
                    final notifier = ref.read(selectedConsentsProvider.notifier);
                    notifier.toggleConsent(id);
                  },
                  onFavoriteToggled: () {
                    final notifier = ref.read(selectedFavoriteConsentsProvider.notifier);
                    notifier.toggleConsent(id);
                  },
                );
              },
            ),
            backgroundColor: Colors.white,
            contentPadding: EdgeInsets.zero,
          ),

          /// ERROR CASE
          error: (error, stackTrace) => InfoList(
            items: const ['empty'],
            buildItem: (item) => Center(
              child: SelectableText.rich(
                TextSpan(
                  text: 'Error: ',
                  style: const TextStyle(color: AppColors.red500),
                  children: [
                    TextSpan(
                      text: error.toString(),
                      style: const TextStyle(color: AppColors.red500),
                    ),
                  ],
                ),
              ),
            ),
          ),

          /// LOADING CASE
          loading: () => createSkeletonList<SearchConsentData>(
            itemBuilder: (consent) => const ConsentSkeletonItem(),
            emptyItemBuilder: (index) => const SearchConsentData(
              consentMstRid: 0,
              formName: '',
            ),
            itemCount: 4,
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
        ),
        backgroundColor: Colors.white,
        isRound: true,
        showBorder: false,
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
      ),
    );
  }
}

class _ConsentSearchHeader extends InfoHeader {
  const _ConsentSearchHeader({
    required this.title,
  }) : super(title: title);

  @override
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.gray100),
        ),
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _SetButton(),
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const _ConsentSearchOptions(),
          const _ConsentSearchBar(),
        ],
      ),
    );
  }
}

class _ConsentSearchOptions extends StatelessWidget {
  const _ConsentSearchOptions();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildRadioOption('all', '전체'),
        _buildRadioOption('set', '세트동의서'),
        _buildRadioOption('favorite', '즐겨찾기'),
      ],
    );
  }

  Widget _buildRadioOption(String value, String label) {
    return Consumer(
      builder: (context, ref, _) {
        return Row(
          children: [
            Transform.scale(
              scale: 0.8,
              child: Radio(
                value: value,
                groupValue: ref.watch(selectedOptionProvider),
                onChanged: (value) => ref.read(selectedOptionProvider.notifier).setOption(value!),
                activeColor: AppColors.blue300,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ),
            Text(label, style: const TextStyle(fontSize: 12)),
          ],
        );
      },
    );
  }
}

class _ConsentSearchBar extends ConsumerWidget {
  const _ConsentSearchBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      child: TextField(
        decoration: InputDecoration(
          hintText: '동의서 검색',
          hintStyle: const TextStyle(color: AppColors.gray500),
          filled: true,
          fillColor: AppColors.blue150,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          suffixIcon: IconButton(
              onPressed: () {
                ref.read(searchConsentDataLoaderProvider.notifier).getSearchConsent(
                    userId: 'userId', // TODO:: userId를 실제 아이디로 변경해야함
                    userPassword: 'userPassword'); // TODO :: userPassword를 실제 비밀번호로 변경해야함
              },
              icon: const Icon(Icons.search, color: AppColors.blue300)),
        ),
        onChanged: (value) {
          ref.read(searchConsentKeywordProvider.notifier).update(value);
        },
      ),
    );
  }
}

class _SetButton extends StatelessWidget{
  const _SetButton();

  @override
  Widget build(BuildContext context){
    return  Align(
        alignment: Alignment.centerRight,
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.blue300,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          ),
          icon: const Icon(Icons.library_books),
          label: const Text('세트동의서 관리'),
          onPressed: () {
            showDialog(
              context: context,
              barrierDismissible: true,
              builder: (BuildContext context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: SizedBox(
                    width: 1400,
                    height: 800,
                    child: const SetBody(),
                  ),
                );
              },
            );
          },
        )
    );
  }
}