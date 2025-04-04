import 'package:flutter/material.dart';
import 'package:flutter_exe/components/main/header/MainHeader.dart';
import 'package:flutter_exe/constants/colors.dart';

import 'package:flutter_exe/components/main/MainBody.dart';

class MainComponent extends StatelessWidget {
  const MainComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blue50,
      child: const Column(
        children: [
          MainHeader(),
          Expanded(
            child: MainBody(),
          ),
        ],
      ),
    );
  } 
}
