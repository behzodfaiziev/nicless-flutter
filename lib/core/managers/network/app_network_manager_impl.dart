import 'package:vexana/vexana.dart';

import '../../../product/constants/api_const.dart';
import '../../error/exceptions/server_exception.dart';
import 'app_network_manager.dart';
import 'enum/app_request_type.dart';
import 'model/app_network_model.dart';
import 'model/custom_error_model.dart';

class AppNetworkManagerImpl implements AppNetworkManager {
  AppNetworkManagerImpl() {
    _manager = _getManager(token: _token);
  }

  late INetworkManager<CustomErrorModel> _manager;

  String _token = '';

  @override
  Future<R> send<T extends AppNetworkModel<T>, R>(
    String path, {
    required T parseModel,
    required AppRequestType method,
    dynamic data,
  }) async {
    try {
      final result = await _manager.send<T, R>(
        path,
        method: method.toRequestType,
        parseModel: parseModel,
        data: data,
      );
      if (result.error != null || result.data == null) {
        throw ServerException(
          message: result.error?.model?.message ?? '',
          statusCode: result.error?.statusCode ?? 500,
        );
      }
      return result.data!;
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  NetworkManager<CustomErrorModel> _getManager({
    required String token,
    bool isCleaned = false,
  }) {
    return NetworkManager<CustomErrorModel>(
      errorModel: const CustomErrorModel(),
      isEnableLogger: false,
      options: BaseOptions(
        baseUrl: ApiConst.baseUrl,
        headers: isCleaned ? _jsonHeader : _bearerHeader(token),
      ),
    );
  }

  Map<String, String> get _jsonHeader {
    return <String, String>{'Content-type': 'application/json'};
  }

  Map<String, String> _bearerHeader(String token) {
    return <String, String>{
      'Content-type': 'application/json',
      'Authorization': 'Bearer $token',
    };
  }

  @override
  void setToken(String token) {}

  @override
  void clearHeader() {
    _manager.clearHeader();
    _token = '';
    _manager = _getManager(token: '', isCleaned: true);
  }
}
