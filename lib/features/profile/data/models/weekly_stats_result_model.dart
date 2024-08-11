import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/managers/network/model/app_network_model.dart';
import 'weekly_stats_model.dart';

part 'weekly_stats_result_model.freezed.dart';
part 'weekly_stats_result_model.g.dart';

@freezed
class WeeklyStatsResultModel extends AppNetworkModel<WeeklyStatsResultModel>
    with _$WeeklyStatsResultModel {
  const factory WeeklyStatsResultModel({
    List<WeeklyStatsModel>? data,
  }) = _WeeklyStatsResultModel;

  const WeeklyStatsResultModel._();

  factory WeeklyStatsResultModel.fromJson(Map<String, Object?> json) =>
      _$WeeklyStatsResultModelFromJson(json);

  @override
  WeeklyStatsResultModel fromJson(Map<String, dynamic> json) =>
      WeeklyStatsResultModel.fromJson(json);
}
