import 'package:get/get.dart';

import '../controllers/blog_view_page_web_screen_controller.dart';


class BlogViewPageWebScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BlogViewPageWebScreenController>(
      () => BlogViewPageWebScreenController(),
    );
  }
}
