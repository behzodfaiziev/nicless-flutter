import '../../../features/bluetooth/data/models/bluetooth_device_model.dart';

abstract class VapeData {
  VapeData({
    this.bluetoothData,
    this.capacity = '',
    this.price = '',
    this.nicotine = '',
    this.name = '',
  });

  final BluetoothDeviceModel? bluetoothData;
  final String? capacity;
  final String? price;
  final String? nicotine;
  final String? name;
}
