import 'package:get/get.dart';

import '../controllers/post_job_web_scren_controller.dart';


class PostJobWebScrenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostJobWebScrenController>(
      () => PostJobWebScrenController(),
    );
  }
}
