import 'package:get/get.dart';

import '../controllers/dashboard_web_screen_controller.dart';

class DashboardWebScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardWebScreenController>(
      () => DashboardWebScreenController(),
    );
  }
}
