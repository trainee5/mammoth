import 'package:get/get.dart';

import '../controllers/term_condition_web_screen_controller.dart';

class TermConditionWebScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TermConditionWebScreenController>(
      () => TermConditionWebScreenController(),
    );
  }
}
