import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/init/config/system_init.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/bluetooth/presentation/bloc/bluetooth_bloc.dart';
import 'product/init/injection_container/_injection_container.dart';
import 'product/navigator/app_router.dart';
import 'product/navigator/observer/app_route_observer.dart';
import 'product/theme/dark/app_theme_dark.dart';
import 'product/utils/constants/app/app_const.dart';

Future<void> main() async {
  await SystemInit.instance.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<AuthBloc>()),
        BlocProvider(create: (_) => sl<BluetoothBloc>()),
      ],
      child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: AppConst.appName,
          themeMode: ThemeMode.system,
          theme: AppThemeDark().theme,
          darkTheme: AppThemeDark().theme,
          routeInformationParser: _appRouter.defaultRouteParser(),
          routerDelegate: _appRouter.delegate(
              navigatorObservers: () =>
                  <NavigatorObserver>[AppRouteObserver()]),
          builder: (context, child) {
            return MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(textScaler: TextScaler.noScaling),
                child: child!);
          }),
    );
  }
}
