import 'package:get/get.dart';

import '../controllers/all_job_preference_controller.dart';

class AllJobPreferenceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllJobPreferenceController>(
      () => AllJobPreferenceController(),
    );
  }
}
