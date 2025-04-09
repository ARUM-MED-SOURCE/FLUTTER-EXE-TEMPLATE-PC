import 'package:flutter/material.dart';
import 'package:flutter_exe/components/main/ConsentRouter.dart';
import 'package:flutter_exe/components/navigation/Topbar.dart';
import 'package:flutter_exe/layout/default_layout.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultLayout(
      child: Column(
        children: [
          TopBar(),
          _Body(),
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: ConsentRouter(),
    );
  }
}

