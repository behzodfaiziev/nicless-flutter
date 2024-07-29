// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weight.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weight _$WeightFromJson(Map<String, dynamic> json) => Weight(
      value: (json['value'] as num?)?.toInt(),
      asKg: (json['asKg'] as num?)?.toInt(),
      unit: json['unit'] as String?,
    );

Map<String, dynamic> _$WeightToJson(Weight instance) => <String, dynamic>{
      'value': instance.value,
      'asKg': instance.asKg,
      'unit': instance.unit,
    };
