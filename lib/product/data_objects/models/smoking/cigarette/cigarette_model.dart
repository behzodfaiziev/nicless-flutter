import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../../core/managers/network/model/app_network_model.dart';
import 'cigarette_smoking_details.dart';

part 'cigarette_model.g.dart';

@JsonSerializable()
class CigaretteModel extends AppNetworkModel with EquatableMixin {
  const CigaretteModel({
    this.id,
    this.smokingType,
    this.smokingDetails,
    this.name,
    this.priceInUSDollars,
    this.createdBy,
    this.createdAt,
    this.updatedAt,
  });

  factory CigaretteModel.fromJson(Map<String, dynamic> json) =>
      _$CigaretteModelFromJson(json);
  final String? id;
  final String? smokingType;
  final CigaretteSmokingDetails? smokingDetails;
  final String? name;
  final double? priceInUSDollars;
  final String? createdBy;
  final String? createdAt;
  final String? updatedAt;

  @override
  CigaretteModel fromJson(Map<String, dynamic> json) =>
      CigaretteModel.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$CigaretteModelToJson(this);

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

  CigaretteModel copyWith({
    String? id,
    String? smokingType,
    CigaretteSmokingDetails? smokingDetails,
    String? name,
    double? priceInUSDollars,
    String? createdBy,
    String? createdAt,
    String? updatedAt,
  }) {
    return CigaretteModel(
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
