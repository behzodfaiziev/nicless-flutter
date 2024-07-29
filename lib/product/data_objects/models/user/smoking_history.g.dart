// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smoking_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SmokingHistory _$SmokingHistoryFromJson(Map<String, dynamic> json) =>
    SmokingHistory(
      years: (json['years'] as num?)?.toInt(),
      cigarettesPerDay: (json['cigarettesPerDay'] as num?)?.toInt(),
      quitAttempts: (json['quitAttempts'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SmokingHistoryToJson(SmokingHistory instance) =>
    <String, dynamic>{
      'years': instance.years,
      'cigarettesPerDay': instance.cigarettesPerDay,
      'quitAttempts': instance.quitAttempts,
    };
