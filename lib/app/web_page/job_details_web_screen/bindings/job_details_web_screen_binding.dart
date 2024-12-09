import 'package:get/get.dart';

import '../controllers/job_details_web_screen_controller.dart';


class JobDetailsWebScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JobDetailsWebScreenController>(
      () => JobDetailsWebScreenController(),
    );
  }
}
