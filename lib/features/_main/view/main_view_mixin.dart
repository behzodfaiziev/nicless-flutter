part of 'main_view.dart';

mixin MainViewMixin on State<MainView> {
  final List<PageRouteInfo> _routes = const [
    HomeRoute(),
    GeminiRoute(),
    RatingRoute(),
    ProfileRoute(),
  ];

  List<BottomNavigationBarItem> _bottomBarItems(
    BuildContext context,
    int activeIndex,
  ) {
    return [
      BottomNavigationBarItem(
        icon: BaseSvgAsset(
          asset: SVGConst.instance.home,
          color: _getIconColor(
            context,
            activeIndex,
            MainViewTabsEnum.home.index,
          ),
        ),
        label: LocaleKeys.buttons_home.tr(),
      ),
      BottomNavigationBarItem(
        icon: BaseSvgAsset(
          asset: SVGConst.instance.message,
          color: _getIconColor(
            context,
            activeIndex,
            MainViewTabsEnum.health.index,
          ),
        ),
        label: LocaleKeys.buttons_gemini.tr(),
      ),
      BottomNavigationBarItem(
        icon: BaseSvgAsset(
          asset: SVGConst.instance.award,
          color: _getIconColor(
            context,
            activeIndex,
            MainViewTabsEnum.statistics.index,
          ),
        ),
        label: LocaleKeys.buttons_rating.tr(),
      ),
      BottomNavigationBarItem(
        icon: BaseSvgAsset(
          asset: SVGConst.instance.user,
          color: _getIconColor(
            context,
            activeIndex,
            MainViewTabsEnum.profile.index,
          ),
        ),
        label: LocaleKeys.buttons_profile.tr(),
      ),
    ];
  }

  Color? _getIconColor(BuildContext context, int activeIndex, int index) {
    if (activeIndex == index) {
      return context.theme.bottomNavigationBarTheme.selectedItemColor;
    } else {
      return context.theme.bottomNavigationBarTheme.unselectedItemColor;
    }
  }
}
