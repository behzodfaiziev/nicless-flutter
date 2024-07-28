import 'enum/app_request_type.dart';
import 'model/app_network_model.dart';

abstract class AppNetworkManager {
  Future<R> send<T extends AppNetworkModel<T>, R>(
    String path, {
    required T parseModel,
    required AppRequestType method,
    dynamic data,
  });

  void clearHeader();

  void setToken(String token);
}
