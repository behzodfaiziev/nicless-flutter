import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'goal.g.dart';

@JsonSerializable()
class Goal extends INetworkModel<Goal> with EquatableMixin {
  const Goal({
    this.quitDate,
    this.targetCigarettesPerDay,
  });

  factory Goal.fromJson(Map<String, dynamic> json) => _$GoalFromJson(json);

  final String? quitDate;
  final int? targetCigarettesPerDay;

  @override
  Goal fromJson(Map<String, dynamic> json) => Goal.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$GoalToJson(this);

  @override
  List<Object?> get props => [quitDate, targetCigarettesPerDay];

  Goal copyWith({
    String? quitDate,
    int? targetCigarettesPerDay,
  }) {
    return Goal(
      quitDate: quitDate ?? this.quitDate,
      targetCigarettesPerDay:
          targetCigarettesPerDay ?? this.targetCigarettesPerDay,
    );
  }
}
