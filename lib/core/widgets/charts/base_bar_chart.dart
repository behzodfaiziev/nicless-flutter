import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BaseBarChart extends StatelessWidget {
  const BaseBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceAround,
        maxY: 100,
        titlesData: const FlTitlesData(
          rightTitles: AxisTitles(),
          topTitles: AxisTitles(),
        ),
        barGroups: [
          buildBarChartGroupData(1, 50),
          buildBarChartGroupData(2, 60),
          buildBarChartGroupData(3, 60),
          buildBarChartGroupData(4, 90),
          buildBarChartGroupData(5, 75),
          buildBarChartGroupData(6, 50),
          buildBarChartGroupData(7, 60),
        ],
      ),
    );
  }

  BarChartGroupData buildBarChartGroupData(int x, double y) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(6),
            topRight: Radius.circular(6),
          ),
        ),
      ],
    );
  }
}
