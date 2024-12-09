import 'package:get/get.dart';

class FaqWebScreenController extends GetxController {
  //TODO: Implement FaqWebScreenController

  final count = 0.obs;


  bool onClickOnEdit = false;

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
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
