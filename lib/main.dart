import 'package:flutter/material.dart';

import 'product/navigator/app_router.dart';
import 'product/navigator/observer/app_route_observer.dart';
import 'product/theme/dark/app_theme_dark.dart';
import 'product/theme/light/_app_theme_light.dart';
import 'product/utils/constants/app/app_const.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: AppConst.appName,
        themeMode: ThemeMode.system,
        theme: AppThemeLight().theme,
        darkTheme: AppThemeDark().theme,
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(
            navigatorObservers: () => <NavigatorObserver>[AppRouteObserver()]),
        builder: (context, child) {
          return MediaQuery(
              data: MediaQuery.of(context)
                  .copyWith(textScaler: TextScaler.noScaling),
              child: child!);
        });
  }
}
