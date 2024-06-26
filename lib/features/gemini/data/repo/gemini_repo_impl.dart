import 'package:dartz/dartz.dart';

import '../../../../core/error/failures/api_failure.dart';
import '../../../../core/utility/typedef.dart';
import '../../domain/repo/gemini_repo.dart';
import '../data_sources/gemini_remote_data_source.dart';

class GeminiRepoImpl extends GeminiRepo {
  GeminiRepoImpl({required GeminiRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  final GeminiRemoteDataSource _remoteDataSource;

  @override
  Result<Stream<String>> sendTextToGemini(String text) {
    try {
      final  response =
          _remoteDataSource.sendTextToGemini(text);
      return Right(response);
    } catch (e) {
      return Left(APIFailure(message: e.toString()));
    }
  }
}
