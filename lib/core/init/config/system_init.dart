import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../firebase_options.dart';
import '../../../product/init/injection_container/_injection_container.dart';
import '../../managers/database/hive/core/hive_database_manager.dart';
import 'app_config.dart';

class SystemInit {
  SystemInit._();

  static SystemInit? _instance;

  static SystemInit get instance => _instance ??= SystemInit._();

  Future<void> init() async {
    /// Needs to be called so that we can await for
    /// EasyLocalization.ensureInitialized();
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    /// Pass all uncaught "fatal" errors from the framework to Crashlytics
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

    /// Pass all uncaught asynchronous errors that aren't
    /// handled by the Flutter framework to Crashlytics
    PlatformDispatcher.instance.onError = (error, stack) {
      if (kDebugMode) {
        print('Caught error: $error');
        print(stack);
      } else {
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      }
      return true;
    };

    await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);

    /// Initialize InjectionContainer
    await InjectionContainer.instance.init();

    await HiveDatabaseManager().start();

    /// Initialize EasyLocalization
    await EasyLocalization.ensureInitialized();

    /// Set isAndroid
    AppConfig.instance.isAndroid = Platform.isAndroid;

    /// Set orientation to portrait
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
