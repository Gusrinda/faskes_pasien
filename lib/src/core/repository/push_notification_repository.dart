import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

class PushNotificationRepository {
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  NotificationSettings? _settings;

  Future<void> requestPermission() async {
    _settings = await _messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    debugPrint('User granted permission: ${_settings!.authorizationStatus}');
  }

  Future<String?> getToken() => _messaging.getToken();
  Stream<String> onTokenRefresh() => _messaging.onTokenRefresh;

  Future<void> subscribeTopic(String topic) =>
      _messaging.subscribeToTopic(topic);

  Future<void> unSubscribeTopic(String topic) =>
      _messaging.unsubscribeFromTopic(topic);

  static void backgroundMessage(BackgroundMessageHandler handler) =>
      FirebaseMessaging.onBackgroundMessage(handler);

  Future<RemoteMessage?> get initialMessage => _messaging.getInitialMessage();

  Stream<RemoteMessage> get foregroundMessage => FirebaseMessaging.onMessage;

  Stream<RemoteMessage> get messageOpened =>
      FirebaseMessaging.onMessageOpenedApp;
}
