import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';

import 'i_messaging_service.dart';

class MessagingService extends IMessagingService {

  MessagingService._init();
  static MessagingService? _instance;

  static MessagingService get instance {
    return _instance ??= MessagingService._init();
  }

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  @override
  Future<NotificationSettings> requestPermission() {
    return _firebaseMessaging.requestPermission();
  }

  @override
  Future<String?> getToken() {
    return _firebaseMessaging.getToken();
  }

  @override
  Future<void> deleteToken() async {
    await _firebaseMessaging.deleteToken();
  }

  @override
  Stream<String> onTokenRefresh() {
    return _firebaseMessaging.onTokenRefresh;
  }

  @override
  Stream<RemoteMessage> onMessage() {
    return FirebaseMessaging.onMessage;
  }

  @override
  Stream<RemoteMessage> onMessageOpenedApp() {
    return FirebaseMessaging.onMessageOpenedApp;
  }

  @override
  Future<RemoteMessage?> getInitialMessage() {
    return _firebaseMessaging.getInitialMessage();
  }

  @override
  Future<void> setForegroundNotificationPresentationOptionsApple({
    bool alert = false,
    bool badge = false,
    bool sound = false,
  }) async {
    await _firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: alert,
      badge: badge,
      sound: sound,
    );
  }

  Future<void> subscribeToTopic(String topic) {
    return _firebaseMessaging.subscribeToTopic(topic);
  }

  Future<void> unsubscribeFromTopic(String topic) {
    return _firebaseMessaging.unsubscribeFromTopic(topic);
  }
}
