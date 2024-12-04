import 'package:get/get.dart';

import '../controllers/application_status_screen_controller.dart';

class ApplicationStatusScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApplicationStatusScreenController>(
      () => ApplicationStatusScreenController(),
    );
  }
}
