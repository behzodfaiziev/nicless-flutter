import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/managers/network/model/app_network_model.dart';
import 'smoking_details_model.dart';

part 'create_smoking_model.freezed.dart';
part 'create_smoking_model.g.dart';

@freezed
class CreateSmokingModel extends AppNetworkModel<CreateSmokingModel>
    with _$CreateSmokingModel {
  const factory CreateSmokingModel({
    String? smokingType,
    String? name,
    double? priceInUSDollars,
    SmokingDetailsModel? smoking,
  }) = _CreateSmokingModel;

  const CreateSmokingModel._();

  factory CreateSmokingModel.fromJson(Map<String, Object?> json) =>
      _$CreateSmokingModelFromJson(json);

  @override
  CreateSmokingModel fromJson(Map<String, dynamic> json) =>
      CreateSmokingModel.fromJson(json);
}
