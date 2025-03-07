import 'package:flutter/material.dart';
import 'package:flutter_exe/styles/patient_styles.dart';
import 'package:flutter_exe/constants/colors.dart';

abstract class InfoList<T> extends StatelessWidget {
  final List<T> items;
  const InfoList({
    super.key, 
    required this.items,
  });

  Widget buildItem(T item);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return buildItem(item);
          },
        ),
      ),
    );
  }
}
