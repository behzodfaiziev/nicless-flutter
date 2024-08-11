import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions/server_exception.dart';
import '../../../../core/error/failures/api_failure.dart';
import '../../../../core/utility/typedef.dart';
import '../../domain/enum/periodic_report_type.dart';
import '../../domain/repo/report_repo.dart';
import '../data_sources/report_remote_data_source.dart';
import '../models/periodic_report_model.dart';

class ReportRepoImpl implements ReportRepo {
  ReportRepoImpl({required ReportRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  final ReportRemoteDataSource _remoteDataSource;

  @override
  ResultFuture<PeriodicReportModel> periodicReport(
    PeriodicReportType params,
  ) async {
    try {
      final result = await _remoteDataSource.periodicReport(params);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure.fromAPIException(e));
    }
  }
}
