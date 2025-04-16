import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';

class BaseConsentItem extends StatelessWidget {
  final String id;
  final String name;
  final List<Widget> Function(BuildContext) buildLeadingWidgets;
  final List<Widget> Function(BuildContext) buildTrailingWidgets;

  const BaseConsentItem({
    required this.id,
    required this.name,
    required this.buildLeadingWidgets,
    required this.buildTrailingWidgets,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.gray100),
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 16,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ...buildLeadingWidgets(context),
            IntrinsicWidth(
              child: Text(
                name,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 14,
                    ),
              ),
            ),
            ...buildTrailingWidgets(context),
          ],
        ),
      ),
    );
  }
}

class CheckableConsentItem extends StatelessWidget {
  final String id;
  final String name;
  final bool isSelected;
  final VoidCallback onSelected;

  const CheckableConsentItem({
    required this.id,
    required this.name,
    required this.isSelected,
    required this.onSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BaseConsentItem(
      id: id,
      name: name,
      buildLeadingWidgets: (context) => [
        Text(
          '$id.',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 14,
              ),
        ),
        Checkbox(
          value: isSelected,
          onChanged: (_) => onSelected(),
          activeColor: AppColors.blue300,
          side: BorderSide(color: AppColors.gray150),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        const SizedBox(width: 8),
      ],
      buildTrailingWidgets: (_) => const [],
    );
  }
}

class FavoriteConsentItem extends StatelessWidget {
  final String id;
  final String name;
  final bool isSelected;
  final bool isFavorite;
  final VoidCallback onSelected;
  final VoidCallback onFavoriteToggled;

  const FavoriteConsentItem({
    required this.id,
    required this.name,
    required this.isSelected,
    required this.isFavorite,
    required this.onSelected,
    required this.onFavoriteToggled,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BaseConsentItem(
      id: id,
      name: name,
      buildLeadingWidgets: (context) => [
        SizedBox(
          width: 24,
          child: Text(
            '$id.',
            style: const TextStyle(fontSize: 14, color: AppColors.black),
          ),
        ),
        Checkbox(
          value: isSelected,
          onChanged: (_) => onSelected(),
          activeColor: AppColors.blue300,
          side: BorderSide(color: AppColors.gray200),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        const SizedBox(width: 8),
      ],
      buildTrailingWidgets: (context) => [
        IconButton(
          icon: Icon(
            isFavorite ? Icons.star : Icons.star_border,
            color: isFavorite ? AppColors.blue300 : AppColors.gray200,
          ),
          onPressed: onFavoriteToggled,
        ),
      ],
    );
  }
}

class TaggedConsentItem extends StatelessWidget {
  final String id;
  final String name;
  final String type;
  final String date;

  const TaggedConsentItem({
    required this.id,
    required this.name,
    required this.type,
    required this.date,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BaseConsentItem(
      id: id,
      name: name,
      buildLeadingWidgets: (context) => [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            color: AppColors.blue100,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text(
            type,
            style: const TextStyle(fontSize: 14, color: AppColors.blue300),
          ),
        ),
        const SizedBox(width: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(
            '[$date]',
            style: const TextStyle(fontSize: 14),
          ),
        ),
        const SizedBox(width: 8),
      ],
      buildTrailingWidgets: (_) => const [],
    );
  }
}

class QuickViewConsentItem extends StatelessWidget {
  final String id;
  final String type;
  final String number;
  final String os;
  final String doctor;
  final String printDateTime;
  final String writer;
  final String consentName;

  const QuickViewConsentItem({
    super.key,
    required this.id,
    required this.type,
    required this.number,
    required this.os,
    required this.doctor,
    required this.printDateTime,
    required this.writer,
    required this.consentName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: type == '임시저장' ? AppColors.blue50 : Colors.white,
        border: Border(
          bottom: BorderSide(color: AppColors.gray100),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Row(
          children: [
            _buildTypeChip(),
            const SizedBox(width: 16),
            _buildNumber(),
            const SizedBox(width: 16),
            _buildOS(),
            const SizedBox(width: 16),
            _buildDoctor(),
            const SizedBox(width: 16),
            _buildWard(),
            const SizedBox(width: 16),
            _buildDateTime(),
            const SizedBox(width: 16),
            Expanded(child: _buildConsentName()),
          ],
        ),
      ),
    );
  }

  Widget _buildTypeChip() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.blue100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        type,
        style: TextStyle(
          color: AppColors.blue400,
          fontSize: 12,
        ),
      ),
    );
  }

  Widget _buildNumber() {
    return SizedBox(
      width: 80,
      child: Text(
        number,
        style: TextStyle(
          color: AppColors.gray500,
          fontSize: 14,
        ),
      ),
    );
  }

  Widget _buildOS() {
    return SizedBox(
      width: 40,
      child: Text(
        os,
        style: TextStyle(
          color: AppColors.gray500,
          fontSize: 14,
        ),
      ),
    );
  }

  Widget _buildDoctor() {
    return SizedBox(
      width: 60,
      child: Text(
        doctor,
        style: TextStyle(
          color: AppColors.gray500,
          fontSize: 14,
        ),
      ),
    );
  }

  Widget _buildWard() {
    return SizedBox(
      width: 60,
      child: Text(
        'C3/79',
        style: TextStyle(
          color: AppColors.gray500,
          fontSize: 14,
        ),
      ),
    );
  }

  Widget _buildDateTime() {
    return Text(
      printDateTime,
      style: TextStyle(
        color: AppColors.gray300,
        fontSize: 14,
      ),
    );
  }

  Widget _buildConsentName() {
    return Text(
      consentName,
      style: TextStyle(
        color: AppColors.gray500,
        fontSize: 14,
      ),
      // overflow: TextOverflow.ellipsis,
    );
  }
}
