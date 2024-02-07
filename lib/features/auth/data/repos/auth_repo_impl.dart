import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
    } catch (e) {
      return Left(APIFailure(message: e.toString()));
    }
  }

  @override
  ResultFuture<UserCredential> anonymousSignIn() async {
    try {
      final result = await _remoteDataSource.anonymousSignIn();

      await _remoteDataSource.createAnonymousUser(id: result.user!.uid);

      return Right(result);
    } catch (e) {
      return Left(APIFailure(message: e.toString()));
    }
  }

  @override
  ResultFuture<void> signOut() async {
    try {
      final result = _remoteDataSource.signOut();
      return Right(result);
    } catch (e) {
      return Left(APIFailure(message: e.toString()));
    }
  }
}
