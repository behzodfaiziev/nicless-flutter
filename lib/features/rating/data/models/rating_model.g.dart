// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RatingModel _$RatingModelFromJson(Map<String, dynamic> json) => RatingModel(
      id: json['id'] as String?,
      rank: json['rank'] as int?,
      name: json['name'] as String?,
      averageCO2: (json['averageCO2'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$RatingModelToJson(RatingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rank': instance.rank,
      'name': instance.name,
      'averageCO2': instance.averageCO2,
    };
