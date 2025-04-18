import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../theme/app_theme.dart';
import '../../navigation/app_router.dart';

class SplashController extends GetxController {
  var isLoading = true.obs;
  var isVisible = true.obs;

  @override
  void onInit() {
    super.onInit();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    isLoading.value = false;
    await Future.delayed(const Duration(milliseconds: 500));
    Get.offAllNamed(AppRouter.loginScreen);
  }
}

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  
  final controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: Obx(
        () => Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              // تأثير انتقالي للشعار
              AnimatedOpacity(
                opacity: 1.0,
                duration: Duration(milliseconds: 800),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Hero(
                      tag: 'app_logo',
                      child: Image.asset(
                        'assets/images/logo.png',
                        width: MediaQuery.of(context).size.width * 0.6,
                        errorBuilder: (context, error, stackTrace) => Icon(
                          Icons.account_balance_wallet,
                          size: 80,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    Text(
                      'Teofin',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              
              // شريط التقدم مع تأثير نبض
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.2,
                left: MediaQuery.of(context).size.width * 0.15,
                right: MediaQuery.of(context).size.width * 0.15,
                child: Visibility(
                  visible: controller.isVisible.value,
                  child: Column(
                    children: [
                      AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          backgroundColor: Colors.white.withOpacity(0.3),
                          minHeight: 6,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'جاري التحميل...',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
