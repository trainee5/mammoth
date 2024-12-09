import 'package:get/get.dart';

class BlogWebScreenController extends GetxController {
  //TODO: Implement BlogWebScreenController

  final count = 0.obs;


  bool onClickPost = true;


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
