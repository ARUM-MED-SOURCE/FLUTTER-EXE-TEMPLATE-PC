import 'package:flutter/material.dart';
import 'package:flutter_exe/constants/colors.dart';
import 'package:flutter_exe/components/main/MainHeader.dart';
import 'package:flutter_exe/components/main/MainContent.dart';
class MainComponent extends StatelessWidget {
  const MainComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blue50,
      child: Column(
        children: [
          MainHeader(),
          Expanded(
            child: MainContent(),
          ),
        ],
      ),
    );
  } 
}
