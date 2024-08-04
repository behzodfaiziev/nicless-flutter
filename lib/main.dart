import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'core/init/config/system_init.dart';
import 'my_app.dart';
import 'product/utils/constants/app/app_const.dart';

Future<void> main() async {
  HttpOverrides.global = MyHttpOverrides();

  await SystemInit.instance.init();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en', 'US')],
      path: AppConst.localizationPath,
      child: MyApp(),
    ),
  );
}

/// Temporary solution for SSL handshake error
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
