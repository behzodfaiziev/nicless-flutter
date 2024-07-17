import 'package:flutter/foundation.dart';
import 'package:vexana/vexana.dart';

@immutable
/// Interface for network model
abstract class AppNetworkModel<T> extends INetworkModel<T> {
  /// Default constructor for all network model
  const AppNetworkModel();

  /// Convert to json for request body
  @override
  Map<String, dynamic>? toJson();

  /// Parse json to model
  @override
  T fromJson(Map<String, dynamic> json);
}
