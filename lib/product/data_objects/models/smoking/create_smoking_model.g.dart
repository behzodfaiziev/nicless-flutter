// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_smoking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateSmokingModelImpl _$$CreateSmokingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateSmokingModelImpl(
      smokingType: json['smokingType'] as String?,
      name: json['name'] as String?,
      priceInUSDollars: (json['priceInUSDollars'] as num?)?.toDouble(),
      smoking: json['smoking'] == null
          ? null
          : SmokingDetailsModel.fromJson(
              json['smoking'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateSmokingModelImplToJson(
        _$CreateSmokingModelImpl instance) =>
    <String, dynamic>{
      'smokingType': instance.smokingType,
      'name': instance.name,
      'priceInUSDollars': instance.priceInUSDollars,
      'smoking': instance.smoking,
    };
