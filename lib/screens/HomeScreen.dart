import 'package:flutter/material.dart';
import 'package:flutter_exe/layout/default_layout.dart';
import 'package:flutter_exe/components/Sidebar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const DefaultLayout(
      child: Row(
        children: [
          Sidebar(),
          Expanded(child: Text('Home')),
        ],
      ),  
    );
  }
}
