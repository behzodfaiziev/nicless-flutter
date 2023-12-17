import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/managers/print/print_dev_manager.dart';

class AppRouteObserver extends AutoRouterObserver {
  final PrintDev printDev = PrintDev.instance;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    printDev.onRoute('New route pushed(didPush): ${route.settings.name}');
  }

  // only override to observer tab routes
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    printDev.onRoute('Tab route visited(didInitTabRoute): ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    printDev.onRoute('Tab route re-visited(didChangeTabRoute): ${route.name}');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    printDev.onRoute('Route popped (didPop): ${route.settings.name}');
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    printDev.onRoute('Route removed(didRemove): ${route.settings.name}');
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    printDev.onRoute('Route replaced(didReplace): ${newRoute?.settings.name}');
  }

  @override
  void didStartUserGesture(
      Route<dynamic> route, Route<dynamic>? previousRoute) {
    printDev
        .onRoute('User started gesture(didReplace): ${route.settings.name}');
  }

  @override
  void didStopUserGesture() {
    printDev.onRoute('User stopped gesture');
  }
}
