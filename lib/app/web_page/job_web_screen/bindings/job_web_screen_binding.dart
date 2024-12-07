import 'package:get/get.dart';

import '../controllers/job_web_screen_controller.dart';

class JobWebScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JobWebScreenController>(
      () => JobWebScreenController(),
    );
  }
}
