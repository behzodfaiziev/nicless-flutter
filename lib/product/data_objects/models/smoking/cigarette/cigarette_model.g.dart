// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cigarette_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CigaretteModel _$CigaretteModelFromJson(Map<String, dynamic> json) =>
    CigaretteModel(
      id: json['id'] as String?,
      smokingType: json['smokingType'] as String?,
      smokingDetails: json['smokingDetails'] == null
          ? null
          : CigaretteSmokingDetails.fromJson(
              json['smokingDetails'] as Map<String, dynamic>),
      name: json['name'] as String?,
      priceInUSDollars: (json['priceInUSDollars'] as num?)?.toDouble(),
      createdBy: json['createdBy'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$CigaretteModelToJson(CigaretteModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'smokingType': instance.smokingType,
      'smokingDetails': instance.smokingDetails,
      'name': instance.name,
      'priceInUSDollars': instance.priceInUSDollars,
      'createdBy': instance.createdBy,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
