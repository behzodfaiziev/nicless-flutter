// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'periodic_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PeriodicReportModelImpl _$$PeriodicReportModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PeriodicReportModelImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => PeriodicReport.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PeriodicReportModelImplToJson(
        _$PeriodicReportModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
