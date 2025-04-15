import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_exe/screens/login_screen.dart';
import 'package:flutter_exe/screens/main_screen.dart';

final router = GoRouter(
  initialLocation: '/main',
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/main',
      builder: (context, state) => const MainScreen(),
    ),
    // Add more routes as needed
  ],
);