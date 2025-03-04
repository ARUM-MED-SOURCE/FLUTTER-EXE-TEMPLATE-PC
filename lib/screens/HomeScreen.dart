import 'package:flutter/material.dart';
import 'package:flutter_exe/layout/default_layout.dart';
import 'package:flutter_exe/components/Sidebar.dart';
import 'package:flutter_exe/components/main/MainComponent.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const DefaultLayout(
      child: Row(
        children: [
          Sidebar(),
          Expanded(child: MainComponent()),
          SizedBox(width: 100, height: 100, child: Text('Home')),
        ],
      ),  
    );
  }
}
