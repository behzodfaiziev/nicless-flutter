import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nicless_flutter/core/utility/typedef.dart';
import 'package:nicless_flutter/features/bluetooth/data/models/bluetooth_device_model.dart';
import 'package:nicless_flutter/features/home/domain/repo/home_repo.dart';
import 'package:nicless_flutter/features/home/domain/use_cases/fetch_devices.dart';
import 'package:nicless_flutter/product/data_objects/models/vape_data_model.dart';

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

      final List<VapeDataModel> bluetoothDevices = [
        const VapeDataModel(
          name: 'device',
          bluetoothData: BluetoothDeviceModel(
            name: 'device',
            address: 'address',
          ),
        ),
        const VapeDataModel(
          name: 'device2',
          bluetoothData: BluetoothDeviceModel(
            name: 'device2',
            address: 'address2',
          ),
        ),
      ];

      when(() => repository.fetchDevices())
          .thenAnswer((_) async => Right(bluetoothDevices));

      /// act
      final Result<List<VapeDataModel>> result = await useCase();

      /// assert
      expect(result,
          equals(Right<dynamic, List<VapeDataModel>>(bluetoothDevices)),);

      verify(() => repository.fetchDevices()).called(1);

      verifyNoMoreInteractions(repository);
    },
  );
}
