import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/managers/network/interface/i_network_model.dart';

part 'rating_model.g.dart';

@JsonSerializable()
class RatingModel extends INetworkModel<RatingModel> with EquatableMixin {
  const RatingModel({
    this.id,
    this.rank,
    this.name,
    this.averageCO2,
  });

  factory RatingModel.fromJson(Map<String, dynamic> json) =>
      _$RatingModelFromJson(json);

  final String? id;
  final int? rank;
  final String? name;
  final double? averageCO2;

  @override
  RatingModel fromJson(Map<String, dynamic> json) => RatingModel.fromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RatingModelToJson(this);

  @override
  List<Object?> get props => [id, rank, name, averageCO2];

  RatingModel copyWith({
    String? id,
    int? rank,
    String? name,
    double? averageCO2,
  }) {
    return RatingModel(
      id: id ?? this.id,
      rank: rank ?? this.rank,
      name: name ?? this.name,
      averageCO2: averageCO2 ?? this.averageCO2,
    );
  }
}
