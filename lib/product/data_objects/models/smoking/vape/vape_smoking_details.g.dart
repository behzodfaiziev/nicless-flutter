// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vape_smoking_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VapeSmokingDetails _$VapeSmokingDetailsFromJson(Map<String, dynamic> json) =>
    VapeSmokingDetails(
      deviceName: json['deviceName'] as String?,
      bondState: json['bondState'] as String?,
      bluetoothAddress: json['bluetoothAddress'] as String?,
      nicotinePercentage: (json['nicotinePercentage'] as num?)?.toDouble(),
      vapeTotalPuffLimit: (json['vapeTotalPuffLimit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$VapeSmokingDetailsToJson(VapeSmokingDetails instance) =>
    <String, dynamic>{
      'deviceName': instance.deviceName,
      'bondState': instance.bondState,
      'bluetoothAddress': instance.bluetoothAddress,
      'nicotinePercentage': instance.nicotinePercentage,
      'vapeTotalPuffLimit': instance.vapeTotalPuffLimit,
    };
