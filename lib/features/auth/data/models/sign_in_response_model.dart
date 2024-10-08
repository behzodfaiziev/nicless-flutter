import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/managers/network/model/app_network_model.dart';
import 'sign_in_response_data.dart';

part 'sign_in_response_model.g.dart';

@JsonSerializable()
class SignInResponseModel extends AppNetworkModel with EquatableMixin {
  SignInResponseModel({
    this.statusCode,
    this.data,
  });

  factory SignInResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseModelFromJson(json);

  final int? statusCode;
  final SignInResponseData? data;

  @override
  SignInResponseModel fromJson(Map<String, dynamic> json) =>
      SignInResponseModel.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$SignInResponseModelToJson(this);

  @override
  List<Object?> get props => [statusCode, data];

  SignInResponseModel copyWith({int? statusCode, SignInResponseData? data}) {
    return SignInResponseModel(
      statusCode: statusCode ?? this.statusCode,
      data: data ?? this.data,
    );
  }
}
