import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';
import 'dart:io';
import 'package:flutter_exe/screens/MainScreen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() {

WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('전자동의시스템');
    setWindowMinSize(const Size(1920, 1080));
    setWindowMaxSize(const Size(2560, 1440));
    setWindowFrame(Rect.fromLTWH(
      0,
      0,
      1920,
      1080,
    ));
  }

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ko', 'KR'),
        Locale('en', 'US'),
      ],
      home: HomeScreen(),
    );
  }
}

  