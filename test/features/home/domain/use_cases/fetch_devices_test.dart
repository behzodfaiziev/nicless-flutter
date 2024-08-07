import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nicless_flutter/core/utility/typedef.dart';
import 'package:nicless_flutter/features/home/domain/repo/home_repo.dart';
import 'package:nicless_flutter/features/home/domain/use_cases/fetch_devices.dart';
import 'package:nicless_flutter/product/data_objects/models/smoking/smoking_list_model.dart';

import '../../../../mocks/repo_mocks.dart';

void main() {
  late FetchDevices useCase;
  late HomeRepo repository;

  setUpAll(() {
    repository = HomeRepoMock();
    useCase = FetchDevices(repository);
  });

  test(
    'should call the [AuthRepo.checkIsAuthenticated()] method'
    ' and return [true] when successfull',
    () async {
      /// Arrange

      const SmokingListModel smokingList = SmokingListModel(data: []);

      when(() => repository.fetchDevices())
          .thenAnswer((_) async => const Right(smokingList));

      /// act
      final Result<SmokingListModel> result = await useCase();

      /// assert
      expect(
        result,
        equals(const Right<dynamic, SmokingListModel>(smokingList)),
      );

      verify(() => repository.fetchDevices()).called(1);

      verifyNoMoreInteractions(repository);
    },
  );
}
