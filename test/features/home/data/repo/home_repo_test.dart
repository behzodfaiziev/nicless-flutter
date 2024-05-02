import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nicless_flutter/core/error/exceptions/api_exception.dart';
import 'package:nicless_flutter/core/error/failures/api_failure.dart';
import 'package:nicless_flutter/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:nicless_flutter/features/home/data/repo/home_repo_impl.dart';
import 'package:nicless_flutter/features/home/domain/repo/home_repo.dart';
import 'package:nicless_flutter/product/data_objects/models/vape_data_model.dart';

class MockHomeRemoteDataSource extends Mock implements HomeRemoteDataSource {}

void main() {
  late HomeRemoteDataSource remoteDataSource;
  late HomeRepoImpl repoImpl;

  const APIException apiException = APIException(
    statusCode: 500,
    message: 'Internal Server Error',
  );

  setUp(() {
    remoteDataSource = MockHomeRemoteDataSource();
    repoImpl = HomeRepoImpl(remoteDataSource: remoteDataSource);
  });

  test('should be a subclass of [AuthRepo]', () {
    expect(repoImpl, isA<HomeRepo>());
  });

  group('fetchDevices', () {
    test(
        'should call the [HomeRemoteDataSource.fetchDevices] '
        'and return the right data', () async {
      // arrange
      final List<VapeDataModel> mockVapeDataList = [
        const VapeDataModel(
          name: 'Vape 1',
          capacity: '2',
          nicotine: '2',
          price: '200',
        ),
        const VapeDataModel(
          name: 'Vape 2',
          capacity: '3',
          nicotine: '3',
          price: '300',
        ),
      ];
      when(() => remoteDataSource.fetchDevices()).thenAnswer((_) async {
        return mockVapeDataList;
      });
      // act
      final result = await repoImpl.fetchDevices();
      // assert
      expect(result, Right<dynamic, List<VapeDataModel>>(mockVapeDataList));
    });

    test('should return a [APIFailure] when call to remote source fails',
        () async {
      // arrange
      when(() => remoteDataSource.fetchDevices()).thenThrow(apiException);
      // act
      final result = await repoImpl.fetchDevices();
      // assert
      expect(
        result,
        Left<APIFailure, void>(APIFailure.fromAPIException(apiException)),
      );
      verify(() => remoteDataSource.fetchDevices()).called(1);
      verifyNoMoreInteractions(remoteDataSource);
    });
  });
}
