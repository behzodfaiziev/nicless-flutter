abstract class ICrashlyticsService {
  bool get isCrashlyticsCollectionEnabled;

  Future<void> setCrashlyticsCollectionEnabled({required bool enabled});

  Future<void> recordError({
    required dynamic error,
    required StackTrace stackTrace,
    required String reason,
    required bool isFatal,
  });
}
