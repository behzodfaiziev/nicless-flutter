import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_config.dart';

class SystemInit {
  static SystemInit? _instance;

  static SystemInit get instance => _instance ??= SystemInit._();

  SystemInit._();

  Future<void> init() async {
    /// Needs to be called so that we can await for
    /// EasyLocalization.ensureInitialized();
    WidgetsFlutterBinding.ensureInitialized();

    /// Initialize InjectionContainer
    await InjectionContainer.instance.init();

    await HiveDatabaseManager().start();

    /// Set isAndroid
    AppConfig.instance.isAndroid = Platform.isAndroid;

    /// Set orientation to portrait
    await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }
}
