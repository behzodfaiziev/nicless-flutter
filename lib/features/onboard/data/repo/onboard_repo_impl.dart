import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions/api_exception.dart';
import '../../../../core/error/failures/api_failure.dart';
import '../../../../core/utility/typedef.dart';
import '../../../../product/data_objects/models/vape_data_model.dart';
import '../../domain/repo/onboard_repo.dart';
import '../data_sources/onboard_remote_data_source.dart';

class OnboardRepoImpl implements OnboardRepo {
  OnboardRepoImpl({required OnboardRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;
  final OnboardRemoteDataSource _remoteDataSource;

  @override
  ResultFuture<String> saveVapeData(VapeDataModel vapeData) async {
    try {
      final result = await _remoteDataSource.saveVapeData(vapeData);
      return Right(result);
    } on APIException catch (e) {
      return Left(APIFailure.fromAPIException(e));
    }
  }
}
