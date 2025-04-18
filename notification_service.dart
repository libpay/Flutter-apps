import 'package:flutter/material.dart';

class NotificationModel {
  final String id;
  final String title;
  final String message;
  final String date;
  final bool isRead;
  final String type;

  NotificationModel({
    required this.id,
    required this.title,
    required this.message,
    required this.date,
    required this.isRead,
    required this.type,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      id: json['id'],
      title: json['title'],
      message: json['message'],
      date: json['date'],
      isRead: json['isRead'],
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'message': message,
      'date': date,
      'isRead': isRead,
      'type': type,
    };
  }
}

class NotificationService {
  // الحصول على قائمة الإشعارات
  Future<List<NotificationModel>> getNotifications() async {
    // في التطبيق الحقيقي، سيتم استدعاء API للحصول على الإشعارات
    // لكن في هذا المثال، نقوم بإنشاء بيانات وهمية

    await Future.delayed(const Duration(seconds: 1)); // محاكاة تأخير الشبكة

    return [
      NotificationModel(
        id: '1',
        title: 'تم إيداع مبلغ',
        message: 'تم إيداع مبلغ 1000₪ في حسابك',
        date: '2025-04-17 10:30',
        isRead: false,
        type: 'transaction',
      ),
      NotificationModel(
        id: '2',
        title: 'تحويل ناجح',
        message: 'تم تحويل مبلغ 500₪ إلى محمد علي',
        date: '2025-04-16 15:45',
        isRead: true,
        type: 'transaction',
      ),
      NotificationModel(
        id: '3',
        title: 'تحديث الأمان',
        message: 'تم تحديث إعدادات الأمان لحسابك',
        date: '2025-04-15 09:20',
        isRead: true,
        type: 'security',
      ),
      NotificationModel(
        id: '4',
        title: 'عرض خاص',
        message: 'استمتع بخصم 10% على التحويلات الدولية',
        date: '2025-04-14 12:00',
        isRead: false,
        type: 'promotion',
      ),
    ];
  }

  // تحديث حالة الإشعار (مقروء/غير مقروء)
  Future<bool> markAsRead(String notificationId) async {
    // في التطبيق الحقيقي، سيتم استدعاء API لتحديث حالة الإشعار
    // لكن في هذا المثال، نفترض أن العملية نجحت دائمًا

    await Future.delayed(const Duration(milliseconds: 500)); // محاكاة تأخير الشبكة

    return true;
  }

  // حذف إشعار
  Future<bool> deleteNotification(String notificationId) async {
    // في التطبيق الحقيقي، سيتم استدعاء API لحذف الإشعار
    // لكن في هذا المثال، نفترض أن العملية نجحت دائمًا

    await Future.delayed(const Duration(milliseconds: 500)); // محاكاة تأخير الشبكة

    return true;
  }

  // الحصول على عدد الإشعارات غير المقروءة
  Future<int> getUnreadCount() async {
    // في التطبيق الحقيقي، سيتم استدعاء API للحصول على عدد الإشعارات غير المقروءة
    // لكن في هذا المثال، نقوم بإنشاء بيانات وهمية

    await Future.delayed(const Duration(milliseconds: 300)); // محاكاة تأخير الشبكة

    return 2; // عدد الإشعارات غير المقروءة
  }
}
