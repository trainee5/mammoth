import 'package:get/get.dart';

import '../controllers/application_sent_screen_controller.dart';

class ApplicationSentScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApplicationSentScreenController>(
      () => ApplicationSentScreenController(),
    );
  }
}
