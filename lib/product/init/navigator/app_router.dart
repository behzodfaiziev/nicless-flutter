import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

import '../../../features/_main/view/main_view.dart';
import '../../../features/auth/presentation/views/auth_checker/auth_checker_view.dart';
import '../../../features/auth/presentation/views/landing/landing_view.dart';
import '../../../features/bluetooth/data/models/bluetooth_device_model.dart';
import '../../../features/gemini/presentation/view/gemini_view.dart';
import '../../../features/home/presentation/views/automatic_counter/automatic_counter_view.dart';
import '../../../features/home/presentation/views/counter/counter_view.dart';
import '../../../features/home/presentation/views/home/home_view.dart';
import '../../../features/maps/presentation/views/maps_view.dart';
import '../../../features/onboard/presentation/views/onboarding_view.dart';
import '../../../features/profile/presentation/views/profile_view.dart';
import '../../../features/rating/presentation/views/rating_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        /// Auth Routes
        AutoRoute(page: LandingRoute.page),
        AutoRoute(page: AuthCheckerRoute.page, initial: true),

        /// Onboarding Routes
        AutoRoute(page: OnboardingRoute.page),

        /// Main Routes
        AutoRoute(
          page: MainRoute.page,
          children: [
            AutoRoute(page: HomeRoute.page),
            AutoRoute(page: GeminiRoute.page),
            AutoRoute(page: RatingRoute.page),
            AutoRoute(page: ProfileRoute.page),
          ],
        ),

        AutoRoute(page: CounterRoute.page),
        AutoRoute(
          page: AutomaticCounterRoute.page,
        ),

        /// Maps Route
        AutoRoute(page: MapsRoute.page),
      ];
}

class EmptyViewRouter extends AutoRouter {
  const EmptyViewRouter({super.key});
}
