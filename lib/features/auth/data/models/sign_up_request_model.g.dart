// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpRequestModel _$SignUpRequestModelFromJson(Map<String, dynamic> json) =>
    SignUpRequestModel(
      email: json['email'] as String?,
      password: json['password'] as String?,
      fullName: json['fullName'] as String?,
      fcmToken: json['fcmToken'] as String?,
      platform: json['platform'] as String?,
      mobileNumber: json['mobileNumber'] as String?,
      timeZone: json['timeZone'] as String?,
    );

Map<String, dynamic> _$SignUpRequestModelToJson(SignUpRequestModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'fullName': instance.fullName,
      'fcmToken': instance.fcmToken,
      'platform': instance.platform,
      'mobileNumber': instance.mobileNumber,
      'timeZone': instance.timeZone,
    };
