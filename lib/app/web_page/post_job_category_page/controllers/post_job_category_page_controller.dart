import 'package:get/get.dart';

class PostJobCategoryPageController extends GetxController {
  //TODO: Implement PostJobCategoryPageController

  final count = 0.obs;


  bool onClickCategory = true;


  bool onClickPostJob = true;
  bool onClickNextStep1 = true;
  bool onClickNextStep2 = false;
  bool onClickNextStep3 = false;
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
