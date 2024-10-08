import 'enum/app_request_type.dart';
import 'model/app_network_model.dart';

abstract class AppNetworkManager {
  void clearHeader();

  void setToken({
    required String accessToken,
    required String refreshToken,
    required String sessionId,
  });

  Future<T> requestModel<T extends AppNetworkModel>(
    String path, {
    required T parseModel,
    required AppRequestType method,
    Map<String, dynamic>? data,
  });

  Future<List<T>> requestListModel<T extends AppNetworkModel>(
    String path, {
    required T parseModel,
    required AppRequestType method,
    Map<String, dynamic>? data,
  });

  Future<void> requestVoid(
    String path, {
    required AppRequestType method,
    Map<String, dynamic>? data,
  });
}
