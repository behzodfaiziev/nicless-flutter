import '../../../bluetooth/data/models/bluetooth_device_model.dart';

class VapeData {
  VapeData(
      {required this.bluetoothData,
      required this.capacity,
      required this.price,
      required this.nicotine,
      required this.name});

  final BluetoothDeviceModel bluetoothData;
  final String capacity;
  final String price;
  final String nicotine;
  final String name;
}
