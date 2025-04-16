import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_exe/router/router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:window_manager/window_manager.dart';
import 'utils/platform_helper.dart';
import 'package:flutter/services.dart';

// 데스크톱 설정
class DesktopConfig {
  static const windowOptions = WindowOptions(
    size: Size(1280, 800),
    minimumSize: Size(1024, 768),
    maximumSize: Size(1920, 1080),
    center: true,
    title: '전자동의시스템',
    backgroundColor: Colors.transparent,
    titleBarStyle: TitleBarStyle.normal,
  );

  static Future<void> initialize() async {
    if (!PlatformHelper.isDesktop) return;

    try {
      await windowManager.ensureInitialized();
      await windowManager.waitUntilReadyToShow(windowOptions, () async {
        await windowManager.show();
        await windowManager.focus();
        await windowManager.setResizable(true);
      });
    } catch (e) {
      debugPrint('Failed to initialize desktop config: $e');
    }
  }
}

// 모바일 설정
class MobileConfig {
  static Future<void> initialize() async {
    if (!PlatformHelper.isMobile) return;
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }
}

Future<void> initializePlatform() async {
  await DesktopConfig.initialize();
  await MobileConfig.initialize();
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializePlatform();

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
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
        useMaterial3: true,
        platform: PlatformHelper.isDesktop 
          ? TargetPlatform.windows 
          : Theme.of(context).platform,
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ko', 'KR'),
        Locale('en', 'US'),
      ],
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.trackpad,
        },
      ),
    );
  }
}

  