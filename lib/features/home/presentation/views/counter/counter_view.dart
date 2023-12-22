import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/widgets/buttons/base_elevated_button.dart';
import '../../../../../product/navigator/app_router.dart';
import '../../../../../product/utils/constants/ui_constants/radius_const.dart';

part 'counter_view_mixin.dart';

@RoutePage()
class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> with CounterViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Center(
              child: Text(
                'You are doing great!\n'
                'Keep it up.',
                textAlign: TextAlign.center,
                style: context.textTheme.titleMedium,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Text(
                  '00:00',
                  style: context.textTheme.displayLarge,
                ),
                Text(
                  'seconds passed',
                  style: context.textTheme.titleMedium,
                )
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Center(
              child: Container(
                height: context.width * 0.5,
                width: context.width * 0.5,
                decoration: BoxDecoration(
                  borderRadius: RadiusConst.largerRadius,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: context.colorScheme.secondary,
                      blurRadius: 1,
                      spreadRadius: 0,
                      offset: const Offset(0,1),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    '10',
                  textScaleFactor: 7,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Padding(
                padding: context.mainHorizontalPadding,
                child: BaseElevatedButton(
                  borderRadius: RadiusConst.largeRadius,
                  onPressed: () {
                    context.pushReplaceAll(const MainRoute());
                  },
                  child: const Text('Finish'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
