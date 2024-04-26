import 'package:flutter/material.dart';

import '../../../../../../product/widgets/charts/usage_amount_chart_bar.dart';
import '../../../../../../product/widgets/charts/usage_time_chart_line.dart';

class MonthlyStatsTab extends StatelessWidget {
  const MonthlyStatsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          UsageTimeChartLine(),
          UsageAmountCharBar(),
        ],
      ),
    );
  }
}
