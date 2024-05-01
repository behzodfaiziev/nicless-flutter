import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../core/widgets/assets/base_svg_asset.dart';
import '../../../product/enums/views/main_view_tabs_enum.dart';
import '../../../product/init/navigator/app_router.dart';
import '../../../product/utils/constants/asset_paths/svg_const.dart';
import '../../../product/utils/constants/ui_constants/size_const.dart';

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
      physics: const NeverScrollableScrollPhysics(),
      builder: (context, child, tabController) {
        return Scaffold(
          body: child,
          bottomNavigationBar: SizedBox(
            height: SizeConst.bottomNavBarHeight,
            child: BottomNavigationBar(
              currentIndex: context.tabsRouter.activeIndex,
              onTap: context.tabsRouter.setActiveIndex,
              items: _bottomBarItems(context, context.tabsRouter.activeIndex),
            ),
          ),
        );
      },
    );
  }
}