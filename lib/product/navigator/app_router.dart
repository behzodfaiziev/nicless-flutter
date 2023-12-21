import 'package:auto_route/auto_route.dart';

import '../../features/_initial/landing/landing_view.dart';
import '../../features/_main/view/main_view.dart';
import '../../features/health/presentation/views/health_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/onboard/presentation/views/onboarding_view.dart';
import '../../features/profile/presentation/views/profile_view.dart';
import '../../features/statistics/presentation/views/statistics_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(page: LandingRoute.page),

        /// Onboarding Routes
        AutoRoute(page: OnboardingRoute.page),

        /// Main Routes
        AutoRoute(page: MainRoute.page, initial: true, children: [
          AutoRoute(page: HomeRoute.page),
          AutoRoute(page: HealthRoute.page),
          AutoRoute(page: StatisticsRoute.page),
          AutoRoute(page: ProfileRoute.page),
        ]),
        AutoRoute(page: HomeRoute.page),
      ];
}

class EmptyViewRouter extends AutoRouter {
  const EmptyViewRouter({super.key});
}
