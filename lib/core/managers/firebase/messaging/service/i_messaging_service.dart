import 'package:firebase_messaging/firebase_messaging.dart';

abstract class IMessagingService {
  Future<NotificationSettings> requestPermission();

  Future<String?> getToken();

  Future<void> deleteToken();

  Stream<String> onTokenRefresh();

  Stream<RemoteMessage> onMessage();

  Stream<RemoteMessage> onMessageOpenedApp();

  Future<RemoteMessage?> getInitialMessage();

  Future<void> setForegroundNotificationPresentationOptionsApple({
    bool alert = false,
    bool badge = false,
    bool sound = false,
  });
}
