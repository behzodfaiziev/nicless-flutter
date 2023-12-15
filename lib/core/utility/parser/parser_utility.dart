final class ParserUtility {
  /// Parses a String to types like int, double, bool, String
  /// Arguments:
  ///  value: String to be parsed
  /// Returns: T? (T is the type of the value)
  static T? parseStringToType<T>(String value) {
    switch (T) {
      case String:
        return value as T?;
      case int:
        return int.parse(value) as T?;
      case double:
        return double.parse(value) as T?;
      case bool:
        return bool.parse(value) as T?;
      default:
        throw Exception('Type not supported');
    }
  }
}
