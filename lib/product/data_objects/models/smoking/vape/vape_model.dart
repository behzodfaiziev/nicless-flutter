import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../../core/managers/network/model/app_network_model.dart';
import 'vape_smoking_details.dart';

part 'vape_model.g.dart';

@JsonSerializable()
class VapeModel extends AppNetworkModel with EquatableMixin {
  const VapeModel({
    this.id,
    this.smokingType,
    this.smokingDetails,
    this.name,
    this.priceInUSDollars,
    this.createdBy,
    this.createdAt,
    this.updatedAt,
  });

  factory VapeModel.fromJson(Map<String, dynamic> json) =>
      _$VapeModelFromJson(json);

  final String? id;
  final String? smokingType;
  final VapeSmokingDetails? smokingDetails;
  final String? name;
  final double? priceInUSDollars;
  final String? createdBy;
  final String? createdAt;
  final String? updatedAt;

  @override
  VapeModel fromJson(Map<String, dynamic> json) => VapeModel.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$VapeModelToJson(this);

  @override
  List<Object?> get props => [
        id,
        smokingType,
        smokingDetails,
        name,
        priceInUSDollars,
        createdBy,
        createdAt,
        updatedAt,
      ];

  VapeModel copyWith({
    String? id,
    String? smokingType,
    VapeSmokingDetails? smokingDetails,
    String? name,
    double? priceInUSDollars,
    String? createdBy,
    String? createdAt,
    String? updatedAt,
  }) {
    return VapeModel(
      id: id ?? this.id,
      smokingType: smokingType ?? this.smokingType,
      smokingDetails: smokingDetails ?? this.smokingDetails,
      name: name ?? this.name,
      priceInUSDollars: priceInUSDollars ?? this.priceInUSDollars,
      createdBy: createdBy ?? this.createdBy,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
