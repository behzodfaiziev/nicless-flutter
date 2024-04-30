import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nicless_flutter/core/error/exceptions/api_exception.dart';
import 'package:nicless_flutter/core/error/failures/api_failure.dart';
import 'package:nicless_flutter/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:nicless_flutter/features/auth/data/repos/auth_repo_impl.dart';
import 'package:nicless_flutter/features/auth/domain/repos/auth_repo.dart';

class MockAuthRemoteDataSource extends Mock implements AuthRemoteDataSource {}

class MockUser extends Mock implements User {}

void main() {
  late AuthRemoteDataSource remoteDataSource;
  late AuthRepoImpl repoImpl;
  final mockUser = MockUser();
  const APIException apiException = APIException(
    statusCode: 500,
    message: 'Internal Server Error',
  );

  setUp(() {
    remoteDataSource = MockAuthRemoteDataSource();
    repoImpl = AuthRepoImpl(remoteDataSource: remoteDataSource);
    when(() => mockUser.uid).thenReturn('123');
    registerFallbackValue(mockUser);
  });

  test('should be a subclass of [AuthRepo]', () {
    expect(repoImpl, isA<AuthRepo>());
  });

  group('checkIsAuthenticated', () {
    test(
        'should call the [AuthRemoteDataSource.checkIsAuthenticated] '
        'and return the right data', () async {
      // arrange
      when(() => remoteDataSource.getCurrentUser()).thenAnswer((_) async {
        return mockUser;
      });
      // act
      final result = await repoImpl.checkIsAuthenticated();
      // assert
      expect(result, const Right<dynamic, bool>(true));
      verify(() => remoteDataSource.getCurrentUser()).called(1);
      verifyNoMoreInteractions(remoteDataSource);
    });

    test('should return a [APIFailure] when call to remote source fails',
        () async {
      // arrange
      when(() => remoteDataSource.getCurrentUser()).thenThrow(apiException);
      // act
      final result = await repoImpl.checkIsAuthenticated();
      // assert
      expect(
        result,
        Left<APIFailure, void>(APIFailure.fromAPIException(apiException)),
      );
      verify(() => remoteDataSource.getCurrentUser()).called(1);
      verifyNoMoreInteractions(remoteDataSource);
    });
  });

  group('anonymousSignIn', () {
    test(
        'should call the [AuthRemoteDataSource.anonymousSignIn] '
        'and return the right data', () async {
      // arrange
      const mockUserId = '123';
      when(() => remoteDataSource.anonymousSignIn()).thenAnswer((_) async {
        return mockUserId;
      });
      when(() => remoteDataSource.createAnonymousUser(id: mockUserId))
          .thenAnswer((_) async {
        return;
      });
      // act
      final result = await repoImpl.anonymousSignIn();
      // assert
      expect(result, const Right<dynamic, String>(mockUserId));
      verify(() => remoteDataSource.anonymousSignIn()).called(1);
      verify(() => remoteDataSource.createAnonymousUser(id: mockUserId))
          .called(1);
      verifyNoMoreInteractions(remoteDataSource);
    });
    test('should return a [APIFailure] when call to remote source fails',
        () async {
      // arrange
      when(() => remoteDataSource.anonymousSignIn()).thenThrow(apiException);
      // act
      final result = await repoImpl.anonymousSignIn();
      // assert
      expect(
        result,
        Left<APIFailure, void>(APIFailure.fromAPIException(apiException)),
      );
      verify(() => remoteDataSource.anonymousSignIn()).called(1);
      verifyNoMoreInteractions(remoteDataSource);
    });
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
        Left<APIFailure, void>(APIFailure.fromAPIException(apiException)),
      );
      verify(() => remoteDataSource.signOut()).called(1);
      verifyNoMoreInteractions(remoteDataSource);
    });
  });
}
