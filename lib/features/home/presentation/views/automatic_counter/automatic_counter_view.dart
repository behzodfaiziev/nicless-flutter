import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../../../core/base/view/base_view.dart';
import '../../../../../core/widgets/app_bar/base_app_bar.dart';
import '../../../../../core/widgets/lottie/base_lottie.dart';
import '../../../../../product/utils/constants/asset_paths/lottie_const.dart';
import '../../bloc/automatic_counter/automatic_counter_bloc.dart';

part 'automatic_counter_view_mixin.dart';

@RoutePage()
class AutomaticCounterView extends StatefulWidget {
  const AutomaticCounterView({
    this.device = 'AutomaticCounterView',
    super.key,
  });

  final String device;

  @override
  State<AutomaticCounterView> createState() => _AutomaticCounterViewState();
}

class _AutomaticCounterViewState extends State<AutomaticCounterView>
    with AutomaticCounterViewMixin, SingleTickerProviderStateMixin {
  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(seconds: 2), upperBound: 0.5);
    super.initState();
  }

  late final AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    return BaseView<AutomaticCounterBloc>(
      bloc: AutomaticCounterBloc(),
      viewName: toString(),
      onBlocReady: (AutomaticCounterBloc bloc) {},
      onPageBuilder: (BuildContext context, AutomaticCounterBloc bloc) {
        return Scaffold(
          appBar: const BaseAppBar(title: 'Automatic Counter'),
          body: Center(
            child: BaseLottie(
              assetPath: LottieConst.instance.lungs,
              controller: animationController,
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              if (animationController.isCompleted) {
                animationController.reverse();
              } else {
                animationController.forward();
              }
            },
            child: const Icon(Icons.compare_arrows_rounded),
          ),
        );
      },
    );
  }
}
