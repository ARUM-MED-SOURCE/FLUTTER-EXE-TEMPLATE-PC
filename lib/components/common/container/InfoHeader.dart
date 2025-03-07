import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
abstract class InfoHeader extends StatelessWidget {
  final String title;
  const InfoHeader({
    super.key, 
    required this.title,
  });

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
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
