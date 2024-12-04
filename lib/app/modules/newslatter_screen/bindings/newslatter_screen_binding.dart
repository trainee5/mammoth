import 'package:get/get.dart';

import '../controllers/newslatter_screen_controller.dart';

class NewslatterScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewslatterScreenController>(
      () => NewslatterScreenController(),
    );
  }
}
