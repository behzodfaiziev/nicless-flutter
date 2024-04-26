import 'package:dartz/dartz.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

import '../../../../core/error/exceptions/cache_exception.dart';
import '../../../../core/error/failures/bluetooth_failure.dart';
import '../../../../core/error/failures/cache_failure.dart';
import '../../../../core/managers/bluetooth/bluetooth_manager.dart';
import '../../../../core/utility/typedef.dart';
import '../../domain/repo/bluetooth_repo.dart';
import '../models/bluetooth_device_model.dart';

class BluetoothRepoImpl implements BluetoothRepo {
  BluetoothRepoImpl();

  final BluetoothManager bluetoothManager = BluetoothManager();

  @override
  ResultFuture<List<BluetoothDeviceModel>> getBluetoothDevices() async {
    try {
      final List<BluetoothDeviceModel> devices =
          await bluetoothManager.startScan();
      return Right(devices);
    } on CacheException catch (e) {
      return Left(CacheFailure.fromCacheException(e));
    }
  }

  @override
  ResultFuture<BluetoothConnection> connectBluetoothDevice(
      BluetoothDeviceModel device,) async {
    try {
      final BluetoothConnection dataStream =
          await bluetoothManager.connectBl(device.address);

      return Right(dataStream);
    } on Exception catch (e) {
      return Left(BluetoothFailure.fromException(e));
    }
  }

  @override
  ResultFuture<void> disconnectBluetoothDevice(
      BluetoothConnection device,) async {
    try {
      await bluetoothManager.disconnectBl(device);
      return const Right(null);
    } on Exception catch (e) {
      return Left(BluetoothFailure.fromException(e));
    }
  }
}
