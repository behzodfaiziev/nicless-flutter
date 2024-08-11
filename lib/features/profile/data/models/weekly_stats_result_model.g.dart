// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_stats_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeeklyStatsResultModelImpl _$$WeeklyStatsResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WeeklyStatsResultModelImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => WeeklyStatsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeeklyStatsResultModelImplToJson(
        _$WeeklyStatsResultModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
