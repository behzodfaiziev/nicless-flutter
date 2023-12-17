import 'package:flutter/material.dart';

import 'product/navigator/app_router.dart';
import 'product/navigator/observer/app_route_observer.dart';

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
        title: 'Nicless',
        themeMode: ThemeMode.system,
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(
            navigatorObservers: () => <NavigatorObserver>[
                  AppRouteObserver(),
                ]),
        builder: (context, child) {
          return MediaQuery(
              data: MediaQuery.of(context)
                  .copyWith(textScaler: TextScaler.noScaling),
              child: child!);
        });
  }
}
