import 'package:get/get.dart';

import '../controllers/term_condition_screen_controller.dart';

class TermConditionScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TermConditionScreenController>(
      () => TermConditionScreenController(),
    );
  }
}
