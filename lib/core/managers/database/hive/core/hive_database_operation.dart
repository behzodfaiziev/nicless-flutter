part of 'mixin/hive_manager_mixin.dart';

class HiveDatabaseOperation<T extends HiveModelMixin>
    extends BaseHiveManagerMixin with HiveManagerMixin<T> {
  HiveDatabaseOperation({required PrimitiveDatabase primitiveDatabase}) {
    _encryption = HiveEncryption(primitiveDatabase: primitiveDatabase);
  }

  @override
  late final HiveEncryption _encryption;

  /// the 'put' function is used to put the model in the box
  /// Args:
  /// model: the model with type [T] to be put in the box
  Future<void> put(T model) => _box.put(model.key, model);

  /// the 'read' function is used to get the model from the box
  /// Args:
  /// key: the key of the type String to be retrieved
  T? read(String key) => _box.get(key);

  /// the 'delete' function is used to delete the model from the box
  /// Args:
  /// key: the key of the type String to be deleted
  Future<void> delete(String key) => _box.delete(key);

  /// the 'putAll' function is used to put all the models in the box
  /// Args:
  /// models: the list of models with type [T] to be put in the box
  Future<void> putAll(List<T> models) async {
    for (final model in models) {
      await put(model);
    }
  }

  /// the 'putAllMap' function is used to put all the models in the box
  /// Args:
  /// models: the map of models with type [T] to be put in the box
  Future<void> putAllMap(Map<String, T> models) async {
    for (final model in models.values) {
      await put(model);
    }
  }

  Future<List<T>> getAll() async {
    final List<T> result = [];
    for (final key in _box.keys) {
      final T? item = _box.get(key);
      if (item != null) result.add(item);
    }
    return result;
  }

  Stream<Iterable<T>> get listenableBox {
    return Stream.value(_box.listenable().value.values);
  }
}
