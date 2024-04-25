import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nicless_flutter/core/utility/typedef.dart';
import 'package:nicless_flutter/features/auth/domain/repos/auth_repo.dart';
import 'package:nicless_flutter/features/auth/domain/use_cases/check_is_authenticated.dart';

import '../../../../mocks/repo_mocks.dart';

void main() {
  late CheckIsAuthenticated usecase;
  late AuthRepo repository;

  setUpAll(() {
    repository = AuthRepoMock();
    usecase = CheckIsAuthenticated(repository);
  });

  test(
    'should call the [AuthRepo.checkIsAuthenticated()] method'
    ' and return [true] when successfull',
    () async {
      /// Arrange
      when(() => repository.checkIsAuthenticated())
          .thenAnswer((_) async => const Right(true));

      /// act
      final Result<bool> result = await usecase();

      /// assert
      expect(result, equals(const Right<dynamic, bool>(true)));

      verify(() => repository.checkIsAuthenticated()).called(1);

      verifyNoMoreInteractions(repository);
    },
  );
}
