import '../../domain/enum/periodic_report_type.dart';
import '../models/periodic_report_model.dart';

abstract class ReportRemoteDataSource {
  Future<PeriodicReportModel> periodicReport(PeriodicReportType params);
}
