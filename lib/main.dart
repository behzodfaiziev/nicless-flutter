import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'core/init/config/system_init.dart';
import 'my_app.dart';
import 'product/utils/constants/app/app_const.dart';

Future<void> main() async {
  await SystemInit.instance.init();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en', 'US')],
      path: AppConst.localizationPath,
      child: MyApp(),
    ),
  );
}
