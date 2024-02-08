import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/widgets/app_bar/base_app_bar.dart';
import '../../../../../product/init/injection_container/_injection_container.dart';
import '../../../../../product/navigator/app_router.dart';
import '../../../../../product/utils/constants/app/app_const.dart';
import '../../bloc/home/home_bloc.dart';
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
    return BlocProvider(
      create: (context) => bloc,
      child: Scaffold(
        appBar: const BaseAppBar(title: AppConst.appName),
        body: const SmokingList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.push(OnboardingRoute(isUserCreated: true)),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
