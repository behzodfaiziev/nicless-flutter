import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/managers/network/model/app_network_model.dart';

part 'sign_in_request_model.g.dart';

@JsonSerializable()
class SignInRequestModel extends AppNetworkModel<SignInRequestModel>
    with EquatableMixin {
  SignInRequestModel({
    this.email,
    this.password,
    this.gRecaptchaResponse,
  });

  factory SignInRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SignInRequestModelFromJson(json);

  final String? email;
  final String? password;
  final String? gRecaptchaResponse;

  @override
  SignInRequestModel fromJson(Map<String, dynamic> json) =>
      SignInRequestModel.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$SignInRequestModelToJson(this);

  @override
  List<Object?> get props => [email, password, gRecaptchaResponse];

  SignInRequestModel copyWith({
    String? email,
    String? password,
    String? gRecaptchaResponse,
  }) {
    return SignInRequestModel(
      email: email ?? this.email,
      password: password ?? this.password,
      gRecaptchaResponse: gRecaptchaResponse ?? this.gRecaptchaResponse,
    );
  }
}
