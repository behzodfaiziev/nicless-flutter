import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions/api_exception.dart';
import '../../../../core/error/failures/api_failure.dart';
import '../../../../core/utility/typedef.dart';
import '../../domain/repos/auth_repo.dart';
import '../data_sources/auth_remote_data_source.dart';

class AuthRepoImpl implements AuthRepo {
  const AuthRepoImpl({required AuthRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  final AuthRemoteDataSource _remoteDataSource;

  @override
  ResultFuture<bool> checkIsAuthenticated() async {
    try {
      final result = await _remoteDataSource.getCurrentUser();
      return Right(result != null);
    } on APIException catch (e) {
      return Left(APIFailure.fromAPIException(e));
    }
  }

  @override
  ResultFuture<String> anonymousSignIn() async {
    try {
      final userId = await _remoteDataSource.anonymousSignIn();

      if (userId == null) {
        return const Left(APIFailure(message: 'User id is null'));
      }
      await _remoteDataSource.createAnonymousUser(id: userId);
      return Right(userId);
    } on APIException catch (e) {
      return Left(APIFailure.fromAPIException(e));
    } on Exception catch (e) {
      return Left(APIFailure(message: e.toString()));
    }
  }

  @override
  ResultFuture<void> signOut() async {
    try {
      final result = await _remoteDataSource.signOut();
      return Right(result);
    } on APIException catch (e) {
      return Left(APIFailure.fromAPIException(e));
    } on Exception catch (e) {
      return Left(APIFailure(message: e.toString()));
    }
  }
}
