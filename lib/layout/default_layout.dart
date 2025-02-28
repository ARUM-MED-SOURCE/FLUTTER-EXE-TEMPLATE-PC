import 'package:flutter/material.dart';


class DefaultLayout extends StatelessWidget {
  const DefaultLayout({
    super.key,
    required this.child,
    this.backgroundColor,
  });

  final Widget child;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? Colors.white,
      body: child,
    );
  }
}
