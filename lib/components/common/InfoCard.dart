import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';

abstract class InfoCard extends StatelessWidget {
  final Widget header;  
  final Widget body;
  const InfoCard({super.key, required this.header, required this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.gray100.withOpacity(0.5)),
      ),
      child: Column(
        children: [header, body],
      ),
    );
  }
}
