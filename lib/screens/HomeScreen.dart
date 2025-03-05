import 'package:flutter/material.dart';
import 'package:flutter_exe/layout/default_layout.dart';
import 'package:flutter_exe/components/Sidebar.dart';
import 'package:flutter_exe/components/main/MainComponent.dart';
import 'package:flutter_exe/components/search/ConsentSearch.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const DefaultLayout(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Sidebar(),
          Expanded(
            flex: 3,
            child: MainComponent()),
          Expanded(
            flex: 1,
            child: ConsentSearch()),
        ],
      ),  
    );
  }
}
