import '../../../../core/utility/typedef.dart';
import '../../../../product/models/vape_data_model.dart';

abstract class HomeRepo {
  ResultFuture<List<VapeDataModel>> fetchDevices();
}
