import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions/server_exception.dart';
import '../../../../core/error/failures/api_failure.dart';
import '../../../../core/utility/typedef.dart';
import '../../domain/repos/auth_repo.dart';
import '../data_sources/auth_local_data_source.dart';
import '../data_sources/auth_remote_data_source.dart';
import '../models/sign_in_request_model.dart';
import '../models/sign_in_response_model.dart';
import '../models/sign_up_request_model.dart';

class AuthRepoImpl implements AuthRepo {
  AuthRepoImpl({
    required AuthRemoteDataSource remoteDataSource,
    required AuthLocalDataSource localDataSource,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;

  final AuthRemoteDataSource _remoteDataSource;
  final AuthLocalDataSource _localDataSource;

  @override
  ResultFuture<SignInResponseModel> signIn({
    required SignInRequestModel params,
  }) async {
    try {
      final result = await _remoteDataSource.signIn(params: params);

      if (result.data == null) {
        return const Left(APIFailure(message: 'No data received'));
      }

      if (result.data!.accessToken == null) {
        return const Left(APIFailure(message: 'No access token received'));
      }

      if (result.data!.refreshToken == null) {
        return const Left(APIFailure(message: 'No refresh token received'));
      }

      if (result.data!.sessionId == null) {
        return const Left(APIFailure(message: 'No session id received'));
      }

      await _localDataSource.saveAccessToken(result.data!.accessToken!);
      await _localDataSource.saveRefreshToken(result.data!.refreshToken!);
      await _localDataSource.saveSessionId(result.data!.sessionId!);

      _remoteDataSource.setToken(
        accessToken: result.data!.accessToken!,
        refreshToken: result.data!.refreshToken!,
        sessionId: result.data!.sessionId!,
      );

      return Right(result);
    } on ServerException catch (e) {
      return Left(APIFailure.fromAPIException(e));
    }
  }

  @override
  ResultFuture<bool> checkIsAuthenticated() async {
    try {
      final accessToken = await _localDataSource.getAccessToken();
      final sessionId = await _localDataSource.getSessionId();
      final refreshToken = await _localDataSource.getRefreshToken();

      if (_validateToken(accessToken) == false ||
          _validateToken(refreshToken) == false ||
          sessionId == null) {
        return const Right(false);
      }

      _remoteDataSource.setToken(
        accessToken: accessToken!,
        refreshToken: refreshToken!,
        sessionId: sessionId,
      );

      return const Right(true);
    } on ServerException catch (e) {
      return Left(APIFailure.fromAPIException(e));
    }
  }

  bool _validateToken(String? token) {
    if (token != null && token.isNotEmpty) return true;
    return false;
  }

  @override
  ResultFuture<void> signOut() async {
    try {
      final result = await _remoteDataSource.signOut();
      return Right(result);
    } on ServerException catch (e) {
      return Left(APIFailure.fromAPIException(e));
    } on Exception catch (e) {
      return Left(APIFailure(message: e.toString()));
    }
  }

  @override
  ResultFuture<void> signUp({required SignUpRequestModel params}) async {
    try {
      await _remoteDataSource.signUp(params: params);

      return const Right(null);
    } on ServerException catch (e) {
      return Left(APIFailure.fromAPIException(e));
    }
  }
}
