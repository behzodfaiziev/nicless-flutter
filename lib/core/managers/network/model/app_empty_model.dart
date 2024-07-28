import 'app_network_model.dart';

class AppEmptyModel extends AppNetworkModel<AppEmptyModel> {
  const AppEmptyModel();

  @override
  Map<String, Object> toJson() {
    return <String, Object>{};
  }

  @override
  AppEmptyModel fromJson(Map<String, dynamic>? json) {
    return const AppEmptyModel();
  }
}
