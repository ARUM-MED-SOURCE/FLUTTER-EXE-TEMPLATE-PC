import 'package:flutter/material.dart';
import 'package:flutter_exe/layout/default_layout.dart';
import 'package:flutter_exe/components/main/MainComponent.dart';
import 'package:flutter_exe/components/search/ConsentSearch.dart';
import 'package:flutter_exe/components/Topbar.dart';
import 'package:flutter_exe/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: Column(
        children: [
          TopBar(),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: MainComponent(),
                ),
                Expanded(
                  flex: 1,
                  child: ConsentSearch(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
