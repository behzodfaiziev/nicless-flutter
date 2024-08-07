// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cigarette_smoking_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CigaretteSmokingDetails _$CigaretteSmokingDetailsFromJson(
        Map<String, dynamic> json) =>
    CigaretteSmokingDetails(
      countInOnePack: (json['countInOnePack'] as num?)?.toInt(),
      nicotineAsMg: (json['nicotineAsMg'] as num?)?.toDouble(),
      co: (json['co'] as num?)?.toDouble(),
      dragCountPerCigarette: (json['dragCountPerCigarette'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CigaretteSmokingDetailsToJson(
        CigaretteSmokingDetails instance) =>
    <String, dynamic>{
      'countInOnePack': instance.countInOnePack,
      'nicotineAsMg': instance.nicotineAsMg,
      'co': instance.co,
      'dragCountPerCigarette': instance.dragCountPerCigarette,
    };
