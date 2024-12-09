import 'package:get/get.dart';

import '../controllers/faq_web_screen_controller.dart';

class FaqWebScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FaqWebScreenController>(
      () => FaqWebScreenController(),
    );
  }
}
