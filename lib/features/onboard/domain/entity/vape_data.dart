import '../../../bluetooth/data/models/bluetooth_device_model.dart';
import '../../presentation/views/modules/smoking_info/smoking_info_page.dart';

class VapeData {
  VapeData({required this.vapeData, required this.smokingInfoPageParams});

  final BluetoothDeviceModel vapeData;
  final SmokingInfoPageParams smokingInfoPageParams;
}
