import 'i_error_model.dart';
import 'i_network_model.dart';

abstract class IResponseModel<T, E extends INetworkModel<E>?> {

  IResponseModel(this.data, this.error);
  T data;
  IErrorModel<E>? error;
}
