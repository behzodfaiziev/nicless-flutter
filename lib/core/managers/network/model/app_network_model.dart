import 'package:flutter/foundation.dart';
import 'package:net_kit/net_kit.dart';

@immutable
abstract class AppNetworkModel extends INetKitModel {
  /// Default constructor for all network model
  const AppNetworkModel();

  /// Convert to json for request body
  @override
  Map<String, dynamic>? toJson();

  /// Parse json to model
  @override
  AppNetworkModel fromJson(Map<String, dynamic> json);
}
