import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {  
    return Container(
      width: 1000,
      height: 1000,
      color: AppColors.blue50,
      child: Column(
        children: [
          Text('MainContent'),
        ],
      ),
    );
  }
}