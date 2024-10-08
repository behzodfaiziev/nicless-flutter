import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/managers/network/model/app_network_model.dart';
import 'smoking_sessions.dart';

part 'tobacco_daily_record_model.g.dart';

@JsonSerializable()
class TobaccoDailyRecordModel extends AppNetworkModel with EquatableMixin {
  const TobaccoDailyRecordModel({
    this.id,
    this.recordType,
    this.dailyCount,
    this.smoking,
    this.smokingSessions,
    this.createdAt,
    this.updatedAt,
  });

  factory TobaccoDailyRecordModel.fromJson(Map<String, dynamic> json) =>
      _$TobaccoDailyRecordModelFromJson(json);

  final String? id;
  final String? recordType;
  final int? dailyCount;
  final String? smoking;
  final List<SmokingSessions>? smokingSessions;
  final String? createdAt;
  final String? updatedAt;

  @override
  TobaccoDailyRecordModel fromJson(Map<String, dynamic> json) =>
      TobaccoDailyRecordModel.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$TobaccoDailyRecordModelToJson(this);

  @override
  List<Object?> get props => [
        id,
        recordType,
        dailyCount,
        smoking,
        smokingSessions,
        createdAt,
        updatedAt,
      ];

  TobaccoDailyRecordModel copyWith({
    String? id,
    String? recordType,
    int? dailyCount,
    String? smoking,
    List<SmokingSessions>? smokingSessions,
    String? createdAt,
    String? updatedAt,
  }) {
    return TobaccoDailyRecordModel(
      id: id ?? this.id,
      recordType: recordType ?? this.recordType,
      dailyCount: dailyCount ?? this.dailyCount,
      smoking: smoking ?? this.smoking,
      smokingSessions: smokingSessions ?? this.smokingSessions,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
