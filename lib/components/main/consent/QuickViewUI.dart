import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/utils/dummy_data.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';
import 'package:flutter_list_ui/flutter_list_ui.dart';
import 'package:logger/logger.dart';
import 'dart:math' show max;

final logger = Logger();

class QuickViewItem extends InfoItemBase {
  final String id;
  final String type;
  final String number;
  final String os;
  final String doctor;
  final String printDateTime;
  final String writer;
  final String consentName;

  QuickViewItem({
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
  String get title => consentName;

  @override
  String get subtitle => '$number - $doctor';

  factory QuickViewItem.fromMap(Map<String, dynamic> map) {
    return QuickViewItem(
      id: map['id'] as String? ?? '',
      type: map['type'] as String? ?? '',
      number: map['number'] as String? ?? '',
      os: map['os'] as String? ?? '',
      doctor: map['doctor'] as String? ?? '',
      printDateTime: map['printDateTime'] as String? ?? '',
      writer: map['writer'] as String? ?? '',
      consentName: map['consentName'] as String? ?? '',
    );
  }
}

class QuickViewUI extends StatelessWidget {
  const QuickViewUI({super.key});

  @override
  Widget build(BuildContext context) {
    final items = quickViewData.map((item) => QuickViewItem.fromMap(item)).toList();

    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.gray100),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
          ),
          _buildListHeader(),
          Expanded(
            child: ListView.separated(
              itemCount: items.length,
              shrinkWrap: false,
              physics: const ClampingScrollPhysics(),
              separatorBuilder: (context, index) => const SizedBox(height: 0),
              itemBuilder: (context, index) => MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    logger.d('Selected Item ID: ${items[index].id}');
                  },
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const ClampingScrollPhysics(),
                        child: IntrinsicWidth(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              minWidth: constraints.maxWidth,
                            ),
                            child: QuickViewConsentItem(
                              id: items[index].id,
                              type: items[index].type,
                              number: items[index].number,
                              os: items[index].os,
                              doctor: items[index].doctor,
                              printDateTime: items[index].printDateTime,
                              writer: items[index].writer,
                              consentName: items[index].consentName,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: const BoxDecoration(
        color: AppColors.white,
        border: Border(
          bottom: BorderSide(color: AppColors.gray100),
        ),
      ),
      child: Row(
        children: [
          const SizedBox(width: 76),
          _buildHeaderText('동록번호', width: 80),
          const SizedBox(width: 16),
          _buildHeaderText('진료과', width: 40),
          const SizedBox(width: 16),
          _buildHeaderText('진료의', width: 60),
          const SizedBox(width: 16),
          _buildHeaderText('병동', width: 60),
          const SizedBox(width: 16),
          _buildHeaderText('출력일시/작성자명'),
          const SizedBox(width: 36),
          Expanded(child: _buildHeaderText('서식명')),
        ],
      ),
    );
  }

  Widget _buildHeaderText(String text, {double? width}) {
    final textWidget = Text(
      text,
      style: const TextStyle(
        fontSize: 14,
        color: AppColors.gray500,
        fontWeight: FontWeight.w500,
      ),
    );

    if (width != null) {
      return SizedBox(width: width, child: textWidget);
    }
    return textWidget;
  }
} 

class _QuickViewHeader extends InfoHeader {
  const _QuickViewHeader({
    required this.title,
  }) : super(title: title);
  
  @override
  final String title;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.gray100),
        ),
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
        ],
      ),
    );
  }
} 