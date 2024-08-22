import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions/server_exception.dart';
import '../../../../core/error/failures/api_failure.dart';
import '../../../../core/utility/typedef.dart';
import '../../../../product/data_objects/models/smoking/create_smoking_model.dart';
import '../../domain/repo/onboard_repo.dart';
import '../data_sources/onboard_remote_data_source.dart';

class OnboardRepoImpl implements OnboardRepo {
  OnboardRepoImpl({required OnboardRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;
  final OnboardRemoteDataSource _remoteDataSource;

  @override
  ResultFuture<void> saveSmokingData(CreateSmokingModel smoking) async {
    try {
      final result = await _remoteDataSource.saveSmokingData(smoking);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure.fromServerException(e));
    }
  }
}
