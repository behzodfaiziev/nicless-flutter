import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nicless_flutter/core/utility/typedef.dart';
import 'package:nicless_flutter/features/bluetooth/data/models/bluetooth_device_model.dart';
import 'package:nicless_flutter/features/bluetooth/domain/repo/bluetooth_repo.dart';
import 'package:nicless_flutter/features/bluetooth/domain/use_cases/get_bluetooth_devices.dart';

import '../../../../mocks/repo_mocks.dart';

void main() {
  late GetBluetoothDevices useCase;
  late BluetoothRepo repository;

  setUpAll(() {
    repository = BluetoothRepoMock();
    useCase = GetBluetoothDevices(repository);
  });

  test(
    'should call the [AuthRepo.checkIsAuthenticated()] method'
    ' and return [true] when successfull',
    () async {
      /// Arrange

      const List<BluetoothDeviceModel> devices = [
        BluetoothDeviceModel(
          name: 'device',
          address: 'address',
        ),
        BluetoothDeviceModel(
          name: 'device2',
          address: 'address2',
        ),
      ];

      when(() => repository.getBluetoothDevices())
          .thenAnswer((_) async => const Right(devices));

      /// act
      final Result<List<BluetoothDeviceModel>> result = await useCase();

      /// assert
      expect(result,
          equals(const Right<dynamic, List<BluetoothDeviceModel>>(devices)),);

      verify(() => repository.getBluetoothDevices()).called(1);

      verifyNoMoreInteractions(repository);
    },
  );
}
