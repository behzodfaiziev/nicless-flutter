// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smoking_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SmokingDetailsModelImpl _$$SmokingDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SmokingDetailsModelImpl(
      deviceName: json['deviceName'] as String?,
      bluetoothAddress: json['bluetoothAddress'] as String?,
      nicotinePercentage: (json['nicotinePercentage'] as num?)?.toDouble(),
      vapeTotalPuffLimit: (json['vapeTotalPuffLimit'] as num?)?.toDouble(),
      countInOnePack: (json['countInOnePack'] as num?)?.toDouble(),
      nicotineAsMg: (json['nicotineAsMg'] as num?)?.toDouble(),
      co: (json['co'] as num?)?.toDouble(),
      dragCountPerCigarette:
          (json['dragCountPerCigarette'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SmokingDetailsModelImplToJson(
        _$SmokingDetailsModelImpl instance) =>
    <String, dynamic>{
      'deviceName': instance.deviceName,
      'bluetoothAddress': instance.bluetoothAddress,
      'nicotinePercentage': instance.nicotinePercentage,
      'vapeTotalPuffLimit': instance.vapeTotalPuffLimit,
      'countInOnePack': instance.countInOnePack,
      'nicotineAsMg': instance.nicotineAsMg,
      'co': instance.co,
      'dragCountPerCigarette': instance.dragCountPerCigarette,
    };
