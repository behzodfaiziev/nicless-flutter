import 'package:flutter/material.dart';

import '../../../../../../product/widgets/charts/usage_amount_chart_bar.dart';
import '../../../../../../product/widgets/charts/usage_time_chart_line.dart';

class MonthlyStatsTab extends StatelessWidget {
  const MonthlyStatsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  [
        const UsageTimeChartLine(),
        const UsageAmountCharBar(),
        Container(height: 300)
      ],
    );
  }
}
