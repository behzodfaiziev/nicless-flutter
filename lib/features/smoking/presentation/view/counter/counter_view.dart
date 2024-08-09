import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/widgets/buttons/base_elevated_button.dart';
import '../../../../../product/init/lang/locale_keys.g.dart';
import '../../../../../product/init/navigator/app_router.dart';
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
            child: Column(
              children: [
                Text(
                  '00:00',
                  style: context.textTheme.displayLarge,
                ),
                Text(
                  'seconds passed',
                  style: context.textTheme.titleMedium,
                ),
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
                  color: context.theme.colorScheme.primary,
                  boxShadow: [
                    BoxShadow(
                      color: context.colorScheme.onPrimary.withOpacity(0.5),
                      blurRadius: 1,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      '5',
                      style: context.textTheme.displayMedium?.copyWith(
                        color: context.theme.colorScheme.onPrimary
                            .withOpacity(0.45),
                      ),
                    ),
                    Center(
                      child: Text(
                        '10',
                        textScaler: const TextScaler.linear(1.5),
                        style: context.textTheme.displayLarge,
                      ),
                    ),
                    Text(
                      '15',
                      style: context.textTheme.displayMedium?.copyWith(
                        color: context.theme.colorScheme.onPrimary
                            .withOpacity(0.45),
                      ),
                    ),
                  ],
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
                  child: Text(LocaleKeys.buttons_finish.tr()),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
