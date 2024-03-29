import 'package:dartz/dartz.dart';

import '../../../../core/error/failures/api_failure.dart';
import '../../../../core/utility/typedef.dart';
import '../../../../product/models/vape_data_model.dart';
import '../../domain/repo/home_repo.dart';
import '../data_sources/home_remote_data_source.dart';

class HomeRepoImpl implements HomeRepo {
  final HomeRemoteDataSource _remoteDataSource;

  HomeRepoImpl({
    required HomeRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  @override
  ResultFuture<List<VapeDataModel>> fetchDevices() async {
    try {
      final result = await _remoteDataSource.fetchDevices();

      return  Right(result);
    } catch (e) {
      return Left(APIFailure(message: e.toString()));
    }
  }
}
