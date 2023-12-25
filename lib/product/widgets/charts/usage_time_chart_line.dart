import 'package:flutter/material.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../core/widgets/charts/base_line_chart.dart';
import '../../utils/constants/ui_constants/padding_const.dart';
import '../../utils/constants/ui_constants/radius_const.dart';

class UsageTimeChartLine extends StatelessWidget {
  const UsageTimeChartLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 340,
      margin: PaddingConst.horizontal24 + PaddingConst.top30,
      decoration: BoxDecoration(
        color: context.theme.colorScheme.primary,
        borderRadius: RadiusConst.bigRadius,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: PaddingConst.horizontal24 + PaddingConst.vertical20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Consumed time', style: context.textTheme.headlineSmall),
                Text('243 minutes', style: context.textTheme.displaySmall),
              ],
            ),
          ),
          Container(
            height: 200,
            margin: PaddingConst.left12 + PaddingConst.right30,
            child: const BaseLineChart(),
          ),
        ],
      ),
    );
  }
}
