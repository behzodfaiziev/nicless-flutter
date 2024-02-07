import '../../../bluetooth/data/models/bluetooth_device_model.dart';
import '../../domain/entity/vape_data.dart';

class VapeDataModel extends VapeData {
  VapeDataModel({
    required super.bluetoothData,
    required super.capacity,
    required super.price,
    required super.nicotine,
    required super.name,
  });

  factory VapeDataModel.fromJson(Map<String, dynamic> json) {
    return VapeDataModel(
      capacity: json['vape.address'] as String,
      price: json['vape.bondState'] as String,
      nicotine: json['vape.type'] as String,
      name: json['vape.name'] as String,
      bluetoothData: BluetoothDeviceModel(
        name: json['bl.name'] as String,
        address: json['bl.address'] as String,
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'bl.name': bluetoothData.name,
      'bl.address': bluetoothData.address,
      'bl.bondState': bluetoothData.bondState,
      'bl.type': bluetoothData.type,
      'vape.capacity': capacity,
      'vape.price': price,
      'vape.nicotine': nicotine,
      'vape.name': name,
    };
  }
}
