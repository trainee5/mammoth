import 'package:get/get.dart';

import '../controllers/all_job_category_controller.dart';

class AllJobCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllJobCategoryController>(
      () => AllJobCategoryController(),
    );
  }
}
