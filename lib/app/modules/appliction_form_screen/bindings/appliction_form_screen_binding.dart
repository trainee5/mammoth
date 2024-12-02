import 'package:get/get.dart';

import '../controllers/appliction_form_screen_controller.dart';

class ApplicationFormScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApplicationFormScreenController>(
      () => ApplicationFormScreenController(),
    );
  }
}
