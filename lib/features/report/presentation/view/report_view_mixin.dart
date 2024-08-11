part of 'report_view.dart';

mixin ReportViewMixin on State<ReportView> {
  late final ReportBloc _reportBloc;

  @override
  void initState() {
    _reportBloc = sl<ReportBloc>();
    _reportBloc.add(const GetPeriodicReportEvent(PeriodicReportType.week));
    super.initState();
  }


  void pageListener(BuildContext context, ReportState state) {
    if (state is ReportError) {
      AppToast.error(context: context, message: state.message);
    }
  }
}
