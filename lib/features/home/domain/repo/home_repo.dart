import '../../../../core/utility/typedef.dart';
import '../../../../product/data_objects/models/smoking/smoking_list_model.dart';

abstract class HomeRepo {
  ResultFuture<SmokingListModel> fetchDevices();
}
