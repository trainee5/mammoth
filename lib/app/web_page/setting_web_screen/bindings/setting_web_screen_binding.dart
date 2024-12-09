import 'package:get/get.dart';

import '../controllers/setting_web_screen_controller.dart';


class SettingWebScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingWebScreenController>(
      () => SettingWebScreenController(),
    );
  }
}
