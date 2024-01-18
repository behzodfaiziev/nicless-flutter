import 'dart:io';
import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../firebase_options.dart';
import '../../../product/init/injection_container/_injection_container.dart';
import '../../managers/database/hive/core/hive_database_manager.dart';
import 'app_config.dart';

class SystemInit {
  static SystemInit? _instance;

  static SystemInit get instance => _instance ??= SystemInit._();

  SystemInit._();

  Future<void> init() async {
    /// Needs to be called so that we can await for
    /// EasyLocalization.ensureInitialized();
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    /// Pass all uncaught "fatal" errors from the framework to Crashlytics
    FlutterError.onError = (errorDetails) {
      FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
    };

    /// Pass all uncaught asynchronous errors that aren't
    /// handled by the Flutter framework to Crashlytics
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };

    /// Initialize InjectionContainer
    await InjectionContainer.instance.init();

    await HiveDatabaseManager().start();

    /// Set isAndroid
    AppConfig.instance.isAndroid = Platform.isAndroid;

    /// Set orientation to portrait
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
