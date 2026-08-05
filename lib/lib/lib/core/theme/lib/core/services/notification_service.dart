Enterimport 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  static final FlutterLocalNotificationsPlugin _notificationsPlugin = 
      FlutterLocalNotificationsPlugin();

  static Future<void> init() async {
    const AndroidInitializationSettings initializationSettingsAndroid = 
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const InitializationSettings initializationSettings = 
        InitializationSettings(android: initializationSettingsAndroid);
    await _notificationsPlugin.initialize(initializationSettings);
  }

  static Future<void> showDailyReminder() async {
    const AndroidNotificationDetails androidDetails = AndroidNotificationDetails(
      'daily_reminders', 
      'تذكيرات يومية',
      importance: Importance.max, 
      priority: Priority.high,
    );
    await _notificationsPlugin.show(
      101, 
      'نور الصلاة والزكاة', 
      'حافظ على صلاتك وتفقّد زكاة مالك اليوم.', 
      const NotificationDetails(android: androidDetails),
    );
  }
}
