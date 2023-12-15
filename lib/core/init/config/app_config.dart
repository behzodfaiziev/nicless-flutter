import 'dart:io';
import 'package:flutter/foundation.dart';

import '../../enums/app/platform_os_enum.dart';

class AppConfig {
  /// It is created to make tests easier to execute
  /// Use it instead of Platform.isAndroid to be able to
  /// where this getter is used
  bool isAndroid = true;

  AppConfig._();

  static AppConfig? _instance;

  static AppConfig get instance => _instance ??= AppConfig._();

  /// This getter gives real platform OS,
  /// not depending on faked [isAndroid] on tests
  PlatformOSEnum get platformOS {
    if (kIsWeb) return PlatformOSEnum.web;
    return Platform.isAndroid ? PlatformOSEnum.android : PlatformOSEnum.ios;
  }

  String get platformOSName {
    return platformOS.platformName;
  }
}
