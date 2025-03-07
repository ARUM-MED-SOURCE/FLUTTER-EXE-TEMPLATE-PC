import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/components/common/container/InfoCard.dart';
import 'package:flutter_exe/components/common/container/InfoHeader.dart';
import 'package:flutter_exe/components/common/container/InfoList.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';

class ConsentSearch extends StatefulWidget {
  const ConsentSearch({super.key});

  @override
  State<ConsentSearch> createState() => _ConsentSearchState();
}

class _ConsentSearchState extends State<ConsentSearch> {
  String selectedOption = 'all';
  final Set<String> selectedConsents = {};
  final Set<String> favoriteConsents = {};

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ConsentSearchCard(
        header: ConsentSearchHeader(
          title: '동의서 검색',
          options: ConsentSearchOptions(
            selectedOption: selectedOption,
            onOptionChanged: (value) => setState(() => selectedOption = value),
          ),
          searchBar: const ConsentSearchBar(),
        ),
        body: ConsentSearchList(
          consents: _consentData,
          selectedConsents: selectedConsents,
          favoriteConsents: favoriteConsents,
          onConsentSelected: (consentId) => setState(() => selectedConsents.add(consentId)),
          onFavoriteToggled: (consentId) => setState(() => favoriteConsents.add(consentId)),
        ),
      ),
    );
  }
}

class ConsentSearchCard extends InfoCard {
  const ConsentSearchCard({
    required InfoHeader header,
    required InfoList body,
    super.key,
  }) : super(header: header, body: body);
}

class ConsentSearchHeader extends InfoHeader {
  final Widget options;
  final Widget searchBar;

  const ConsentSearchHeader({
    required String title,
    required this.options,
    required this.searchBar,
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
          options,
          searchBar,
        ],
      ),
    );
  }
}

class ConsentSearchOptions extends StatelessWidget {
  final String selectedOption;
  final Function(String) onOptionChanged;

  const ConsentSearchOptions({
    required this.selectedOption,
    required this.onOptionChanged,
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
    return Row(
      children: [
        Transform.scale(
          scale: 0.8,
          child: Radio(
            value: value,
            groupValue: selectedOption,
            onChanged: (value) => onOptionChanged(value!),
            activeColor: AppColors.blue300,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

class ConsentSearchBar extends StatelessWidget {
  const ConsentSearchBar({super.key});

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

class ConsentSearchList extends InfoList<Map<String, String>> {
  final Set<String> selectedConsents;
  final Set<String> favoriteConsents;
  final Function(String) onConsentSelected;
  final Function(String) onFavoriteToggled;

  const ConsentSearchList({
    required List<Map<String, String>> consents,
    required this.selectedConsents,
    required this.favoriteConsents,
    required this.onConsentSelected,
    required this.onFavoriteToggled,
    super.key,
  }) : super(items: consents);

  @override
  Widget buildItem(Map<String, String> consent) {
    return FavoriteConsentItem(
      name: consent['name'] ?? '',
      id: consent['id'] ?? '',
      isSelected: selectedConsents.contains(consent['id']),
      isFavorite: favoriteConsents.contains(consent['id']),
      onSelected: () => onConsentSelected(consent['id']!),
      onFavoriteToggled: () => onFavoriteToggled(consent['id']!),
    );
  }
}

const _consentData = [
  {
    'id': '1',
    'name': '제왕절개술 동의서'
  },
  {
    'id': '2',
    'name': '척추 신경 차단술 동의서'
  },
  {
    'id': '3',
    'name': '척추 신경 차단술 동의서'
  },
  {
    'id': '4',
    'name': '척추 신경 차단술 동의서'
  },
  {
    'id': '5',
    'name': '척추 신경 차단술 동의서'
  },
  {
    'id': '6',
    'name': '척추 신경 차단술 동의서'
  },
];


 