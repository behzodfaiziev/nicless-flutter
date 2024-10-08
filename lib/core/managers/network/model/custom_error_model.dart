import 'package:json_annotation/json_annotation.dart';

import 'app_network_model.dart';

part 'custom_error_model.g.dart';

@JsonSerializable()
class CustomErrorModel extends AppNetworkModel {
  const CustomErrorModel({
    this.statusCode,
    this.message,
  });

  factory CustomErrorModel.fromJson(Map<String, dynamic> json) {
    return _$CustomErrorModelFromJson(json);
  }

  final int? statusCode;
  final String? message;

  @override
  CustomErrorModel fromJson(Map<String, dynamic> json) =>
      CustomErrorModel.fromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CustomErrorModelToJson(this);
}
