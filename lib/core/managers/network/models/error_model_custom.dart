import 'package:json_annotation/json_annotation.dart';

import '../interface/i_network_model.dart';

part 'error_model_custom.g.dart';

@JsonSerializable()
class ErrorModelCustom extends INetworkModel<ErrorModelCustom> {
  int? statusCode;
  dynamic message;

  ErrorModelCustom({
    this.statusCode,
    this.message,
  });

  @override
  ErrorModelCustom fromJson(Map<String, dynamic> json) =>
      ErrorModelCustom.fromJson(json);

  factory ErrorModelCustom.fromJson(Map<String, dynamic> json) {
    return _$ErrorModelCustomFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$ErrorModelCustomToJson(this);
}
