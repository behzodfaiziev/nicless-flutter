import 'package:flutter/material.dart';

import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/text/base_mark_down.dart';
import '../../../../../product/utils/constants/ui_constants/padding_const.dart';
import '../../../data/models/periodic_report_model.dart';

class ReportListView extends StatelessWidget {
  const ReportListView({required this.report, super.key});

  final PeriodicReportModel report;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: report.data?.length,
      itemBuilder: (context, index) {
        final data = report.data![index];
        return ListTile(
          title: Padding(
            padding: AppPadding.vertical8,
            child: Text(
              data.title ?? '',
              style: context.primaryTextTheme.displaySmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          subtitle: Container(
            padding: AppPadding.all12,
            decoration: BoxDecoration(
              color: context.theme.cardColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: BaseMarkDown(text: data.description ?? ''),
          ),
        );
      },
    );
  }
}
