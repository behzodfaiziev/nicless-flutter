import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/app_bar/base_app_bar.dart';
import '../../../../../product/utils/constants/app/app_const.dart';
import 'modules/smoking_list.dart';

part 'home_view_mixin.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const BaseAppBar(
        title: AppConst.appName,
      ),
      body: const SmokingList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
