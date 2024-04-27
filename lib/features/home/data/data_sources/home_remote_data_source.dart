
import '../../../../product/data_objects/models/vape_data_model.dart';

abstract class HomeRemoteDataSource {
  Future<List<VapeDataModel>> fetchDevices();
}
