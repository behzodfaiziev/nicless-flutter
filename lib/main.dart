import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/init/config/system_init.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/bluetooth/presentation/bloc/bluetooth_bloc.dart';
import 'features/gemini/presentation/bloc/gemini_bloc.dart';
import 'product/init/injection_container/_injection_container.dart';
import 'product/init/navigator/app_router.dart';
import 'product/init/navigator/observer/app_route_observer.dart';
import 'product/theme/dark/app_theme_dark.dart';
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

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<AuthBloc>()),
        BlocProvider(create: (_) => sl<BluetoothBloc>()),
        BlocProvider(create: (_) => sl<GeminiBloc>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: AppConst.appName,

        /// Theme
        theme: AppThemeDark().theme,
        darkTheme: AppThemeDark().theme,

        /// Localization
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,

        /// Router
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(
          navigatorObservers: () => <NavigatorObserver>[AppRouteObserver()],
        ),

        /// Builder
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context)
                .copyWith(textScaler: TextScaler.noScaling),
            child: child!,
          );
        },
      ),
    );
  }
}
