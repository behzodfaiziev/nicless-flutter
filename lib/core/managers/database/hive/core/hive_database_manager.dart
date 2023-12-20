import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../../product/database/database_adapters.dart';
import '../../../../../product/utils/constants/app/app_const.dart';
import '../../../../utility/file_operation.dart';

abstract class IHiveManager {
  Future<void> start();

  void clear();
}

@immutable
final class HiveDatabaseManager implements IHiveManager {
  final String _subDirectory = 'database';

  @override
  Future<void> start() async {
    await _initFlutter();
    registerAdapters();
  }

  @override
  Future<void> clear() async {
    await Hive.deleteFromDisk();
    await FileOperation.instance.removeDirectory(_subDirectory);
  }

  /// Opens database connection using [Hive]
  Future<void> _initFlutter() async {
    final String? subPath = await FileOperation.instance
        .createSubDirectory(AppConst.databaseSubDir);

    await Hive.initFlutter(subPath);
  }

  void registerAdapters() {
    DatabaseAdapters.registerAdapters();
  }
}
