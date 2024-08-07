import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'vape_smoking_details.g.dart';

@JsonSerializable()
class VapeSmokingDetails extends INetworkModel<VapeSmokingDetails>
    with EquatableMixin {
  const VapeSmokingDetails({
    this.deviceName,
    this.bondState,
    this.bluetoothAddress,
    this.nicotinePercentage,
    this.vapeTotalPuffLimit,
  });

  factory VapeSmokingDetails.fromJson(Map<String, dynamic> json) =>
      _$VapeSmokingDetailsFromJson(json);

  final String? deviceName;
  final String? bondState;
  final String? bluetoothAddress;
  final double? nicotinePercentage;
  final int? vapeTotalPuffLimit;

  @override
  VapeSmokingDetails fromJson(Map<String, dynamic> json) =>
      VapeSmokingDetails.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$VapeSmokingDetailsToJson(this);

  @override
  List<Object?> get props => [
        deviceName,
        bondState,
        bluetoothAddress,
        nicotinePercentage,
        vapeTotalPuffLimit,
      ];

  VapeSmokingDetails copyWith({
    String? deviceName,
    String? bondState,
    String? bluetoothAddress,
    double? nicotinePercentage,
    int? vapeTotalPuffLimit,
  }) {
    return VapeSmokingDetails(
      deviceName: deviceName ?? this.deviceName,
      bondState: bondState ?? this.bondState,
      bluetoothAddress: bluetoothAddress ?? this.bluetoothAddress,
      nicotinePercentage: nicotinePercentage ?? this.nicotinePercentage,
      vapeTotalPuffLimit: vapeTotalPuffLimit ?? this.vapeTotalPuffLimit,
    );
  }
}
