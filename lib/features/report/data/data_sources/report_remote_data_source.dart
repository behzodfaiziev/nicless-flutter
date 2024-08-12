import '../models/periodic_report_model.dart';

abstract class ReportRemoteDataSource {
  Future<PeriodicReportModel> periodicReport(String params);
}
