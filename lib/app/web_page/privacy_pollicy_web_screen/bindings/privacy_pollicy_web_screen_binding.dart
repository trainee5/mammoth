import 'package:get/get.dart';

import '../controllers/privacy_pollicy_web_screen_controller.dart';

class PrivacyPollicyWebScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PrivacyPollicyWebScreenController>(
      () => PrivacyPollicyWebScreenController(),
    );
  }
}
