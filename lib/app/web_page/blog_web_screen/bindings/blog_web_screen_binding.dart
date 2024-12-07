import 'package:get/get.dart';

import '../controllers/blog_web_screen_controller.dart';

class BlogWebScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BlogWebScreenController>(
      () => BlogWebScreenController(),
    );
  }
}
