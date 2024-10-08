import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/managers/network/model/app_network_model.dart';

part 'smoking_history.g.dart';

@JsonSerializable()
class SmokingHistory extends AppNetworkModel with EquatableMixin {
  const SmokingHistory({
    this.years,
    this.cigarettesPerDay,
    this.quitAttempts,
  });

  factory SmokingHistory.fromJson(Map<String, dynamic> json) =>
      _$SmokingHistoryFromJson(json);

  final int? years;
  final int? cigarettesPerDay;
  final int? quitAttempts;

  @override
  SmokingHistory fromJson(Map<String, dynamic> json) =>
      SmokingHistory.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$SmokingHistoryToJson(this);

  @override
  List<Object?> get props => [years, cigarettesPerDay, quitAttempts];

  SmokingHistory copyWith({
    int? years,
    int? cigarettesPerDay,
    int? quitAttempts,
  }) {
    return SmokingHistory(
      years: years ?? this.years,
      cigarettesPerDay: cigarettesPerDay ?? this.cigarettesPerDay,
      quitAttempts: quitAttempts ?? this.quitAttempts,
    );
  }
}
