// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'height.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Height _$HeightFromJson(Map<String, dynamic> json) => Height(
      value: (json['value'] as num?)?.toInt(),
      asCm: (json['asCm'] as num?)?.toInt(),
      unit: json['unit'] as String?,
    );

Map<String, dynamic> _$HeightToJson(Height instance) => <String, dynamic>{
      'value': instance.value,
      'asCm': instance.asCm,
      'unit': instance.unit,
    };
