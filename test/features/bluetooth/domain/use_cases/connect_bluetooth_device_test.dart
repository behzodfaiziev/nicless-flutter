import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nicless_flutter/core/utility/typedef.dart';
import 'package:nicless_flutter/features/auth/domain/repos/auth_repo.dart';
import 'package:nicless_flutter/features/auth/domain/use_cases/check_is_authenticated.dart';
import 'package:nicless_flutter/features/bluetooth/data/models/bluetooth_device_model.dart';
import 'package:nicless_flutter/features/bluetooth/domain/repo/bluetooth_repo.dart';
import 'package:nicless_flutter/features/bluetooth/domain/use_cases/connect_bluetooth_device.dart';

import '../../../../mocks/repo_mocks.dart';

class MockBluetoothConnection extends Mock implements BluetoothConnection {}

void main() {
  late ConnectBluetoothDevice useCase;
  late BluetoothRepo repository;

  setUpAll(() {
    repository = BluetoothRepoMock();
    useCase = ConnectBluetoothDevice(repository);
  });

  test(
    'should call the [AuthRepo.checkIsAuthenticated()] method'
    ' and return [true] when successfull',
    () async {
      /// Arrange
      const BluetoothDeviceModel params = BluetoothDeviceModel(
        name: 'device',
        address: 'address',
      );

      final BluetoothConnection newConnection =  MockBluetoothConnection();

      when(() => repository.connectBluetoothDevice(params))
          .thenAnswer((_) async => Right(newConnection));

      /// act
      final Result<BluetoothConnection> result = await useCase(params);

      /// assert
      expect(
          result, equals(Right<dynamic, BluetoothConnection>(newConnection)));

      verify(() => repository.connectBluetoothDevice(params)).called(1);

      verifyNoMoreInteractions(repository);
    },
  );
}
