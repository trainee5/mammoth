import 'package:get/get.dart';

import '../controllers/subscription_web_screen_controller.dart';

class SubscriptionWebScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SubscriptionWebScreenController>(
      () => SubscriptionWebScreenController(),
    );
  }
}
