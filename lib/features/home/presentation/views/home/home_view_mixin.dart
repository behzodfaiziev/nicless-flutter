part of 'home_view.dart';

mixin HomeViewMixin on State<HomeView> {
  final HomeBloc bloc = sl<HomeBloc>();

  @override
  void initState() {
    super.initState();
    bloc.add(FetchDevicesEvent());
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }
}
