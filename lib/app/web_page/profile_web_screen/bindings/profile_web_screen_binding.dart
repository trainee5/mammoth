import 'package:get/get.dart';

import '../controllers/profile_web_screen_controller.dart';

class ProfileWebScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileWebScreenController>(
      () => ProfileWebScreenController(),
    );
  }
}
