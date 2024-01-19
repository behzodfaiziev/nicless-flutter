import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

import '../../../../../core/base/view/base_view.dart';
import '../../../../../core/widgets/app_bar/base_app_bar.dart';
import '../../../../../core/widgets/lottie/base_lottie.dart';
import '../../../../../product/utils/constants/asset_paths/lottie_const.dart';
import '../../../../bluetooth/data/models/bluetooth_device_model.dart';
import '../../bloc/automatic_counter/automatic_counter_bloc.dart';

part 'automatic_counter_view_mixin.dart';

@RoutePage()
class AutomaticCounterView extends StatefulWidget {
  const AutomaticCounterView({
    this.connection,
    this.device,
    super.key,
  });

  final BluetoothConnection? connection;
  final BluetoothDeviceModel? device;

  @override
  State<AutomaticCounterView> createState() => _AutomaticCounterViewState();
}

class _AutomaticCounterViewState extends State<AutomaticCounterView>
    with AutomaticCounterViewMixin, SingleTickerProviderStateMixin {
  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
      reverseDuration: const Duration(seconds: 1),
      upperBound: 0.5,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext ctx) {
    return BaseView<AutomaticCounterBloc>(
      bloc: AutomaticCounterBloc(),
      viewName: toString(),
      onBlocReady: (AutomaticCounterBloc bloc) {},
      onPageBuilder: (BuildContext context, AutomaticCounterBloc bloc) {
        return Scaffold(
          appBar: const BaseAppBar(title: 'Automatic Counter'),
          body: BlocListener<AutomaticCounterBloc, AutomaticCounterState>(
            listener: (context, state) {
              if (state is AutomaticCounterStarted) {
                setIsInhalingStreamSubscription(context);
              }
            },
            child: Center(
              child: BaseLottie(
                  assetPath: LottieConst.instance.lungs,
                  controller: animationController),
            ),
          ),
          floatingActionButton: const StartButton(),
        );
      },
    );
  }
}

class StartButton extends StatelessWidget {
  const StartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        context
            .read<AutomaticCounterBloc>()
            .add(const StartAutomaticCounterEvent());
      },
      child: const Icon(Icons.compare_arrows_rounded),
    );
  }
}
