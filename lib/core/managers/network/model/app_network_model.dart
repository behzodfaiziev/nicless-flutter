import 'package:flutter/foundation.dart';
import 'package:net_kit/net_kit.dart';

@immutable
abstract class AppNetworkModel<T> extends INetKitModel<T> {
  /// Default constructor for all network model
  const AppNetworkModel();

  /// Convert to json for request body
  @override
  Map<String, dynamic>? toJson();

  /// Parse json to model
  @override
  T fromJson(Map<String, dynamic> json);
}
