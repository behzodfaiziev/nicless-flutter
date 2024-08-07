import '../../../../core/managers/database/core/primitive_database.dart';
import '../../../../core/managers/database/core/primitive_keys.dart';
import 'auth_local_data_source.dart';

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  AuthLocalDataSourceImpl(this._database);

  final PrimitiveDatabase _database;

  @override
  Future<String?> getAccessToken() {
    removeAccessToken();
    return _database.read<String>(key: PrimitiveDatabaseKeys.accessToken);
  }

  @override
  Future<String?> getRefreshToken() {
    return _database.read<String>(key: PrimitiveDatabaseKeys.refreshToken);
  }

  @override
  Future<void> removeAccessToken() {
    return _database.write(
      key: PrimitiveDatabaseKeys.accessToken,
      value: '',
    );
  }

  @override
  Future<void> removeRefreshToken() {
    return _database.write(
      key: PrimitiveDatabaseKeys.refreshToken,
      value: '',
    );
  }

  @override
  Future<void> saveAccessToken(String token) {
    return _database.write(
      key: PrimitiveDatabaseKeys.accessToken,
      value: token,
    );
  }

  @override
  Future<void> saveRefreshToken(String token) {
    return _database.write(
      key: PrimitiveDatabaseKeys.refreshToken,
      value: token,
    );
  }
}
