import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/managers/network/model/app_network_model.dart';
import '../../../../product/data_objects/models/user/user_model.dart';

part 'sign_in_response_data.g.dart';

@JsonSerializable()
class SignInResponseData extends AppNetworkModel with EquatableMixin {
  SignInResponseData({
    this.user,
    this.accessToken,
    this.refreshToken,
    this.sessionId,
  });

  factory SignInResponseData.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseDataFromJson(json);

  final UserModel? user;
  final String? accessToken;
  final String? refreshToken;
  final String? sessionId;

  @override
  SignInResponseData fromJson(Map<String, dynamic> json) =>
      SignInResponseData.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$SignInResponseDataToJson(this);

  @override
  List<Object?> get props => [user, accessToken, refreshToken, sessionId];

  SignInResponseData copyWith({
    UserModel? user,
    String? accessToken,
    String? refreshToken,
    String? sessionId,
  }) {
    return SignInResponseData(
      user: user ?? this.user,
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
      sessionId: sessionId ?? this.sessionId,
    );
  }
}
