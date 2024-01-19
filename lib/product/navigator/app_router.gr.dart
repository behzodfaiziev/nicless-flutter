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
    AutomaticCounterRoute.name: (routeData) {
      final args = routeData.argsAs<AutomaticCounterRouteArgs>(
          orElse: () => const AutomaticCounterRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AutomaticCounterView(
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
    HealthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HealthView(),
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
    StatisticsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const StatisticsView(),
      );
    },
  };
}

/// generated route for
/// [AutomaticCounterView]
class AutomaticCounterRoute extends PageRouteInfo<AutomaticCounterRouteArgs> {
  AutomaticCounterRoute({
    String device = 'AutomaticCounterView',
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          AutomaticCounterRoute.name,
          args: AutomaticCounterRouteArgs(
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
    this.device = 'AutomaticCounterView',
    this.key,
  });

  final String device;

  final Key? key;

  @override
  String toString() {
    return 'AutomaticCounterRouteArgs{device: $device, key: $key}';
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
/// [HealthView]
class HealthRoute extends PageRouteInfo<void> {
  const HealthRoute({List<PageRouteInfo>? children})
      : super(
          HealthRoute.name,
          initialChildren: children,
        );

  static const String name = 'HealthRoute';

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
/// [StatisticsView]
class StatisticsRoute extends PageRouteInfo<void> {
  const StatisticsRoute({List<PageRouteInfo>? children})
      : super(
          StatisticsRoute.name,
          initialChildren: children,
        );

  static const String name = 'StatisticsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
