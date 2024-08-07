// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vape_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VapeModel _$VapeModelFromJson(Map<String, dynamic> json) => VapeModel(
      id: json['id'] as String?,
      smokingType: json['smokingType'] as String?,
      smokingDetails: json['smokingDetails'] == null
          ? null
          : VapeSmokingDetails.fromJson(
              json['smokingDetails'] as Map<String, dynamic>),
      name: json['name'] as String?,
      priceInUSDollars: (json['priceInUSDollars'] as num?)?.toDouble(),
      createdBy: json['createdBy'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$VapeModelToJson(VapeModel instance) => <String, dynamic>{
      'id': instance.id,
      'smokingType': instance.smokingType,
      'smokingDetails': instance.smokingDetails,
      'name': instance.name,
      'priceInUSDollars': instance.priceInUSDollars,
      'createdBy': instance.createdBy,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
