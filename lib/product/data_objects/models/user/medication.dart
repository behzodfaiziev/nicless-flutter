import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'medication.g.dart';

@JsonSerializable()
class Medication with EquatableMixin {
  const Medication({
    this.current,
    this.past,
  });

  factory Medication.fromJson(Map<String, dynamic> json) =>
      _$MedicationFromJson(json);
  final List<String>? current;
  final List<String>? past;

  Map<String, dynamic> toJson() => _$MedicationToJson(this);

  @override
  List<Object?> get props => [current, past];

  Medication copyWith({
    List<String>? current,
    List<String>? past,
  }) {
    return Medication(
      current: current ?? this.current,
      past: past ?? this.past,
    );
  }
}
