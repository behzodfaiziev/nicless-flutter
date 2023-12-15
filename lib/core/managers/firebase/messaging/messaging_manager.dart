import 'package:firebase_messaging/firebase_messaging.dart';

import 'service/i_messaging_service.dart';

class MessagingManager {
  MessagingManager(this._messagingService);

  final IMessagingService _messagingService;

  Future<NotificationSettings> requestPermission() =>
      _messagingService.requestPermission();

  Future<String?> getToken() => _messagingService.getToken();

  Future<void> deleteToken() => _messagingService.deleteToken();

  Stream<String> onTokenRefresh() => _messagingService.onTokenRefresh();

  Stream<RemoteMessage> onMessage() => _messagingService.onMessage();

  Stream<RemoteMessage> onMessageOpenedApp() =>
      _messagingService.onMessageOpenedApp();

  Future<RemoteMessage?> getInitialMessage() =>
      _messagingService.getInitialMessage();

  Future<void> setForegroundNotificationPresentationOptionsApple({
    bool alert = false,
    bool badge = false,
    bool sound = false,
  }) =>
      _messagingService.setForegroundNotificationPresentationOptionsApple(
        alert: alert,
        badge: badge,
        sound: sound,
      );
}
