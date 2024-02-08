import 'package:dartz/dartz.dart';

import '../../../../core/error/failures/api_failure.dart';
import '../../../../core/utility/typedef.dart';
import '../../../../product/models/vape_data_model.dart';
import '../../domain/repo/onboarding_repo.dart';
import '../data_sources/onboarding_remote_data_source.dart';

class OnboardingRepoImpl implements OnboardingRepo {
  OnboardingRepoImpl({required OnboardingRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;
  final OnboardingRemoteDataSource _remoteDataSource;

  @override
  ResultFuture<String> saveVapeData(VapeDataModel vapeData) async {
    try {
      final result = await _remoteDataSource.saveVapeData(vapeData);
      return Right(result);
    } catch (e) {
      return Left(APIFailure(message: e.toString()));
    }
  }
}
