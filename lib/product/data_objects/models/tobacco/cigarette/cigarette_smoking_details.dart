import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'cigarette_smoking_details.g.dart';

@JsonSerializable()
class CigaretteSmokingDetails extends INetworkModel<CigaretteSmokingDetails>
    with EquatableMixin {
  CigaretteSmokingDetails({
    this.countInOnePack,
    this.nicotineAsMg,
    this.co,
    this.dragCountPerCigarette,
  });

  factory CigaretteSmokingDetails.fromJson(Map<String, dynamic> json) =>
      _$CigaretteSmokingDetailsFromJson(json);

  final int? countInOnePack;
  final double? nicotineAsMg;
  final double? co;
  final int? dragCountPerCigarette;

  @override
  CigaretteSmokingDetails fromJson(Map<String, dynamic> json) =>
      CigaretteSmokingDetails.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$CigaretteSmokingDetailsToJson(this);

  @override
  List<Object?> get props => [
        countInOnePack,
        nicotineAsMg,
        co,
        dragCountPerCigarette,
      ];

  CigaretteSmokingDetails copyWith({
    int? countInOnePack,
    double? nicotineAsMg,
    double? co,
    int? dragCountPerCigarette,
  }) {
    return CigaretteSmokingDetails(
      countInOnePack: countInOnePack ?? this.countInOnePack,
      nicotineAsMg: nicotineAsMg ?? this.nicotineAsMg,
      co: co ?? this.co,
      dragCountPerCigarette:
          dragCountPerCigarette ?? this.dragCountPerCigarette,
    );
  }
}
