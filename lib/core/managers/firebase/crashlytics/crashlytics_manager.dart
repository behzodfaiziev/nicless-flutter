import 'package:flutter/foundation.dart';

import '../../print/print_dev_manager.dart';
import 'service/i_crashlytics_service.dart';

class CrashlyticsManager {
  CrashlyticsManager(this._crashlyticsService) {
    if (kDebugMode) {
      _crashlyticsService.setCrashlyticsCollectionEnabled(enabled: false);
    }
  }

  final ICrashlyticsService _crashlyticsService;

  final PrintDev _printDev = PrintDev.instance;

  bool get isCrashlyticsCollectionEnabled =>
      _crashlyticsService.isCrashlyticsCollectionEnabled;

  Future<void> setCrashlyticsCollectionEnabled({required bool enabled}) async {
    return _crashlyticsService.setCrashlyticsCollectionEnabled(
        enabled: enabled,);
  }

  Future<void> sendCrash({
    required dynamic error,
    required StackTrace stackTrace,
    required String reason,
    bool isFatal = false,
  }) async {
    if (kDebugMode) {
      _printDev.exception('__________ERROR OCCURRED__________\n'
          'Error: $error\n'
          'Reason: $reason\n'
          'Stack Trace: $stackTrace\n'
          '!!_______________________________!!');
      return;
    }
    return _crashlyticsService.recordError(
      error: error,
      stackTrace: stackTrace,
      reason: reason,
      isFatal: isFatal,
    );
  }
}
