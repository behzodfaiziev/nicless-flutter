// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeeklyStatsModelImpl _$$WeeklyStatsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WeeklyStatsModelImpl(
      id: json['id'] as String?,
      recordType: json['recordType'] as String?,
      dailyCount: (json['dailyCount'] as num?)?.toInt(),
      dailySpentTime: (json['dailySpentTime'] as num?)?.toInt(),
      smoking: json['smoking'] == null
          ? null
          : SmokingDataModel.fromJson(json['smoking'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$WeeklyStatsModelImplToJson(
        _$WeeklyStatsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recordType': instance.recordType,
      'dailyCount': instance.dailyCount,
      'dailySpentTime': instance.dailySpentTime,
      'smoking': instance.smoking,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
