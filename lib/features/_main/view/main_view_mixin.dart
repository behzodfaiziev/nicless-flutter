part of 'main_view.dart';

mixin MainViewMixin on State<MainView> {
  final List<PageRouteInfo> _routes = const [
    HomeRoute(),
    HomeRoute(),
    HomeRoute(),
    HomeRoute(),
  ];

  final List<BottomNavigationBarItem> _bottomBarItems = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.ac_unit),
      label: 'Sport',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'Statistics',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'Profile',
    ),
  ];
}
