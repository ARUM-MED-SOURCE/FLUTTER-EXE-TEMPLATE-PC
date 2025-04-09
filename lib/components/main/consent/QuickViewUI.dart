import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
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
          items: ['1', '2', '3'],
          buildItem: (item) => ListTile(
            title: Text(item),
          ),
        ),
      ),
    );
  }
} 