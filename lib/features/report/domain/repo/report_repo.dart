import '../../../../core/utility/typedef.dart';
import '../../data/models/periodic_report_model.dart';
import '../enum/periodic_report_type.dart';

abstract class ReportRepo {
  ResultFuture<PeriodicReportModel> periodicReport(PeriodicReportType params);
}
