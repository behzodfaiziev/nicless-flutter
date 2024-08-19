import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'height.g.dart';

@JsonSerializable()
class Height with EquatableMixin {
  const Height({
    this.value,
    this.asCm,
    this.unit,
  });

  factory Height.fromJson(Map<String, dynamic> json) => _$HeightFromJson(json);
  final int? value;
  final int? asCm;
  final String? unit;

  Map<String, dynamic> toJson() => _$HeightToJson(this);

  @override
  List<Object?> get props => [value, asCm, unit];

  Height copyWith({
    int? value,
    int? asCm,
    String? unit,
  }) {
    return Height(
      value: value ?? this.value,
      asCm: asCm ?? this.asCm,
      unit: unit ?? this.unit,
    );
  }
}
