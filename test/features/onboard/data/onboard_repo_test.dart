import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nicless_flutter/core/error/exceptions/server_exception.dart';
import 'package:nicless_flutter/core/error/failures/api_failure.dart';
import 'package:nicless_flutter/features/onboard/data/data_sources/onboard_remote_data_source.dart';
import 'package:nicless_flutter/features/onboard/data/repo/onboard_repo_impl.dart';
import 'package:nicless_flutter/features/onboard/domain/repo/onboard_repo.dart';
import 'package:nicless_flutter/product/data_objects/models/smoking/create_smoking_model.dart';

class MockOnboardRemoteDataSource extends Mock
    implements OnboardRemoteDataSource {}

void main() {
  late OnboardRemoteDataSource remoteDataSource;
  late OnboardRepoImpl repoImpl;
  const ServerException apiException = ServerException(
    statusCode: 500,
    message: 'Internal Server Error',
  );
  const vapeData = CreateSmokingModel();
  setUp(() {
    remoteDataSource = MockOnboardRemoteDataSource();
    repoImpl = OnboardRepoImpl(remoteDataSource: remoteDataSource);
    registerFallbackValue(vapeData);
  });

  test('should be a subclass of [AuthRepo]', () {
    expect(repoImpl, isA<OnboardRepo>());
  });

  group('saveVapeData', () {
    test(
        'should call the [OnboardRemoteDataSource.saveVapeData] '
        'and return the right data', () async {
      // arrange
      when(() => remoteDataSource.saveSmokingData(vapeData))
          .thenAnswer((_) async {
        return;
      });

      // act
      final result = await repoImpl.saveSmokingData(vapeData);
      // assert
      expect(result, const Right<dynamic, void>(null));
      verify(() => remoteDataSource.saveSmokingData(any())).called(1);
      verifyNoMoreInteractions(remoteDataSource);
    });

    test('should return a [APIFailure] when call to remote source fails',
        () async {
      // arrange
      when(() => remoteDataSource.saveSmokingData(any()))
          .thenThrow(apiException);
      // act
      final result = await repoImpl.saveSmokingData(vapeData);
      // assert
      expect(
        result,
        Left<ServerFailure, void>(
            ServerFailure.fromServerException(apiException)),
      );
    });
  });
}
