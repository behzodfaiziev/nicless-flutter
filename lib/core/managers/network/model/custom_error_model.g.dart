// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomErrorModel _$CustomErrorModelFromJson(Map<String, dynamic> json) =>
    CustomErrorModel(
      statusCode: (json['statusCode'] as num?)?.toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$CustomErrorModelToJson(CustomErrorModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
    };
