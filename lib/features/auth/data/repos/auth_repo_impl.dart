import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions/server_exception.dart';
import '../../../../core/error/failures/api_failure.dart';
import '../../../../core/utility/typedef.dart';
import '../../domain/repos/auth_repo.dart';
import '../data_sources/auth_remote_data_source.dart';
import '../models/sign_in_request_model.dart';
import '../models/sign_in_response_model.dart';

class AuthRepoImpl implements AuthRepo {
  const AuthRepoImpl({required AuthRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  final AuthRemoteDataSource _remoteDataSource;

  @override
  ResultFuture<SignInResponseModel> signIn({
    required SignInRequestModel params,
  }) async {
    try {
      final result = await _remoteDataSource.signIn(params: params);
      return Right(result);
    } on ServerException catch (e) {
      return Left(APIFailure.fromAPIException(e));
    }
  }

  @override
  ResultFuture<bool> checkIsAuthenticated() async {
    try {
      return const Right(false);
    } on ServerException catch (e) {
      return Left(APIFailure.fromAPIException(e));
    }
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
}
