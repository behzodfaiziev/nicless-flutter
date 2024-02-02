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
    throw UnimplementedError();
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
