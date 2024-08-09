import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions/server_exception.dart';
import '../../../../core/error/failures/api_failure.dart';
import '../../../../core/utility/typedef.dart';
import '../../domain/repo/smoking_repo.dart';
import '../data_sources/smoking_remote_data_source.dart';
import '../model/daily_smoking_model.dart';

class SmokingRepoImpl implements SmokingRepo {
  SmokingRepoImpl({required SmokingRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  final SmokingRemoteDataSource _remoteDataSource;

  @override
  ResultFuture<void> saveDailySmoking(DailySmokingModel params) async {
    try {
      await _remoteDataSource.saveDailySmoking(params);
      return const Right(null);
    } on ServerException catch (e) {
      return Left(APIFailure.fromAPIException(e));
    }
  }
}
