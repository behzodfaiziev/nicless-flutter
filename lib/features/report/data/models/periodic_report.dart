import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/managers/network/model/app_network_model.dart';

part 'periodic_report.freezed.dart';
part 'periodic_report.g.dart';

@freezed
class PeriodicReport extends AppNetworkModel with _$PeriodicReport {
  const factory PeriodicReport({
    String? title,
    String? description,
  }) = _PeriodicReport;

  const PeriodicReport._();

  factory PeriodicReport.fromJson(Map<String, Object?> json) =>
      _$PeriodicReportFromJson(json);

  @override
  PeriodicReport fromJson(Map<String, dynamic> json) =>
      PeriodicReport.fromJson(json);
}
