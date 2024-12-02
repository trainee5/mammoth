import 'package:get/get.dart';

import '../controllers/job_tab_screen_controller.dart';

class JobTabScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JobTabScreenController>(
      () => JobTabScreenController(),
    );
  }
}
