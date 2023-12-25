import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../product/utils/constants/ui_constants/gradient_constants.dart';
import '../../extensions/context_extension.dart';

class BaseLineChart extends StatelessWidget {
  const BaseLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        gridData: const FlGridData(drawHorizontalLine: false),
        titlesData: const FlTitlesData(
          rightTitles: AxisTitles(),
          topTitles: AxisTitles(),
        ),
        borderData: FlBorderData(show: true),
        minX: 0,
        maxX: 7,
        minY: 0,
        maxY: 100,
        lineBarsData: [
          LineChartBarData(
            spots: [
              const FlSpot(0, 50),
              const FlSpot(1, 60),
              const FlSpot(2, 60),
              const FlSpot(3, 80),
              const FlSpot(4, 60),
              const FlSpot(5, 70),
              const FlSpot(6, 40),
              const FlSpot(7, 50),
            ],
            isCurved: true,
            curveSmoothness: 0.3,
            barWidth: 2,
            dotData: const FlDotData(show: false),
            belowBarData: BarAreaData(
              show: true,
              color: context.theme.colorScheme.secondary.withOpacity(0.2),
            ),
            gradient: GradientConstants.chart(),
          ),
        ],
      ),
    );
  }
}
