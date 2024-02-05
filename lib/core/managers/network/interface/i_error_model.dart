import 'i_network_model.dart';

abstract class IErrorModel<T extends INetworkModel<T>?> {
  int? statusCode;
  String? description;
  T? model;
}
