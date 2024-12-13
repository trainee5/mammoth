import 'package:get/get.dart';

import '../controllers/blog_reading_screen_controller.dart';

class BlogReadingScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BlogReadingScreenController>(
      () => BlogReadingScreenController(),
    );
  }
}
