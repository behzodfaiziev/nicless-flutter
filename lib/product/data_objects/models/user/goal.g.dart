// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Goal _$GoalFromJson(Map<String, dynamic> json) => Goal(
      quitDate: json['quitDate'] as String?,
      targetCigarettesPerDay: (json['targetCigarettesPerDay'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GoalToJson(Goal instance) => <String, dynamic>{
      'quitDate': instance.quitDate,
      'targetCigarettesPerDay': instance.targetCigarettesPerDay,
    };
