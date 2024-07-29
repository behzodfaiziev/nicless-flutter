import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weight.g.dart';

@JsonSerializable()
class Weight with EquatableMixin {
 const Weight({
    this.value,
    this.asKg,
    this.unit,
  });

  factory Weight.fromJson(Map<String, dynamic> json) => _$WeightFromJson(json);
  final int? value;
  final int? asKg;
  final String? unit;

  Map<String, dynamic> toJson() => _$WeightToJson(this);

  @override
  List<Object?> get props => [value, asKg, unit];

  Weight copyWith({
    int? value,
    int? asKg,
    String? unit,
  }) {
    return Weight(
      value: value ?? this.value,
      asKg: asKg ?? this.asKg,
      unit: unit ?? this.unit,
    );
  }
}
