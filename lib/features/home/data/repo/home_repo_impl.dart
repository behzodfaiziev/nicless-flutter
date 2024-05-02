import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions/api_exception.dart';
import '../../../../core/error/failures/api_failure.dart';
import '../../../../core/utility/typedef.dart';
import '../../../../product/data_objects/models/vape_data_model.dart';
import '../../domain/repo/home_repo.dart';
import '../data_sources/home_remote_data_source.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl({
    required HomeRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;
  final HomeRemoteDataSource _remoteDataSource;

  @override
  ResultFuture<List<VapeDataModel>> fetchDevices() async {
    try {
      final result = await _remoteDataSource.fetchDevices();

      return Right(result);
    } on APIException catch (e) {
      return Left(APIFailure.fromAPIException(e));
    }
  }
}
