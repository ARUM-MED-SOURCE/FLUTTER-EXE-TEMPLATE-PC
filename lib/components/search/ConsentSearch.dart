import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/providers/selected_option_provider.dart';
import 'package:flutter_exe/components/common/container/Info.dart';
import 'package:flutter_exe/components/common/container/InfoCard.dart';
import 'package:flutter_exe/components/common/container/InfoHeader.dart';
import 'package:flutter_exe/components/common/container/InfoList.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';
import 'package:flutter_exe/providers/selected_consents_provider.dart';
import 'package:flutter_exe/providers/selected_favorite_consents_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConsentSearch extends Info {
  const ConsentSearch({super.key}) : super(
    card: const _ConsentSearchCard(
      header: _ConsentSearchHeader(title: '동의서 검색'),
      body: _ConsentSearchList(
        consents: _consentData,
      ),
    ),
    paddingOption: 'symmetric',
    paddingVertical: 0.0,
    paddingHorizontal: 0.0,
  );
}

class _ConsentSearchCard extends InfoCard {
  const _ConsentSearchCard({
    required InfoHeader header,
    required InfoList body,
    super.key,
  }) : super(header: header, body: body, isRound: false);
}

class _ConsentSearchHeader extends InfoHeader {
  const _ConsentSearchHeader({
    required String title,
    super.key,
  }) : super(title: title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
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
          _ConsentSearchOptions(),
          const _ConsentSearchBar(),
        ],
      ),
    );
  }
}

class _ConsentSearchOptions extends StatelessWidget {

  const _ConsentSearchOptions({
    super.key,
  });

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

class _ConsentSearchBar extends StatelessWidget {
  const _ConsentSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: '동의서 검색',
          hintStyle: TextStyle(color: AppColors.gray500),
          filled: true,
          fillColor: AppColors.blue150,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          suffixIcon: Icon(Icons.search, color: AppColors.blue300),
        ),
      ),
    );
  }
}

class _ConsentSearchList extends InfoList<Map<String, String>> {
  final List<Map<String, String>>? consents;

  const _ConsentSearchList({
    this.consents,
    super.key,
  }) : super(items: const []);

  @override
  List<Map<String, String>> get items => consents ?? const [];

  @override
  Widget build(BuildContext context) {
    if (consents == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (consents!.isEmpty) {
      return const Center(
        child: Text(
          '검색 결과가 없습니다.',
          style: TextStyle(
            color: AppColors.gray500,
            fontSize: 14,
          ),
        ),
      );
    }

    return super.build(context);
  }

  @override
  Widget buildItem(Map<String, String> consent) {
    return Consumer(
      builder: (context, ref, _) {
        final id = consent['id'];
        final name = consent['name'];
        
        // 필수 데이터가 없는 경우 처리
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
    );
  }
}

const _consentData = <Map<String, String>>[
  // {
  //   'id': '1',
  //   'name': '제왕절개술 동의서'
  // },
  // {
  //   'id': '2',
  //   'name': '척추 신경 차단술 동의서'
  // },
  // {
  //   'id': '3',
  //   'name': '척추 신경 차단술 동의서'
  // },
  // {
  //   'id': '4',
  //   'name': '척추 신경 차단술 동의서'
  // },
  // {
  //   'id': '5',
  //   'name': '척추 신경 차단술 동의서'
  // },
  // {
  //   'id': '6',
  //   'name': '척추 신경 차단술 동의서'
  // },
];


 