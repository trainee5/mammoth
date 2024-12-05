import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;

  @override
  void onInit() {
    splashDuration();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  splashDuration() {
    Future.delayed(Duration(seconds: 2), () async {
     // SharedPreferences _prefs = await SharedPreferences.getInstance();
      bool? isLogin = false;
      print("isLogin {$isLogin}");
      if (isLogin) {
      Get.offNamed(Routes.HOME);
    } else {
      Get.offNamed(Routes.DASHBOARD_WEB_SCREEN);
    }
    });
  }
}
