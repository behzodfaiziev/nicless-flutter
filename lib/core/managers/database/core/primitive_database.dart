import 'primitive_keys.dart';

abstract class PrimitiveDatabase {
  Future<T?> read<T>({required PrimitiveDatabaseKeys key});

  Future<bool> write<T>({required PrimitiveDatabaseKeys key, required T value});
}
