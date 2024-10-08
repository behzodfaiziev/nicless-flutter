import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/managers/network/model/app_network_model.dart';

part 'smoking_sessions.g.dart';

@JsonSerializable()
class SmokingSessions extends AppNetworkModel with EquatableMixin {
  SmokingSessions({
    this.increaseCount,
    this.durationAsSeconds,
    this.sessionStartDate,
  });

  factory SmokingSessions.fromJson(Map<String, dynamic> json) =>
      _$SmokingSessionsFromJson(json);
  final int? increaseCount;
  final int? durationAsSeconds;
  final String? sessionStartDate;

  @override
  SmokingSessions fromJson(Map<String, dynamic> json) =>
      SmokingSessions.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$SmokingSessionsToJson(this);

  @override
  List<Object?> get props =>
      [increaseCount, durationAsSeconds, sessionStartDate];

  SmokingSessions copyWith({
    int? increaseCount,
    int? durationAsSeconds,
    String? sessionStartDate,
  }) {
    return SmokingSessions(
      increaseCount: increaseCount ?? this.increaseCount,
      durationAsSeconds: durationAsSeconds ?? this.durationAsSeconds,
      sessionStartDate: sessionStartDate ?? this.sessionStartDate,
    );
  }
}
