// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInResponseData _$SignInResponseDataFromJson(Map<String, dynamic> json) =>
    SignInResponseData(
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      sessionId: json['sessionId'] as String?,
    );

Map<String, dynamic> _$SignInResponseDataToJson(SignInResponseData instance) =>
    <String, dynamic>{
      'user': instance.user,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'sessionId': instance.sessionId,
    };
