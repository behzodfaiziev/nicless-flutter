import 'dart:convert';
import 'dart:typed_data';

import 'package:hive_flutter/hive_flutter.dart';

import '../../core/primitive_database.dart';
import '../../core/primitive_keys.dart';

class HiveEncryption {
  HiveEncryption({required this.primitiveDatabase});

  final PrimitiveDatabase primitiveDatabase;

  Uint8List? _encryptionKey;

  Future<Uint8List?> getSecureKey() async {
    if (_encryptionKey != null) return _encryptionKey!;

    final encryptionKeyString = await primitiveDatabase.read<String>(
        key: PrimitiveDatabaseKeys.securedDatabaseKey);
    if (encryptionKeyString == null) {
      final key = Hive.generateSecureKey();
      await primitiveDatabase.write<String>(
          key: PrimitiveDatabaseKeys.securedDatabaseKey,
          value: base64Url.encode(key));
    }
    final key = await primitiveDatabase.read<String>(
        key: PrimitiveDatabaseKeys.securedDatabaseKey);

    if (key == null) throw Exception('key is null');

    final Uint8List encryptionKey = base64Url.decode(key);

    _encryptionKey = encryptionKey;

    return encryptionKey;
  }
}
