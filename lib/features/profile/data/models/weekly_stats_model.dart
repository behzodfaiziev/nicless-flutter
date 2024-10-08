import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/managers/network/model/app_network_model.dart';
import '../../../../product/data_objects/models/smoking/smoking_data_model.dart';

part 'weekly_stats_model.freezed.dart';
part 'weekly_stats_model.g.dart';

@freezed
class WeeklyStatsModel extends AppNetworkModel with _$WeeklyStatsModel {
  const factory WeeklyStatsModel({
    String? id,
    String? recordType,
    int? dailyCount,
    int? dailySpentTime,
    SmokingDataModel? smoking,
    String? createdAt,
    String? updatedAt,
  }) = _WeeklyStatsModel;

  const WeeklyStatsModel._();

  factory WeeklyStatsModel.fromJson(Map<String, Object?> json) =>
      _$WeeklyStatsModelFromJson(json);

  @override
  WeeklyStatsModel fromJson(Map<String, dynamic> json) =>
      WeeklyStatsModel.fromJson(json);
}
