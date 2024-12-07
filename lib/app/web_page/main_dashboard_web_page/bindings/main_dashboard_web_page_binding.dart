import 'package:get/get.dart';

import '../controllers/main_dashboard_web_page_controller.dart';

class MainDashboardWebPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainDashboardWebPageController>(
      () => MainDashboardWebPageController(),
    );
  }
}
