import '../../../../core/use_cases/use_cases.dart';
import '../../../../core/utility/typedef.dart';
import '../../data/models/periodic_report_model.dart';
import '../enum/periodic_report_type.dart';
import '../repo/report_repo.dart';

class GetPeriodicReport
    extends UsecaseWithParams<PeriodicReportModel, PeriodicReportType> {
  const GetPeriodicReport(this._repo);

  final ReportRepo _repo;

  @override
  ResultFuture<PeriodicReportModel> call(PeriodicReportType params) =>
      _repo.periodicReport(params);
}
