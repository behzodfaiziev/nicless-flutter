import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../product/navigator/app_router.dart';

part 'main_view_mixin.dart';

@RoutePage()
class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> with MainViewMixin {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: _routes,
      builder: (context, child, tabController) {
        return Scaffold(
          body: child,
          bottomNavigationBar: Container(
            color: context.theme.bottomNavigationBarTheme.backgroundColor,
            child: BottomNavigationBar(
              elevation: 5,
              selectedItemColor: context.colorScheme.primary,
              unselectedItemColor: Colors.grey,
              currentIndex: context.tabsRouter.activeIndex,
              onTap: context.tabsRouter.setActiveIndex,
              items: _bottomBarItems,
            ),
          ),
        );
      },
    );
  }
}
