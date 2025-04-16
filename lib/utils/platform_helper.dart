import 'dart:io';
import 'package:flutter/foundation.dart';

class PlatformHelper {
  static bool get isDesktop => !kIsWeb && (Platform.isWindows || Platform.isMacOS || Platform.isLinux);
  static bool get isMobile => !kIsWeb && (Platform.isAndroid || Platform.isIOS);
  static bool get isWeb => kIsWeb;
} 