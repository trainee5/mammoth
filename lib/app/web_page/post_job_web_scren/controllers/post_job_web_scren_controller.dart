import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PostJobWebScrenController extends GetxController {
  //TODO: Implement PostJobWebScrenController

  final count = 0.obs;

  int currentIndex = 0 ;



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
