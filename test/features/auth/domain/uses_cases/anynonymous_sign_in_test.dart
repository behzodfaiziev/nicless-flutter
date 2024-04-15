import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nicless_flutter/core/utility/typedef.dart';
import 'package:nicless_flutter/features/auth/domain/repos/auth_repo.dart';
import 'package:nicless_flutter/features/auth/domain/use_cases/anonymous_sign_in.dart';

class AuthRepoMock extends Mock implements AuthRepo {}

class MockUserCredential extends Mock implements UserCredential {}

void main() {
  late AnonymousSignIn usecase;
  late AuthRepo repository;
  late UserCredential mockUserCredential;
  setUpAll(() {
    repository = AuthRepoMock();
    usecase = AnonymousSignIn(repository);
    mockUserCredential = MockUserCredential();
  });

  test(
    'should call the [AuthRepo.]',
    () async {
      /// Arrange
      when(() => repository.anonymousSignIn())
          .thenAnswer((_) async => Right(mockUserCredential));


      /// act
      final Result<UserCredential> result = await usecase();

      /// assert
      expect(
          result, equals(Right<dynamic, UserCredential>(mockUserCredential)));

      verify(() => repository.anonymousSignIn()).called(1);

      verifyNoMoreInteractions(repository);
    },
  );
}
