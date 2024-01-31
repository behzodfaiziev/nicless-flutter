import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

import '../../../../../core/base/view/base_view.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/widgets/app_bar/base_app_bar.dart';
import '../../../../../core/widgets/buttons/base_elevated_button.dart';
import '../../../../../core/widgets/lottie/base_lottie.dart';
import '../../../../../product/utils/constants/asset_paths/lottie_const.dart';
import '../../../../../product/utils/constants/ui_constants/padding_const.dart';
import '../../../../bluetooth/data/models/bluetooth_device_model.dart';
import '../../bloc/automatic_counter/automatic_counter_bloc.dart';

part 'automatic_counter_view_mixin.dart';

part 'modules/usage_progress.dart';

part 'modules/progress_card.dart';

part 'modules/total_amount_of_usage.dart';

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
        return BlocProvider(
          create: (context) => AutomaticCounterBloc(),
          child: Scaffold(
            appBar: const BaseAppBar(title: 'Forest Berry'),
            body: BlocListener<AutomaticCounterBloc, AutomaticCounterState>(
              listener: (context, state) {
                if (state is AutomaticCounterStarted) {
                  setIsInhalingStreamSubscription(context);
                }
              },
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: message(),
                  ),
                  Expanded(
                    flex: 5,
                    child: Center(
                      child: BaseLottie(
                          assetPath: LottieConst.instance.lungs,
                          controller: animationController),
                    ),
                  ),
                  const Expanded(
                      flex: 5,
                      child: _TotalAmountOfUsage(maxPuffs: 10, maxSeconds: 60)),
                  Expanded(
                    flex: 3,
                    child: Center(
                      child: Padding(
                        padding: PaddingConst.horizontal24,
                        child: BaseElevatedButton(
                          child: Text(
                            'Finish',
                            style: context.theme.textTheme.labelLarge,
                          ),
                          onPressed: () {
                            context.pop();
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            floatingActionButton:
                BlocBuilder<AutomaticCounterBloc, AutomaticCounterState>(
                    builder: (context, state) {
              if (state is AutomaticCounterInitial) {
                return FloatingActionButton(
                  onPressed: () {
                    ticker(context);
                  },
                  child: const Icon(Icons.check),
                );
              }
              return const SizedBox();
            }),
          ),
        );
      },
    );
  }

  Center message() {
    return Center(
      child: Padding(
        padding: PaddingConst.horizontal30,
        child: BlocBuilder<AutomaticCounterBloc, AutomaticCounterState>(
          buildWhen: (previous, current) => current is TotalPuffsAdded,
          builder: (context, state) {
            return Text(
              state is TotalPuffsAdded
                  ? state.message
                  : 'Choose health over smoke',
              style: context.primaryTextTheme.bodyLarge,
              textAlign: TextAlign.center,
            );
          },
        ),
      ),
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
