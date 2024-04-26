import 'package:json_annotation/json_annotation.dart';

import '../interface/i_network_model.dart';

part 'error_model_custom.g.dart';

@JsonSerializable()
class ErrorModelCustom extends INetworkModel<ErrorModelCustom> {

  ErrorModelCustom({
    this.statusCode,
    this.message,
  });

  factory ErrorModelCustom.fromJson(Map<String, dynamic> json) {
    return _$ErrorModelCustomFromJson(json);
  }
  int? statusCode;
  dynamic message;

  @override
  ErrorModelCustom fromJson(Map<String, dynamic> json) =>
      ErrorModelCustom.fromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ErrorModelCustomToJson(this);
}
