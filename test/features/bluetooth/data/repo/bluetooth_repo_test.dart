import 'package:dartz/dartz.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nicless_flutter/core/error/failures/bluetooth_failure.dart';
import 'package:nicless_flutter/core/managers/bluetooth/bluetooth_manager.dart';
import 'package:nicless_flutter/features/bluetooth/data/models/bluetooth_device_model.dart';
import 'package:nicless_flutter/features/bluetooth/data/repo/bluetooth_repo_impl.dart';
import 'package:nicless_flutter/features/bluetooth/domain/repo/bluetooth_repo.dart';

import '../../../../mocks/bluetooth_mocks.dart';

class MockBluetoothManager extends Mock implements BluetoothManager {}

void main() {
  late BluetoothRepo repoImpl;
  late BluetoothManager bluetoothManager;

  final bluetoothException = Exception('Something went wrong');
  const mockDevice =
      BluetoothDeviceModel(name: 'Device 1', address: 'address 1');
  setUp(() {
    bluetoothManager = MockBluetoothManager();
    repoImpl = BluetoothRepoImpl(bluetoothManager: bluetoothManager);
  });
  test('should be a subclass of [BluetoothRepo]', () {
    expect(repoImpl, isA<BluetoothRepo>());
  });

  group('getBluetoothDevices', () {
    test(
        'should return list of bluetooth devices when '
        'call to bluetooth manager is successful', () async {
      // arrange
      final mockDevices = [
        const BluetoothDeviceModel(name: 'Device 1', address: 'address 1'),
        const BluetoothDeviceModel(name: 'Device 2', address: 'address 2'),
      ];
      when(() => bluetoothManager.startScan())
          .thenAnswer((_) async => mockDevices);
      // act
      final result = await repoImpl.getBluetoothDevices();
      // assert
      expect(result, Right<dynamic, List<BluetoothDeviceModel>>(mockDevices));
      verify(() => bluetoothManager.startScan()).called(1);
    });

    test(
        'should return bluetooth failure when call'
        ' to bluetooth manager is unsuccessful', () async {
      // arrange
      when(() => bluetoothManager.startScan()).thenThrow(bluetoothException);
      // act
      final result = await repoImpl.getBluetoothDevices();
      // assert
      expect(
        result,
        Left<BluetoothFailure, void>(
          BluetoothFailure.fromException(bluetoothException),
        ),
      );
      verify(() => bluetoothManager.startScan()).called(1);
    });
  });

  group('connectBluetoothDevice', () {
    test(
        'should return bluetooth connection when '
        'call to bluetooth manager is successful', () async {
      // arrange

      final mockConnection = MockBluetoothConnection();
      when(() => bluetoothManager.connectBl(mockDevice.address))
          .thenAnswer((_) async => mockConnection);
      // act
      final result = await repoImpl.connectBluetoothDevice(mockDevice);
      // assert
      expect(result, Right<dynamic, BluetoothConnection>(mockConnection));
      verify(() => bluetoothManager.connectBl(mockDevice.address)).called(1);
    });

    test(
        'should return bluetooth failure when call'
        ' to bluetooth manager is unsuccessful', () async {
      // arrange

      when(() => bluetoothManager.connectBl(mockDevice.address))
          .thenThrow(bluetoothException);
      // act
      final result = await repoImpl.connectBluetoothDevice(mockDevice);
      // assert
      expect(
        result,
        Left<BluetoothFailure, void>(
          BluetoothFailure.fromException(bluetoothException),
        ),
      );
      verify(() => bluetoothManager.connectBl(mockDevice.address)).called(1);
    });
  });

  group('disconnectBluetoothDevice', () {
    test(
        'should return null when '
        'call to bluetooth manager is successful', () async {
      // arrange

      final mockConnection = MockBluetoothConnection();
      when(() => bluetoothManager.disconnectBl(mockConnection))
          .thenAnswer((_) async {});
      // act
      final result = await repoImpl.disconnectBluetoothDevice(mockConnection);
      // assert
      expect(result, const Right<dynamic, void>(null));
      verify(() => bluetoothManager.disconnectBl(mockConnection)).called(1);
    });

    test(
        'should return bluetooth failure when call'
        ' to bluetooth manager is unsuccessful', () async {
      // arrange

      final mockConnection = MockBluetoothConnection();
      when(() => bluetoothManager.disconnectBl(mockConnection))
          .thenThrow(bluetoothException);
      // act
      final result = await repoImpl.disconnectBluetoothDevice(mockConnection);
      // assert
      expect(
        result,
        Left<BluetoothFailure, void>(
          BluetoothFailure.fromException(bluetoothException),
        ),
      );
      verify(() => bluetoothManager.disconnectBl(mockConnection)).called(1);
    });
  });
}
