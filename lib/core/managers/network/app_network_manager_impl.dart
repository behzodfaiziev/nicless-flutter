import 'package:vexana/vexana.dart';

import '../../../product/constants/api_const.dart';
import '../../error/exceptions/server_exception.dart';
import 'app_network_manager.dart';
import 'enum/app_request_type.dart';
import 'model/app_network_model.dart';
import 'model/custom_error_model.dart';

class AppNetworkManagerImpl implements AppNetworkManager {
  AppNetworkManagerImpl() {
    _manager = _getManager();
  }

  late INetworkManager<CustomErrorModel> _manager;

  String _accessToken = '';

  // String _refreshToken = '';

  String _sessionId = '';

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
    bool isCleaned = false,
  }) {
    return NetworkManager<CustomErrorModel>(
      errorModel: const CustomErrorModel(),
      isEnableLogger: false,
      options: BaseOptions(
        baseUrl: ApiConst.baseUrl,
        headers: isCleaned ? _jsonHeader : _tokenHeader,
      ),
      onRefreshFail: () {},
    );
  }

  Map<String, String> get _jsonHeader {
    return <String, String>{'Content-type': 'application/json'};
  }

  Map<String, String> get _tokenHeader {
    return <String, String>{
      'Content-type': 'application/json',
      'Authorization': 'Bearer $_accessToken',
      'x-session-id': _sessionId,
    };
  }

  Future<void> getRefreshToken() async {
    // _refreshToken = 'newToken';

    // _manager.send<AppEmptyModel, AppEmptyModel>(
    //   ApiConst.refreshToken,
    //   method: RequestType.GET,
    //   parseModel: const AppEmptyModel(),
    //
    //   data: <String, String>{'x-nicless-refresh-token': _refreshToken},
    // );
  }

  @override
  void setToken({
    required String accessToken,
    required String refreshToken,
    required String sessionId,
  }) {
    _accessToken = accessToken;
    _sessionId = sessionId;
    // _refreshToken = refreshToken;
    _manager = _getManager();
  }

  @override
  void clearHeader() {
    _manager.clearHeader();
    _accessToken = '';
    // _refreshToken = '';
    _sessionId = '';
    _manager = _getManager(isCleaned: true);
  }
}
