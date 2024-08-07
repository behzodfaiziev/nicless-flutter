import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/managers/network/model/app_network_model.dart';
import 'smoking_data_model.dart';

part 'smoking_list_model.freezed.dart';
part 'smoking_list_model.g.dart';

@freezed
class SmokingListModel extends AppNetworkModel<SmokingListModel>
    with _$SmokingListModel {
  const factory SmokingListModel({
    List<SmokingDataModel>? data,
  }) = _SmokingModel;

  const SmokingListModel._();

  factory SmokingListModel.fromJson(Map<String, Object?> json) =>
      _$SmokingListModelFromJson(json);

  @override
  SmokingListModel fromJson(Map<String, dynamic> json) =>
      SmokingListModel.fromJson(json);
}
