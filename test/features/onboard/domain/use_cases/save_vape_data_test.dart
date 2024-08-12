import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nicless_flutter/core/utility/typedef.dart';
import 'package:nicless_flutter/features/onboard/domain/repo/onboard_repo.dart';
import 'package:nicless_flutter/features/onboard/domain/use_cases/save_smoking_data.dart';
import 'package:nicless_flutter/product/data_objects/models/smoking/create_smoking_model.dart';
import 'package:nicless_flutter/product/data_objects/models/smoking/smoking_details_model.dart';

import '../../../../mocks/repo_mocks.dart';

void main() {
  late SaveSmokingData useCase;
  late OnboardRepo repository;

  setUpAll(() {
    repository = OnboardingRepoMock();
    useCase = SaveSmokingData(repository);
  });

  test(
    'should call the [saveSmokingData] method'
    ' and return [void] when successfull',
    () async {
      /// Arrange

      const CreateSmokingModel vapeData = CreateSmokingModel(
        name: 'device',
        priceInUSDollars: 1,
        smoking: SmokingDetailsModel(
          bluetoothAddress: 'address',
        ),
      );

      when(() => repository.saveSmokingData(vapeData))
          .thenAnswer((_) async => const Right(null));

      /// act
      final Result<void> result = await useCase(vapeData);

      /// assert
      expect(
        result,
        equals(const Right<dynamic, void>(null)),
      );

      verify(() => repository.saveSmokingData(vapeData)).called(1);

      verifyNoMoreInteractions(repository);
    },
  );
}
