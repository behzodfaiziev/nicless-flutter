import '../../../../product/data_objects/models/smoking/smoking_list_model.dart';

abstract class HomeRemoteDataSource {
  Future<SmokingListModel> fetchDevices();
}
