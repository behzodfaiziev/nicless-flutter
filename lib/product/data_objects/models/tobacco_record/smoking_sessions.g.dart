// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smoking_sessions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SmokingSessions _$SmokingSessionsFromJson(Map<String, dynamic> json) =>
    SmokingSessions(
      increaseCount: (json['increaseCount'] as num?)?.toInt(),
      durationAsSeconds: (json['durationAsSeconds'] as num?)?.toInt(),
      sessionStartDate: json['sessionStartDate'] as String?,
    );

Map<String, dynamic> _$SmokingSessionsToJson(SmokingSessions instance) =>
    <String, dynamic>{
      'increaseCount': instance.increaseCount,
      'durationAsSeconds': instance.durationAsSeconds,
      'sessionStartDate': instance.sessionStartDate,
    };
