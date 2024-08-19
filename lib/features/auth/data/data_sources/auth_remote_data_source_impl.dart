import '../../../../core/managers/network/app_network_manager.dart';
import '../../../../core/managers/network/enum/app_request_type.dart';
import '../../../../product/constants/api_const.dart';
import '../models/sign_in_request_model.dart';
import '../models/sign_in_response_model.dart';
import '../models/sign_up_request_model.dart';
import 'auth_remote_data_source.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  const AuthRemoteDataSourceImpl({
    required AppNetworkManager networkManager,
  }) : _network = networkManager;

  final AppNetworkManager _network;

  @override
  Future<SignInResponseModel> signIn({required SignInRequestModel params}) {
    return _network.requestModel<SignInResponseModel>(
      ApiConst.signIn,
      method: AppRequestType.post,
      parseModel: SignInResponseModel(),
      data: params,
    );
  }

  @override
  Future<void> signOut() {
    return _network.requestVoid(
      ApiConst.signOut,
      method: AppRequestType.get,
    );
  }

  @override
  void setToken({
    required String accessToken,
    required String refreshToken,
    required String sessionId,
  }) {
    _network.setToken(
      accessToken: accessToken,
      refreshToken: refreshToken,
      sessionId: sessionId,
    );
  }

  @override
  Future<void> signUp({required SignUpRequestModel params}) {
    return _network.requestVoid(
      ApiConst.signUp,
      method: AppRequestType.post,
      data: params,
    );
  }
}
