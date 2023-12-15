import 'package:firebase_crashlytics/firebase_crashlytics.dart';

import 'i_crashlytics_service.dart';

class CrashlyticsService extends ICrashlyticsService {
  CrashlyticsService();

  /// Initializing the [FirebaseCrashlytics] instance
  final FirebaseCrashlytics _firebaseCrashlytics = FirebaseCrashlytics.instance;

  @override
  bool get isCrashlyticsCollectionEnabled =>
      _firebaseCrashlytics.isCrashlyticsCollectionEnabled;

  @override
  Future<void> setCrashlyticsCollectionEnabled({required bool enabled}) {
    return _firebaseCrashlytics.setCrashlyticsCollectionEnabled(enabled);
  }

  @override
  Future<void> recordError({
    required dynamic error,
    required StackTrace stackTrace,
    required String reason,
    required bool isFatal,
  }) {
    return _firebaseCrashlytics.recordError(
      error,
      stackTrace,
      reason: reason,
      fatal: isFatal,
    );
  }
}
