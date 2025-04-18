import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/splash/splash_screen.dart';
import '../screens/auth/login_screen.dart';

class AppRouter {
  // تعريف مسارات التطبيق
  static const String splashScreen = '/';
  static const String loginScreen = '/login';
  static const String registerScreen = '/register';
  static const String forgotPasswordScreen = '/forgot-password';
  static const String otpVerificationScreen = '/otp-verification';
  static const String resetPasswordScreen = '/reset-password';
  static const String dashboardScreen = '/dashboard';
  static const String profileScreen = '/profile';
  static const String settingsScreen = '/settings';
  static const String cardsScreen = '/cards';
  static const String transactionsScreen = '/transactions';
  static const String notificationsScreen = '/notifications';

  // قائمة الصفحات مع مساراتها
  static List<GetPage> routes = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),
    // سيتم إضافة باقي الصفحات لاحقاً
  ];

  // دالة للتنقل إلى الصفحة الرئيسية
  static void goToDashboard() {
    Get.offAllNamed(dashboardScreen);
  }

  // دالة للتنقل إلى صفحة تسجيل الدخول
  static void goToLogin() {
    Get.offAllNamed(loginScreen);
  }

  // دالة للعودة إلى الصفحة السابقة
  static void goBack() {
    Get.back();
  }
}
