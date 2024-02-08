import '../../core/managers/network/interface/i_network_model.dart';
import '../../features/bluetooth/data/models/bluetooth_device_model.dart';
import '../entities/vape_data.dart';

class VapeDataModel extends VapeData implements INetworkModel<VapeDataModel> {
  VapeDataModel({
    super.bluetoothData,
    super.capacity,
    super.price,
    super.nicotine,
    super.name,
  });

  factory VapeDataModel.fromJson(Map<String, dynamic> json) {
    return VapeDataModel(
      capacity: json['vape.capacity'] as String?,
      price: json['vape.price'] as String?,
      nicotine: json['vape.nicotine'] as String?,
      name: json['vape.name'] as String?,
      bluetoothData: BluetoothDeviceModel(
        name: json['bl.name'] as String?,
        address: json['bl.address'] as String,
      ),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'bl.name': bluetoothData?.name,
      'bl.address': bluetoothData?.address,
      'vape.capacity': capacity,
      'vape.price': price,
      'vape.nicotine': nicotine,
      'vape.name': name,
    };
  }

  @override
  VapeDataModel fromJson(Map<String, dynamic> json) {
    return VapeDataModel.fromJson(json);
  }
}
