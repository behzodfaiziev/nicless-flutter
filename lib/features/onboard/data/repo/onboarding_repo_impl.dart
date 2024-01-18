import 'package:dartz/dartz.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

import '../../../../core/error/exceptions/cache_exception.dart';
import '../../../../core/error/failures/bluetooth_failure.dart';
import '../../../../core/error/failures/cache_failure.dart';
import '../../../../core/managers/bluetooth/bluetooth_manager.dart';
import '../../../../core/utility/typedef.dart';
import '../../domain/repo/onboarding_repo.dart';

class OnboardingRepoImpl implements OnboardingRepo {
  OnboardingRepoImpl();

  final BluetoothManager bluetoothManager = BluetoothManager();

  @override
  ResultFuture<List<BluetoothDevice>> getBluetoothDevices() async {
    try {
      final List<BluetoothDevice> devices = await bluetoothManager.startScan();
      return Right(devices);
    } on CacheException catch (e) {
      return Left(CacheFailure.fromCacheException(e));
    }
  }

  @override
  ResultFuture<bool> connectBluetoothDevice(BluetoothDevice device) async {
    try {
      final bool isConnected = await bluetoothManager.connectBl(device.address);
      if (!isConnected) {
        throw Exception();
      }
      return const Right(true);
    } on Exception catch (e) {
      return Left(BluetoothFailure.fromException(e));
    }
  }
}
