// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_smoking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailySmokingModelImpl _$$DailySmokingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DailySmokingModelImpl(
      smokingId: json['smokingId'] as String?,
      increasedCount: (json['increasedCount'] as num?)?.toInt(),
      seconds: (json['seconds'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DailySmokingModelImplToJson(
        _$DailySmokingModelImpl instance) =>
    <String, dynamic>{
      'smokingId': instance.smokingId,
      'increasedCount': instance.increasedCount,
      'seconds': instance.seconds,
    };
