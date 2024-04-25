import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nicless_flutter/core/utility/typedef.dart';
import 'package:nicless_flutter/features/auth/domain/repos/auth_repo.dart';
import 'package:nicless_flutter/features/auth/domain/use_cases/sign_out.dart';

import '../../../../mocks/repo_mocks.dart';

void main() {
  late SignOut useCase;
  late AuthRepo repository;

  setUpAll(() {
    repository = AuthRepoMock();
    useCase = SignOut(repository);
  });

  test(
    'should call the [AuthRepo.signOut()] method'
    ' and return [null] when successfull',
    () async {
      /// Arrange
      when(() => repository.signOut())
          .thenAnswer((_) async => const Right(null));

      /// act
      final Result<void> result = await useCase();

      /// assert
      expect(result, equals(const Right<dynamic, void>(null)));

      verify(() => repository.signOut()).called(1);

      verifyNoMoreInteractions(repository);
    },
  );
}
