import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/managers/network/model/app_network_model.dart';

part 'daily_smoking_model.freezed.dart';
part 'daily_smoking_model.g.dart';

@freezed
class DailySmokingModel extends AppNetworkModel with _$DailySmokingModel {
  const factory DailySmokingModel({
    String? smokingId,
    int? increasedCount,
    int? seconds,
  }) = _DailySmokingModel;

  const DailySmokingModel._();

  factory DailySmokingModel.fromJson(Map<String, Object?> json) =>
      _$DailySmokingModelFromJson(json);

  @override
  DailySmokingModel fromJson(Map<String, dynamic> json) =>
      DailySmokingModel.fromJson(json);
}
