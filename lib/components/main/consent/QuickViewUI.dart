import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/utils/dummy_data.dart';
import 'package:flutter_exe/components/common/ConsentItem.dart';
import 'package:flutter_list_ui/flutter_list_ui.dart';



class QuickViewUI extends StatelessWidget {
  const QuickViewUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Info(
      card: InfoCard(
        header: InfoHeader(
          title: '빠른조회',
          titleStyle: Theme.of(context).textTheme.titleLarge,
        ),
        body: InfoList(
          items: quickViewData,
          shrinkWrap: false,
          physics: const ClampingScrollPhysics(),
          separatorBuilder: (context, index) => const SizedBox(height: 0),
          buildItem: (item) => QuickViewConsentItem(
            id: item['id'],
            type: item['type'],
            number: item['number'],
            os: item['os'],
            doctor: item['doctor'],
            printDateTime: item['printDateTime'],
            writer: item['writer'],
            consentName: item['consentName'],
          ),
        ),
        backgroundColor: AppColors.white,
        isRound: false,
        showBorder: false,
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
      ),
    );
  }
} 