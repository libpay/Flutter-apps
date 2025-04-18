import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';

class ProfileService {
  // الحصول على بيانات الملف الشخصي للمستخدم
  Future<UserModel> getUserProfile(String userId) async {
    // في التطبيق الحقيقي، سيتم استدعاء API للحصول على بيانات المستخدم
    // لكن في هذا المثال، نقوم بإنشاء بيانات وهمية

    await Future.delayed(const Duration(seconds: 1)); // محاكاة تأخير الشبكة

    return UserModel(
      id: userId,
      name: 'أحمد محمد',
      email: 'ahmed@example.com',
      phone: '+966 50 123 4567',
      address: 'الرياض، المملكة العربية السعودية',
      balance: 5000.0,
      cards: [],
      transactions: [],
    );
  }

  // تحديث بيانات الملف الشخصي
  Future<bool> updateUserProfile(UserModel user) async {
    // في التطبيق الحقيقي، سيتم استدعاء API لتحديث بيانات المستخدم
    // لكن في هذا المثال، نفترض أن العملية نجحت دائمًا

    await Future.delayed(const Duration(seconds: 1)); // محاكاة تأخير الشبكة

    return true;
  }

  // تغيير كلمة المرور
  Future<bool> changePassword(String userId, String oldPassword, String newPassword) async {
    // في التطبيق الحقيقي، سيتم استدعاء API لتغيير كلمة المرور
    // لكن في هذا المثال، نفترض أن العملية نجحت دائمًا

    await Future.delayed(const Duration(seconds: 1)); // محاكاة تأخير الشبكة

    return true;
  }

  // تحميل صورة الملف الشخصي
  Future<String> uploadProfileImage(String userId, String imagePath) async {
    // في التطبيق الحقيقي، سيتم استدعاء API لتحميل الصورة
    // لكن في هذا المثال، نفترض أن العملية نجحت دائمًا ونعيد رابط وهمي للصورة

    await Future.delayed(const Duration(seconds: 2)); // محاكاة تأخير الشبكة

    return 'https://example.com/profile_images/$userId.jpg';
  }

  // الحصول على إعدادات الإشعارات
  Future<Map<String, bool>> getNotificationSettings(String userId) async {
    // في التطبيق الحقيقي، سيتم استدعاء API للحصول على إعدادات الإشعارات
    // لكن في هذا المثال، نقوم بإنشاء بيانات وهمية

    await Future.delayed(const Duration(milliseconds: 500)); // محاكاة تأخير الشبكة

    return {
      'email': true,
      'sms': false,
      'push': true,
    };
  }

  // تحديث إعدادات الإشعارات
  Future<bool> updateNotificationSettings(String userId, Map<String, bool> settings) async {
    // في التطبيق الحقيقي، سيتم استدعاء API لتحديث إعدادات الإشعارات
    // لكن في هذا المثال، نفترض أن العملية نجحت دائمًا

    await Future.delayed(const Duration(milliseconds: 500)); // محاكاة تأخير الشبكة

    return true;
  }
}
