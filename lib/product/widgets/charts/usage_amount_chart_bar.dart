import 'package:flutter/material.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../core/widgets/charts/base_bar_chart.dart';
import '../../utils/constants/ui_constants/padding_const.dart';
import '../../utils/constants/ui_constants/radius_const.dart';

class UsageAmountCharBar extends StatelessWidget {
  const UsageAmountCharBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 340,
      margin: AppPadding.all24 + AppPadding.top20,
      decoration: BoxDecoration(
        color: context.theme.cardColor,
        borderRadius: RadiusConst.bigRadius,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: AppPadding.horizontal24 + AppPadding.vertical20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Consumed amount', style: context.textTheme.headlineSmall),
                Text('1544 times', style: context.textTheme.displaySmall),
              ],
            ),
          ),
          Container(
            height: 200,
            margin: AppPadding.left12 + AppPadding.right30,
            child: const BaseBarChart(),
          ),
        ],
      ),
    );
  }
}
