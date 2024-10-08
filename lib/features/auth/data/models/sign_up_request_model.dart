import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/managers/network/model/app_network_model.dart';

part 'sign_up_request_model.g.dart';

@JsonSerializable()
class SignUpRequestModel extends AppNetworkModel with EquatableMixin {
  SignUpRequestModel({
    this.email,
    this.password,
    this.fullName,
    this.fcmToken,
    this.platform,
    this.mobileNumber,
    this.timeZone,
  });

  factory SignUpRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestModelFromJson(json);

  final String? email;
  final String? password;
  final String? fullName;
  final String? fcmToken;
  final String? platform;
  final String? mobileNumber;
  final String? timeZone;

  @override
  SignUpRequestModel fromJson(Map<String, dynamic> json) =>
      SignUpRequestModel.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$SignUpRequestModelToJson(this);

  @override
  List<Object?> get props =>
      [email, password, fullName, fcmToken, platform, mobileNumber, timeZone];

  SignUpRequestModel copyWith({
    String? email,
    String? password,
    String? fullName,
    String? fcmToken,
    String? platform,
    String? mobileNumber,
    String? timeZone,
  }) {
    return SignUpRequestModel(
      email: email ?? this.email,
      password: password ?? this.password,
      fullName: fullName ?? this.fullName,
      fcmToken: fcmToken ?? this.fcmToken,
      platform: platform ?? this.platform,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      timeZone: timeZone ?? this.timeZone,
    );
  }
}
