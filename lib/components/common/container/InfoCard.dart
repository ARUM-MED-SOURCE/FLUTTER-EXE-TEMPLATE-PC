import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/components/common/container/InfoHeader.dart';
import 'package:flutter_exe/components/common/container/InfoList.dart';

class InfoCard extends StatelessWidget {
  final InfoHeader header;  
  final InfoList body;
  final bool isRound;
  const InfoCard({
    super.key, 
    required this.header, 
    required this.body,
    this.isRound = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: isRound ? BorderRadius.circular(20) : null,
        // border: Border.all(color: AppColors.gray100.withOpacity(0.5)),
      ),
      child: Column(
        children: [header, body],
      ),
    );
  }
}
