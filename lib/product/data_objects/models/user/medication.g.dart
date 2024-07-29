// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Medication _$MedicationFromJson(Map<String, dynamic> json) => Medication(
      current:
          (json['current'] as List<dynamic>?)?.map((e) => e as String).toList(),
      past: (json['past'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$MedicationToJson(Medication instance) =>
    <String, dynamic>{
      'current': instance.current,
      'past': instance.past,
    };
