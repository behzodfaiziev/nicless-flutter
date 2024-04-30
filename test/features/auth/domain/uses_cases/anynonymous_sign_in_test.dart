import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nicless_flutter/core/utility/typedef.dart';
import 'package:nicless_flutter/features/auth/domain/repos/auth_repo.dart';
import 'package:nicless_flutter/features/auth/domain/use_cases/anonymous_sign_in.dart';

import '../../../../mocks/repo_mocks.dart';

class MockUser extends Mock implements User {}

void main() {
  late AnonymousSignIn usecase;
  late AuthRepo repository;
  setUpAll(() {
    repository = AuthRepoMock();
    usecase = AnonymousSignIn(repository);
  });

  test(
    'should call the [AuthRepo.anonymousSignIn()] method'
    ' and return [UserCredential] when successfull',
    () async {
      /// Arrange
      when(() => repository.anonymousSignIn())
          .thenAnswer((_) async => const Right('123'));

      /// act
      final Result<String> result = await usecase();

      /// assert
      expect(
          result, equals(const Right<dynamic, String>('123')),);

      verify(() => repository.anonymousSignIn()).called(1);

      verifyNoMoreInteractions(repository);
    },
  );
}
