import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../print/print_dev_manager.dart';
import '../../../core/primitive_database.dart';
import '../hive_database_manager.dart';
import '../hive_encryption.dart';
import 'hive_model_mixin.dart';

part '../hive_database_operation.dart';

abstract class BaseHiveManagerMixin {
  HiveEncryption get _encryption;
}

/// It should be registered at [T] model in app initialization.
/// [HiveDatabaseManager.registerAdapters] can be used to register models.
mixin HiveManagerMixin<T> on BaseHiveManagerMixin {
  final String _key = T.toString();

  late Box<T> _box;

  /// the start function is used to open the box with type [T]
  Future<void> start() async {
    if (Hive.isBoxOpen(_key)) {
      PrintDev.instance.exception('Hive box is already opened');
      return;
    }
    final Uint8List? encryptionKey = await _encryption.getSecureKey();

    if (encryptionKey == null) {
      PrintDev.instance.exception('Encryption key is null');
      throw Exception('Encryption key is null in $T');
    }

    _box = await Hive.openBox<T>(_key,
        encryptionCipher: HiveAesCipher(encryptionKey));
  }

  /// the clear function is used to clear the box
  Future<void> clear() => _box.clear();
}
