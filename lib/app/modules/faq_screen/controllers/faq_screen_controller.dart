import 'package:get/get.dart';

class FaqScreenController extends GetxController {
  //TODO: Implement FaqScreenController

  final count = 0.obs;

  bool onClick = false;

  List<bool> clickOnItems = List.filled(6,false);


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
