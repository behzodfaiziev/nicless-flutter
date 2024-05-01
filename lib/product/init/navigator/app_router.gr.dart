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
      final args = routeData.argsAs<AutomaticCounterRouteArgs>(
          orElse: () => const AutomaticCounterRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AutomaticCounterView(
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
    LandingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LandingView(),
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
      final args = routeData.argsAs<OnboardingRouteArgs>(
          orElse: () => const OnboardingRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OnboardingView(
          isUserCreated: args.isUserCreated,
          key: args.key,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileView(),
      );
    },
    RatingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RatingView(),
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
    BluetoothConnection? connection,
    BluetoothDeviceModel? device,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          AutomaticCounterRoute.name,
          args: AutomaticCounterRouteArgs(
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
    this.connection,
    this.device,
    this.key,
  });

  final BluetoothConnection? connection;

  final BluetoothDeviceModel? device;

  final Key? key;

  @override
  String toString() {
    return 'AutomaticCounterRouteArgs{connection: $connection, device: $device, key: $key}';
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
/// [LandingView]
class LandingRoute extends PageRouteInfo<void> {
  const LandingRoute({List<PageRouteInfo>? children})
      : super(
          LandingRoute.name,
          initialChildren: children,
        );

  static const String name = 'LandingRoute';

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
class OnboardingRoute extends PageRouteInfo<OnboardingRouteArgs> {
  OnboardingRoute({
    bool isUserCreated = false,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          OnboardingRoute.name,
          args: OnboardingRouteArgs(
            isUserCreated: isUserCreated,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const PageInfo<OnboardingRouteArgs> page =
      PageInfo<OnboardingRouteArgs>(name);
}

class OnboardingRouteArgs {
  const OnboardingRouteArgs({
    this.isUserCreated = false,
    this.key,
  });

  final bool isUserCreated;

  final Key? key;

  @override
  String toString() {
    return 'OnboardingRouteArgs{isUserCreated: $isUserCreated, key: $key}';
  }
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
/// [RatingView]
class RatingRoute extends PageRouteInfo<void> {
  const RatingRoute({List<PageRouteInfo>? children})
      : super(
          RatingRoute.name,
          initialChildren: children,
        );

  static const String name = 'RatingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
