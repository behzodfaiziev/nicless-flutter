import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/managers/network/model/app_network_model.dart';
import '../../../../features/bluetooth/data/models/bluetooth_device_model.dart';

part 'smoking_details_model.freezed.dart';
part 'smoking_details_model.g.dart';

/// # SmokingDetailsModel:
/// ## Vape
///     "deviceName": "Vape Device XYZ",
///     "bluetoothAddress": "00:1A:7D:DA:71:13",
///     "nicotinePercentage": 2.5,
///     "vapeTotalPuffLimit": 300
/// ## Cigarette
///     "countInOnePack": 20,
///     "nicotineAsMg": 1.2,
///     "co": 0.1,
///     "dragCountPerCigarette": 15
@freezed
class SmokingDetailsModel extends AppNetworkModel<SmokingDetailsModel>
    with _$SmokingDetailsModel {
  const factory SmokingDetailsModel({
    /// Vape
    String? deviceName,
    String? bluetoothAddress,
    double? nicotinePercentage,
    double? vapeTotalPuffLimit,

    /// Vape
    double? countInOnePack,
    double? nicotineAsMg,
    double? co,
    double? dragCountPerCigarette,
  }) = _SmokingDetailsModel;

  factory SmokingDetailsModel.fromJson(Map<String, Object?> json) =>
      _$SmokingDetailsModelFromJson(json);

  const SmokingDetailsModel._();

  BluetoothDeviceModel get bluetoothDeviceModel => BluetoothDeviceModel(
        name: deviceName,
        address: bluetoothAddress ?? '',
      );

  @override
  SmokingDetailsModel fromJson(Map<String, dynamic> json) =>
      SmokingDetailsModel.fromJson(json);
}
