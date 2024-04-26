import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../error/exceptions/cache_exception.dart';
import '../../../utility/parser/parser_utility.dart';
import '../core/primitive_database.dart';
import '../core/primitive_keys.dart';

class SecureDatabaseManager extends PrimitiveDatabase {
  SecureDatabaseManager(this._secureStorage);

  final FlutterSecureStorage _secureStorage;

  @override
  Future<T?> read<T>({required PrimitiveDatabaseKeys key}) async {
    try {
      final String? response = await _secureStorage.read(key: key.name);
      if (response == null || response.isEmpty) return null;
      return ParserUtility.parseStringToType<T>(response);
    } catch (e) {
      throw CacheException(message: 'Error reading from secure storage: $e');
    }
  }

  @override
  Future<bool> write<T>(
      {required PrimitiveDatabaseKeys key, required T value,}) async {
    try {
      await _secureStorage.write(key: key.name, value: value.toString());
      return true;
    } catch (e) {
      throw CacheException(message: 'Error writing to secure storage: $e');
    }
  }
}
