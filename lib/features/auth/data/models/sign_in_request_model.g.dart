// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInRequestModel _$SignInRequestModelFromJson(Map<String, dynamic> json) =>
    SignInRequestModel(
      email: json['email'] as String?,
      password: json['password'] as String?,
      gRecaptchaResponse: json['gRecaptchaResponse'] as String?,
    );

Map<String, dynamic> _$SignInRequestModelToJson(SignInRequestModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'gRecaptchaResponse': instance.gRecaptchaResponse,
    };
