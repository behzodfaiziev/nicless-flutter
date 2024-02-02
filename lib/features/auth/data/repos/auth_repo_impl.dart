import 'package:dartz/dartz.dart';

import '../../../../core/error/failures/api_failure.dart';
import '../../../../core/utility/typedef.dart';
import '../../domain/repos/auth_repo.dart';
import '../data_sources/auth_local_data_source.dart';
import '../data_sources/auth_remote_data_source.dart';

class AuthRepoImpl implements AuthRepo {
  const AuthRepoImpl({
    required AuthRemoteDataSource remoteDataSource,
    required AuthLocalDataSource localDataSource,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;

  final AuthRemoteDataSource _remoteDataSource;
  final AuthLocalDataSource _localDataSource;

  @override
  ResultFuture<bool> checkIsAuthenticated() async {
    try {
      final result = await _remoteDataSource.checkIsAuthenticated();
      return Right(result);
    } catch (e) {
      return Left(APIFailure(message: [e.toString()]));
    }
  }

  @override
  ResultFuture<String> anonymousSignIn() {
    // TODO: implement anonymousSignIn
    throw UnimplementedError();
  }

  @override
  ResultFuture<String> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
