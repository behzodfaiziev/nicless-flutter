import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nicless_flutter/core/utility/typedef.dart';
import 'package:nicless_flutter/features/bluetooth/data/models/bluetooth_device_model.dart';
import 'package:nicless_flutter/features/onboard/domain/repo/onboarding_repo.dart';
import 'package:nicless_flutter/features/onboard/domain/use_cases/save_vape_data.dart';
import 'package:nicless_flutter/product/data_objects/models/vape_data_model.dart';

import '../../../../mocks/repo_mocks.dart';

void main() {
  late SaveVapeData useCase;
  late OnboardingRepo repository;

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

      final VapeDataModel vapeData = VapeDataModel(
        name: 'device',
        bluetoothData: const BluetoothDeviceModel(
          name: 'device',
          address: 'address',
        ),
      );

      when(() => repository.saveVapeData(vapeData))
          .thenAnswer((_) async => const Right(resultId));

      /// act
      final Result<String> result = await useCase(vapeData);

      /// assert
      expect(result,
          equals(const Right<dynamic, String>(resultId)),);

      verify(() => repository.saveVapeData(vapeData)).called(1);

      verifyNoMoreInteractions(repository);
    },
  );
}
