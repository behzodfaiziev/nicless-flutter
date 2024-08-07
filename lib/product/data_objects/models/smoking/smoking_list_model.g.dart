// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smoking_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SmokingModelImpl _$$SmokingModelImplFromJson(Map<String, dynamic> json) =>
    _$SmokingModelImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SmokingDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SmokingModelImplToJson(_$SmokingModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
