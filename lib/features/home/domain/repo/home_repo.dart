import '../../../../core/utility/typedef.dart';
import '../../../../product/data_objects/models/vape_data_model.dart';

abstract class HomeRepo {
  ResultFuture<List<VapeDataModel>> fetchDevices();
}
