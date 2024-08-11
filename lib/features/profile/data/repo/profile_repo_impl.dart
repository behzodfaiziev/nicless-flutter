import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions/server_exception.dart';
import '../../../../core/error/failures/api_failure.dart';
import '../../../../core/utility/typedef.dart';
import '../../domain/repo/profile_repo.dart';
import '../data_sources/profile_remote_data_source.dart';
import '../models/weekly_stats_result_model.dart';

class ProfileRepoImpl implements ProfileRepo {
  ProfileRepoImpl({required ProfileRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  final ProfileRemoteDataSource _remoteDataSource;

  @override
  ResultFuture<WeeklyStatsResultModel> weeklyStats()async {
   try{
      final result = await _remoteDataSource.weeklyStats();
      return Right(result);
   } on ServerException catch(e){
     return Left(ServerFailure.fromAPIException(e));
   }
  }
}
