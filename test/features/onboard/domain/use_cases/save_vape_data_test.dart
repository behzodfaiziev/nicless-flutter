import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nicless_flutter/core/utility/typedef.dart';
import 'package:nicless_flutter/features/onboard/domain/repo/onboard_repo.dart';
import 'package:nicless_flutter/features/onboard/domain/use_cases/save_vape_data.dart';
import 'package:nicless_flutter/product/data_objects/models/smoking/create_smoking_model.dart';
import 'package:nicless_flutter/product/data_objects/models/smoking/smoking_details_model.dart';

import '../../../../mocks/repo_mocks.dart';

void main() {
  late SaveVapeData useCase;
  late OnboardRepo repository;

  setUpAll(() {
    repository = OnboardingRepoMock();
    useCase = SaveVapeData(repository);
  });

  test(
    'should call the [AuthRepo.checkIsAuthenticated()] method'
    ' and return [true] when successfull',
    () async {
      /// Arrange

      const String resultId = 'id';

      const CreateSmokingModel vapeData = CreateSmokingModel(
        name: 'device',
        priceInUSDollars: 1,
        smoking: SmokingDetailsModel(
          bluetoothAddress: 'address',
        ),
      );

      when(() => repository.saveVapeData(vapeData))
          .thenAnswer((_) async => const Right(null));

      /// act
      final Result<void> result = await useCase(vapeData);

      /// assert
      expect(
        result,
        equals(const Right<dynamic, String>(resultId)),
      );

      verify(() => repository.saveVapeData(vapeData)).called(1);

      verifyNoMoreInteractions(repository);
    },
  );
}
