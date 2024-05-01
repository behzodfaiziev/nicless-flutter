import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions/api_exception.dart';
import '../../../../core/error/failures/api_failure.dart';
import '../../../../core/utility/typedef.dart';
import '../../../../product/data_objects/params/pagination_params.dart';
import '../../domain/repo/rating_repo.dart';
import '../date_sources/rating_remote_data_source.dart';
import '../models/rating_model.dart';

class RatingRepoImpl extends RatingRepo {
  RatingRepoImpl({
    required RatingRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final RatingRemoteDataSource _remoteDataSource;

  @override
  ResultFuture<List<RatingModel>> getWeeklyRating(
    PaginationParams params,
  ) async {
    try {
      final result = await _remoteDataSource.getWeeklyRating(params);
      return Right(result);
    } on APIException catch (e) {
      return Left(APIFailure.fromAPIException(e));
    }
  }

  @override
  ResultFuture<List<RatingModel>> getMonthlyRating(
    PaginationParams params,
  ) async {
    try {
      final result = await _remoteDataSource.getMonthlyRating(params);
      return Right(result);
    } on APIException catch (e) {
      return Left(APIFailure.fromAPIException(e));
    }
  }

  @override
  ResultFuture<List<RatingModel>> getYearlyRating(
    PaginationParams params,
  ) async {
    try {
      final result = await _remoteDataSource.getYearlyRating(params);
      return Right(result);
    } on APIException catch (e) {
      return Left(APIFailure.fromAPIException(e));
    }
  }
}
