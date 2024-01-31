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
            appBar: const BaseAppBar(title: 'Vozol Forest Berry'),
            // appBar: BaseAppBar(title: 'Device: ${widget.device?.name}'),
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
                    child: Center(
                      child: Padding(
                        padding: PaddingConst.horizontal30,
                        child: BlocBuilder<AutomaticCounterBloc,
                            AutomaticCounterState>(
                          buildWhen: (previous, current) =>
                              current is TotalPuffsAdded,
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
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Center(
                      child: BaseLottie(
                          assetPath: LottieConst.instance.lungs,
                          controller: animationController),
                    ),
                  ),
                  const Expanded(flex: 5, child: _TotalAmountOfUsage()),
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
}

class _TotalAmountOfUsage extends StatelessWidget {
  const _TotalAmountOfUsage();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _ProgressCard(
            title: 'Seconds',
            child: BlocBuilder<AutomaticCounterBloc, AutomaticCounterState>(
              buildWhen: (previous, current) => current is TotalInhaledSeconds,
              builder: (context, state) {
                return UsageProgress(
                  text: (state is TotalInhaledSeconds ? state.seconds : 0)
                      .toString(),
                  value: state is TotalInhaledSeconds
                      ? 1 - (state.seconds / 60)
                      : 1,
                );
              },
            )),
        _ProgressCard(
          title: 'Puffs',
          child: BlocBuilder<AutomaticCounterBloc, AutomaticCounterState>(
            buildWhen: (previous, current) => current is TotalPuffsAdded,
            builder: (context, state) {
              return UsageProgress(
                text: (state is TotalPuffsAdded ? state.amount : 0).toString(),
                value: state is TotalPuffsAdded ? 1 - (state.amount / 10) : 1,
              );
              // return Container(
              //   margin: PaddingConst.vertical30,
              //   child: Text(
              //     'Total puffs:'
              //     '${state is TotalPuffsAdded ? state.amount : 0}',
              //     style: context.primaryTextTheme.headlineMedium,
              //   ),
              // );
            },
          ),
        ),
      ],
    );
  }
}

class _ProgressCard extends StatelessWidget {
  const _ProgressCard({
    required this.child,
    required this.title,
  });

  final Widget child;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.primary,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: context.colorScheme.secondary, width: 0.2),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.secondary,
            blurRadius: 2,
            spreadRadius: 0.1,
            offset: Offset.zero,
          ),
        ],
      ),
      width: context.width * 0.4,
      height: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: PaddingConst.left16 + PaddingConst.top16,
            child: Text(
              title,
              style: context.primaryTextTheme.titleMedium,
            ),
          ),
          Padding(
            padding: PaddingConst.vertical16,
            child: Center(
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}

class UsageProgress extends StatelessWidget {
  const UsageProgress({
    required this.value,
    required this.text,
    super.key,
  });

  final double value;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 70,
      child: Stack(
        children: [
          Positioned.fill(
            child: CircularProgressIndicator(
              color: context.colorScheme.secondary,
              backgroundColor: context.colorScheme.error,
              value: value,
            ),
          ),
          Center(
            child: Text(
              text,
              style: context.primaryTextTheme.headlineSmall,
            ),
          )
        ],
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
