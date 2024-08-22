import 'package:dio/dio.dart';
import 'package:net_kit/net_kit.dart';

import '../../../product/constants/api_const.dart';
import '../../error/exceptions/server_exception.dart';
import 'app_network_manager.dart';
import 'enum/app_request_type.dart';
import 'model/app_network_model.dart';

class AppNetworkManagerImpl implements AppNetworkManager {
  AppNetworkManagerImpl() {
    _manager = _getManager();
  }

  late INetKitManager _manager;

  String _accessToken = '';

  // String _refreshToken = '';

  String _sessionId = '';

  NetKitManager _getManager({
    bool isCleaned = false,
  }) {
    return NetKitManager(
      baseUrl: ApiConst.baseUrl,
      loggerEnabled: true,
      testMode: true,
      baseOptions: BaseOptions(
        headers: isCleaned ? _jsonHeader : _tokenHeader,
      ),
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
    _manager.clearAllHeaders();
    _accessToken = '';
    // _refreshToken = '';
    _sessionId = '';
    _manager = _getManager(isCleaned: true);
  }

  @override
  Future<T> requestModel<T extends AppNetworkModel<T>>(
    String path, {
    required T parseModel,
    required AppRequestType method,
    dynamic data,
  }) async {
    try {
      return _manager.requestModel<T>(
        path: path,
        model: parseModel,
        method: method.toRequestType,
        body: data,
      );
    } on ApiException catch (e) {
      throw ServerException.fromApiException(e);
    }
  }

  @override
  Future<List<T>> requestListModel<T extends AppNetworkModel<T>>(
    String path, {
    required T parseModel,
    required AppRequestType method,
    dynamic data,
  }) {
    try {
      return _manager.requestList<T>(
        path: path,
        model: parseModel,
        method: method.toRequestType,
        body: data,
      );
    } on ApiException catch (e) {
      throw ServerException.fromApiException(e);
    }
  }

  @override
  Future<void> requestVoid(
    String path, {
    required AppRequestType method,
    dynamic data,
  }) async {
    try {
      return _manager.requestVoid(
        path: path,
        method: method.toRequestType,
        body: data,
      );
    } on ApiException catch (e) {
      throw ServerException.fromApiException(e);
    }
  }
}
