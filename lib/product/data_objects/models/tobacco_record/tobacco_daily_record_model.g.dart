// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tobacco_daily_record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TobaccoDailyRecordModel _$TobaccoDailyRecordModelFromJson(
        Map<String, dynamic> json) =>
    TobaccoDailyRecordModel(
      id: json['id'] as String?,
      recordType: json['recordType'] as String?,
      dailyCount: (json['dailyCount'] as num?)?.toInt(),
      smoking: json['smoking'] as String?,
      smokingSessions: (json['smokingSessions'] as List<dynamic>?)
          ?.map((e) => SmokingSessions.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$TobaccoDailyRecordModelToJson(
        TobaccoDailyRecordModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recordType': instance.recordType,
      'dailyCount': instance.dailyCount,
      'smoking': instance.smoking,
      'smokingSessions': instance.smokingSessions,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
