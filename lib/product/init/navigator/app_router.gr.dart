// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthCheckerRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthCheckerView(),
      );
    },
    AutomaticCounterRoute.name: (routeData) {
      final args = routeData.argsAs<AutomaticCounterRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AutomaticCounterView(
          smokingId: args.smokingId,
          connection: args.connection,
          device: args.device,
          key: args.key,
        ),
      );
    },
    CounterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CounterView(),
      );
    },
    GeminiRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GeminiView(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainView(),
      );
    },
    MapsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MapsView(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingView(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileView(),
      );
    },
    ReportRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ReportView(),
      );
    },
    SignInRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignInView(),
      );
    },
    SignUpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignUpView(),
      );
    },
  };
}

/// generated route for
/// [AuthCheckerView]
class AuthCheckerRoute extends PageRouteInfo<void> {
  const AuthCheckerRoute({List<PageRouteInfo>? children})
      : super(
          AuthCheckerRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthCheckerRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AutomaticCounterView]
class AutomaticCounterRoute extends PageRouteInfo<AutomaticCounterRouteArgs> {
  AutomaticCounterRoute({
    required String smokingId,
    BluetoothConnection? connection,
    BluetoothDeviceModel? device,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          AutomaticCounterRoute.name,
          args: AutomaticCounterRouteArgs(
            smokingId: smokingId,
            connection: connection,
            device: device,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'AutomaticCounterRoute';

  static const PageInfo<AutomaticCounterRouteArgs> page =
      PageInfo<AutomaticCounterRouteArgs>(name);
}

class AutomaticCounterRouteArgs {
  const AutomaticCounterRouteArgs({
    required this.smokingId,
    this.connection,
    this.device,
    this.key,
  });

  final String smokingId;

  final BluetoothConnection? connection;

  final BluetoothDeviceModel? device;

  final Key? key;

  @override
  String toString() {
    return 'AutomaticCounterRouteArgs{smokingId: $smokingId, connection: $connection, device: $device, key: $key}';
  }
}

/// generated route for
/// [CounterView]
class CounterRoute extends PageRouteInfo<void> {
  const CounterRoute({List<PageRouteInfo>? children})
      : super(
          CounterRoute.name,
          initialChildren: children,
        );

  static const String name = 'CounterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [GeminiView]
class GeminiRoute extends PageRouteInfo<void> {
  const GeminiRoute({List<PageRouteInfo>? children})
      : super(
          GeminiRoute.name,
          initialChildren: children,
        );

  static const String name = 'GeminiRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainView]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MapsView]
class MapsRoute extends PageRouteInfo<void> {
  const MapsRoute({List<PageRouteInfo>? children})
      : super(
          MapsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MapsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnboardingView]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileView]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ReportView]
class ReportRoute extends PageRouteInfo<void> {
  const ReportRoute({List<PageRouteInfo>? children})
      : super(
          ReportRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReportRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignInView]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute({List<PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignUpView]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
