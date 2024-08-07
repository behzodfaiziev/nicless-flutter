import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/managers/network/model/app_network_model.dart';
import 'smoking_details_model.dart';

part 'smoking_data_model.freezed.dart';
part 'smoking_data_model.g.dart';

@freezed
class SmokingDataModel extends AppNetworkModel<SmokingDataModel>
    with _$SmokingDataModel {
  const factory SmokingDataModel({
    String? id,
    SmokingDetailsModel? smokingDetails,
    String? name,
    int? priceInUSDollars,
    List<String>? dailyRecords,
    String? smokingType,
    String? createdAt,
    String? updatedAt,
  }) = _SmokingDataModel;

  const SmokingDataModel._();

  factory SmokingDataModel.fromJson(Map<String, Object?> json) =>
      _$SmokingDataModelFromJson(json);

  @override
  SmokingDataModel fromJson(Map<String, dynamic> json) =>
      SmokingDataModel.fromJson(json);
}
