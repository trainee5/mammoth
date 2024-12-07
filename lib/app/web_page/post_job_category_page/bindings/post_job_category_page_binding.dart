import 'package:get/get.dart';

import '../controllers/post_job_category_page_controller.dart';

class PostJobCategoryPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostJobCategoryPageController>(
      () => PostJobCategoryPageController(),
    );
  }
}
