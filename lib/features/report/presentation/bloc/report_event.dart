part of 'report_bloc.dart';

sealed class ReportEvent extends Equatable {
  const ReportEvent();

  @override
  List<Object?> get props => [];
}

final class GetPeriodicReportEvent extends ReportEvent {
  const GetPeriodicReportEvent(this.params);

  final PeriodicReportType params;

  @override
  List<Object> get props => [params];
}
