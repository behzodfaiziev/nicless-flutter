import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nicless_flutter/core/error/exceptions/server_exception.dart';
import 'package:nicless_flutter/core/error/failures/api_failure.dart';
import 'package:nicless_flutter/features/auth/data/data_sources/auth_local_data_source.dart';
import 'package:nicless_flutter/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:nicless_flutter/features/auth/data/repo/auth_repo_impl.dart';
import 'package:nicless_flutter/features/auth/domain/repos/auth_repo.dart';

class MockAuthRemoteDataSource extends Mock implements AuthRemoteDataSource {}

class MockAuthLocalDataSource extends Mock implements AuthLocalDataSource {}

void main() {
  late AuthRemoteDataSource remoteDataSource;
  late AuthLocalDataSource localDataSource;
  late AuthRepoImpl repoImpl;

  const ServerException apiException = ServerException(
    statusCode: 500,
    message: 'Internal Server Error',
  );

  setUp(() {
    remoteDataSource = MockAuthRemoteDataSource();
    localDataSource = MockAuthLocalDataSource();
    repoImpl = AuthRepoImpl(
      remoteDataSource: remoteDataSource,
      localDataSource: localDataSource,
    );
  });

  test('should be a subclass of [AuthRepo]', () {
    expect(repoImpl, isA<AuthRepo>());
  });

  group('signOut', () {
    test(
        'should call the [AuthRemoteDataSource.signOut] '
        'and return the right data', () async {
      // arrange
      when(() => remoteDataSource.signOut()).thenAnswer((_) async {
        return;
      });
      // act
      final result = await repoImpl.signOut();
      // assert
      expect(result, const Right<dynamic, void>(null));
      verify(() => remoteDataSource.signOut()).called(1);
      verifyNoMoreInteractions(remoteDataSource);
    });
    test('should return a [APIFailure] when call to remote source fails',
        () async {
      // arrange
      when(() => remoteDataSource.signOut()).thenThrow(apiException);
      // act
      final result = await repoImpl.signOut();
      // assert
      expect(
        result,
        Left<ServerFailure, void>(ServerFailure.fromAPIException(apiException)),
      );
      verify(() => remoteDataSource.signOut()).called(1);
      verifyNoMoreInteractions(remoteDataSource);
    });
  });
}
