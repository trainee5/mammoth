import 'package:get/get.dart';

class MainDashboardWebPageController extends GetxController {
  //TODO: Implement MainDashboardWebPageController

  final count = 0.obs;

  int selectedPage = 0;



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
