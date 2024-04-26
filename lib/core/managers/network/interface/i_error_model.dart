import 'i_network_model.dart';

abstract class IErrorModel<T extends INetworkModel<T>?> {
  const IErrorModel({this.statusCode, this.description, this.model});

  final int? statusCode;
  final String? description;
  final T? model;
}
