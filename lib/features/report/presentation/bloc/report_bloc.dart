import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/periodic_report_model.dart';
import '../../domain/enum/periodic_report_type.dart';
import '../../domain/use_cases/get_weekly_report.dart';

part 'report_event.dart';
part 'report_state.dart';

class ReportBloc extends Bloc<ReportEvent, ReportState> {
  ReportBloc({
    required GetPeriodicReport getPeriodicReport,
  })  : _getPeriodicReport = getPeriodicReport,
        super(ReportInitial()) {
    on<ReportEvent>((event, emit) {});
    on<GetPeriodicReportEvent>(_getPeriodicReportHandler);
  }

  final GetPeriodicReport _getPeriodicReport;

  Future<void> _getPeriodicReportHandler(
    GetPeriodicReportEvent event,
    Emitter<ReportState> emit,
  ) async {
    emit(ReportLoading());
    final result = await _getPeriodicReport(event.params);
    result.fold(
      (failure) => emit(ReportError(failure.message ?? 'Error')),
      (data) => emit(ReportLoaded(data)),
    );
  }
}
