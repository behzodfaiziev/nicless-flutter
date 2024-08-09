// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smoking_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SmokingDataModelImpl _$$SmokingDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SmokingDataModelImpl(
      id: json['_id'] as String?,
      smokingDetails: json['smokingDetails'] == null
          ? null
          : SmokingDetailsModel.fromJson(
              json['smokingDetails'] as Map<String, dynamic>),
      name: json['name'] as String?,
      priceInUSDollars: (json['priceInUSDollars'] as num?)?.toInt(),
      dailyRecords: (json['dailyRecords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      smokingType: json['smokingType'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$SmokingDataModelImplToJson(
        _$SmokingDataModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'smokingDetails': instance.smokingDetails,
      'name': instance.name,
      'priceInUSDollars': instance.priceInUSDollars,
      'dailyRecords': instance.dailyRecords,
      'smokingType': instance.smokingType,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
