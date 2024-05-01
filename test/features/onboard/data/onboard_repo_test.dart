import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nicless_flutter/core/error/exceptions/api_exception.dart';
import 'package:nicless_flutter/core/error/failures/api_failure.dart';
import 'package:nicless_flutter/features/onboard/data/data_sources/onboard_remote_data_source.dart';
import 'package:nicless_flutter/features/onboard/data/repo/onboard_repo_impl.dart';
import 'package:nicless_flutter/features/onboard/domain/repo/onboard_repo.dart';
import 'package:nicless_flutter/product/data_objects/models/vape_data_model.dart';

class MockOnboardRemoteDataSource extends Mock
    implements OnboardRemoteDataSource {}

void main() {
  late OnboardRemoteDataSource remoteDataSource;
  late OnboardRepoImpl repoImpl;
  const APIException apiException = APIException(
    statusCode: 500,
    message: 'Internal Server Error',
  );
  final vapeData = VapeDataModel.empty();
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
      const newId = '123';
      when(() => remoteDataSource.saveVapeData(vapeData)).thenAnswer((_) async {
        return newId;
      });

      // act
      final result = await repoImpl.saveVapeData(vapeData);
      // assert
      expect(result, const Right<dynamic, String>(newId));
      verify(() => remoteDataSource.saveVapeData(any())).called(1);
      verifyNoMoreInteractions(remoteDataSource);
    });

    test('should return a [APIFailure] when call to remote source fails',
        () async {
      // arrange
      when(() => remoteDataSource.saveVapeData(any())).thenThrow(apiException);
      // act
      final result = await repoImpl.saveVapeData(vapeData);
      // assert
      expect(
        result,
        Left<APIFailure, void>(APIFailure.fromAPIException(apiException)),
      );
    });
  });
}