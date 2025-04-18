import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';
import '../models/bank_card_model.dart';
import '../models/transaction_model.dart';

class AuthService {
  // تسجيل الدخول
  Future<Map<String, dynamic>> login(String email, String password) async {
    // في التطبيق الحقيقي، سيتم استدعاء API لتسجيل الدخول
    // لكن في هذا المثال، نفترض أن تسجيل الدخول نجح دائمًا

    await Future.delayed(const Duration(seconds: 2)); // محاكاة تأخير الشبكة

    if (email == 'admin@example.com' && password == 'password') {
      return {
        'success': true,
        'token': 'dummy_token_${DateTime.now().millisecondsSinceEpoch}',
        'user': {
          'id': 'user123',
          'name': 'أحمد محمد',
          'email': email,
          'phone': '+966 50 123 4567',
          'address': 'الرياض، المملكة العربية السعودية',
          'balance': 5000.0,
        },
      };
    } else {
      return {
        'success': false,
        'message': 'البريد الإلكتروني أو كلمة المرور غير صحيحة',
      };
    }
  }

  // تسجيل مستخدم جديد
  Future<Map<String, dynamic>> register(Map<String, dynamic> userData) async {
    // في التطبيق الحقيقي، سيتم استدعاء API لتسجيل مستخدم جديد
    // لكن في هذا المثال، نفترض أن التسجيل نجح دائمًا

    await Future.delayed(const Duration(seconds: 2)); // محاكاة تأخير الشبكة

    return {
      'success': true,
      'token': 'dummy_token_${DateTime.now().millisecondsSinceEpoch}',
      'user': {
        'id': 'user${DateTime.now().millisecondsSinceEpoch}',
        ...userData,
        'balance': 0.0,
      },
    };
  }

  // تسجيل الخروج
  Future<bool> logout() async {
    // في التطبيق الحقيقي، سيتم استدعاء API لتسجيل الخروج
    // لكن في هذا المثال، نفترض أن تسجيل الخروج نجح دائمًا

    await Future.delayed(const Duration(milliseconds: 500)); // محاكاة تأخير الشبكة

    return true;
  }

  // إعادة تعيين كلمة المرور
  Future<bool> resetPassword(String email) async {
    // في التطبيق الحقيقي، سيتم استدعاء API لإعادة تعيين كلمة المرور
    // لكن في هذا المثال، نفترض أن العملية نجحت دائمًا

    await Future.delayed(const Duration(seconds: 1)); // محاكاة تأخير الشبكة

    return true;
  }

  // التحقق من صحة رمز إعادة تعيين كلمة المرور
  Future<bool> verifyResetCode(String email, String code) async {
    // في التطبيق الحقيقي، سيتم استدعاء API للتحقق من صحة الرمز
    // لكن في هذا المثال، نفترض أن العملية نجحت دائمًا

    await Future.delayed(const Duration(milliseconds: 500)); // محاكاة تأخير الشبكة

    return true;
  }

  // تغيير كلمة المرور
  Future<bool> changePassword(String userId, String oldPassword, String newPassword) async {
    // في التطبيق الحقيقي، سيتم استدعاء API لتغيير كلمة المرور
    // لكن في هذا المثال، نفترض أن العملية نجحت دائمًا

    await Future.delayed(const Duration(seconds: 1)); // محاكاة تأخير الشبكة

    return true;
  }

  // الحصول على بيانات المستخدم
  Future<UserModel> getUserData(String userId) async {
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
      cards: [
        {
          'id': 'card001',
          'cardNumber': '4111 1111 1111 1111',
          'cardHolderName': 'أحمد محمد',
          'expiryDate': '12/25',
          'cvv': '123',
          'cardType': 'visa',
          'isActive': true,
          'balance': 3000.0,
        },
        {
          'id': 'card002',
          'cardNumber': '5555 5555 5555 4444',
          'cardHolderName': 'أحمد محمد',
          'expiryDate': '10/26',
          'cvv': '456',
          'cardType': 'mastercard',
          'isActive': true,
          'balance': 2000.0,
        },
      ],
      transactions: [
        {
          'id': 'tx001',
          'amount': 1000.0,
          'type': 'deposit',
          'date': '2025-04-17 10:30',
          'description': 'إيداع نقدي',
          'status': 'completed',
        },
        {
          'id': 'tx002',
          'amount': 500.0,
          'type': 'transfer',
          'date': '2025-04-16 15:45',
          'description': 'تحويل إلى محمد علي',
          'status': 'completed',
        },
        {
          'id': 'tx003',
          'amount': 200.0,
          'type': 'withdrawal',
          'date': '2025-04-15 09:20',
          'description': 'سحب من الصراف الآلي',
          'status': 'completed',
        },
      ],
    );
  }
}
