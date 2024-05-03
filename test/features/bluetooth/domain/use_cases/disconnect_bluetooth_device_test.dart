import 'package:dartz/dartz.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nicless_flutter/core/utility/typedef.dart';
import 'package:nicless_flutter/features/bluetooth/domain/repo/bluetooth_repo.dart';
import 'package:nicless_flutter/features/bluetooth/domain/use_cases/disconnect_bluetooth_device.dart';

import '../../../../mocks/bluetooth_mocks.dart';
import '../../../../mocks/repo_mocks.dart';

void main() {
  late DisconnectBluetoothDevice useCase;
  late BluetoothRepo repository;

  setUpAll(() {
    repository = BluetoothRepoMock();
    useCase = DisconnectBluetoothDevice(repository);
  });

  test(
    'should call the [AuthRepo.checkIsAuthenticated()] method'
    ' and return [true] when successfull',
    () async {
      /// Arrange

      final BluetoothConnection connection = MockBluetoothConnection();

      when(() => repository.disconnectBluetoothDevice(connection))
          .thenAnswer((_) async => const Right(null));

      /// act
      final Result<void> result = await useCase(connection);

      /// assert
      expect(result, equals(const Right<dynamic, void>(null)));

      verify(() => repository.disconnectBluetoothDevice(connection)).called(1);

      verifyNoMoreInteractions(repository);
    },
  );

}
