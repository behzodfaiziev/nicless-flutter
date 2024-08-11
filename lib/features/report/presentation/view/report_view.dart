import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/app_bar/base_app_bar.dart';
import '../../../../core/widgets/indicator/base_adaptive_cpi.dart';
import '../../../../product/init/injection_container/_injection_container.dart';
import '../../../../product/widgets/toast/app_toast.dart';
import '../../domain/enum/periodic_report_type.dart';
import '../bloc/report_bloc.dart';
import 'modules/report_list_view.dart';

part 'report_view_mixin.dart';

@RoutePage()
class ReportView extends StatefulWidget {
  const ReportView({super.key});

  @override
  State<ReportView> createState() => _ReportViewState();
}

class _ReportViewState extends State<ReportView> with ReportViewMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _reportBloc,
      child: Scaffold(
        appBar: const BaseAppBar(title: 'Weekly Report'),
        body: BlocConsumer<ReportBloc, ReportState>(
          listener: pageListener,
          buildWhen: (previous, current) =>
              current is ReportLoaded || current is ReportError,
          builder: (context, state) {
            if (state is ReportLoaded) {
              return ReportListView(report: state.data);
            } else if (state is ReportError) {
              return Center(child: Text(state.message));
            }
            return const BaseAdaptiveCPI();
          },
        ),
      ),
    );
  }
}
