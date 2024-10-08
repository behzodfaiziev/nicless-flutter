import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/managers/network/model/app_network_model.dart';
import 'periodic_report.dart';

part 'periodic_report_model.freezed.dart';
part 'periodic_report_model.g.dart';

@freezed
class PeriodicReportModel extends AppNetworkModel with _$PeriodicReportModel {
  const factory PeriodicReportModel({
    List<PeriodicReport>? data,
  }) = _PeriodicReportModel;

  const PeriodicReportModel._();

  factory PeriodicReportModel.fromJson(Map<String, Object?> json) =>
      _$PeriodicReportModelFromJson(json);

  @override
  PeriodicReportModel fromJson(Map<String, dynamic> json) =>
      PeriodicReportModel.fromJson(json);
}
