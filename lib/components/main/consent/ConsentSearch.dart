import 'package:flutter/material.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/model/prescription_consent_data.dart';
import 'package:flutter_exe/providers/selected_consents_provider.dart';
import 'package:flutter_exe/providers/selected_favorite_consents_provider.dart';
import 'package:flutter_exe/providers/selected_option_provider.dart';
import 'package:flutter_list_ui/flutter_list_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConsentSearch extends StatelessWidget {
  final List<PrescriptionConsentData> searchResults;

  const ConsentSearch({
    super.key,
    required this.searchResults,
  });

  @override
  Widget build(BuildContext context) {
    return Info(
      card: InfoCard(
        header: const _ConsentSearchHeader(title: "동의서 검색"),
        body: InfoList<PrescriptionConsentData>(
          shrinkWrap: false,
          physics: const BouncingScrollPhysics(),
          items: searchResults,
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
                isFavorite:
                    ref.watch(selectedFavoriteConsentsProvider).contains(id),
                onSelected: () {
                  final notifier = ref.read(selectedConsentsProvider.notifier);
                  notifier.toggleConsent(id);
                },
                onFavoriteToggled: () {
                  final notifier =
                      ref.read(selectedFavoriteConsentsProvider.notifier);
                  notifier.toggleConsent(id);
                },
              );
            },
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
    );
  }
}

class _ConsentSearchHeader extends InfoHeader {
  const _ConsentSearchHeader({
    required this.title,
  }) : super(title: title);

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
                onChanged: (value) =>
                    ref.read(selectedOptionProvider.notifier).setOption(value!),
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

class _ConsentSearchBar extends StatelessWidget {
  const _ConsentSearchBar();

  @override
  Widget build(BuildContext context) {
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
          suffixIcon: const Icon(Icons.search, color: AppColors.blue300),
        ),
      ),
    );
  }
}
