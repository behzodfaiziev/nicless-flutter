import 'package:auto_route/auto_route.dart';

import '../../features/_initial/landing/landing_view.dart';
import '../../features/_main/view/main_view.dart';
import '../../features/health/presentation/views/health_view.dart';
import '../../features/home/presentation/views/counter/counter_view.dart';
import '../../features/home/presentation/views/home/home_view.dart';
import '../../features/onboard/presentation/views/onboarding_view.dart';
import '../../features/profile/presentation/views/profile_view.dart';
import '../../features/statistics/presentation/views/statistics_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes =>
      <AutoRoute>[
        AutoRoute(page: LandingRoute.page,
        ),

        /// Onboarding Routes
        AutoRoute(
          page: OnboardingRoute.page,
          initial: true,
        ),

        /// Main Routes
        AutoRoute(
          page: MainRoute.page,
          children: [
            AutoRoute(page: HomeRoute.page),
            AutoRoute(page: HealthRoute.page),
            AutoRoute(page: StatisticsRoute.page),
            AutoRoute(page: ProfileRoute.page),
          ],
        ),

        AutoRoute(page: CounterRoute.page),
      ];
}

class EmptyViewRouter extends AutoRouter {
  const EmptyViewRouter({super.key});
}
