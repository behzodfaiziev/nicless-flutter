part of 'report_bloc.dart';

sealed class ReportState extends Equatable {
  const ReportState();

  @override
  List<Object> get props => [];
}

final class ReportInitial extends ReportState {}

final class ReportLoading extends ReportState {}

final class ReportError extends ReportState {
  const ReportError(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}

final class ReportLoaded extends ReportState {
  const ReportLoaded(this.data);

  final PeriodicReportModel data;

  @override
  List<Object> get props => [data];
}
