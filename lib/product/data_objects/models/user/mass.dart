import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'height.dart';
import 'weight.dart';

part 'mass.g.dart';

@JsonSerializable()
class Mass with EquatableMixin {
  const Mass({
    this.weight,
    this.height,
  });

  factory Mass.fromJson(Map<String, dynamic> json) => _$MassFromJson(json);
  final Weight? weight;
  final Height? height;

  Map<String, dynamic> toJson() => _$MassToJson(this);

  @override
  List<Object?> get props => [weight, height];

  Mass copyWith({
    Weight? weight,
    Height? height,
  }) {
    return Mass(
      weight: weight ?? this.weight,
      height: height ?? this.height,
    );
  }
}
