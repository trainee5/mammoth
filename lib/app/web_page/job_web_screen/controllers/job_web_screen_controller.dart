import 'package:get/get.dart';

import '../views/job_web_screen_view.dart';

class JobWebScreenController extends GetxController {
  //TODO: Implement JobWebScreenController

  final count = 0.obs;
  bool onClickCategory = false;


  bool onClickPostJob = false;
  bool onClickNextStep1 = true;
  bool onClickNextStep2 = false;
  bool onClickNextStep3 = false;






  @override
  void onInit() {
    clickOnItems[0] = true;
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


class Exercise {
  final String name;
  final int calories;
  final int minutes;
  bool isCompleted;

  Exercise({
    required this.name,
    required this.calories,
    required this.minutes,
    this.isCompleted = false,
  });}
