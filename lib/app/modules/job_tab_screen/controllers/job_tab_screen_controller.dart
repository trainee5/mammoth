import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JobTabScreenController extends GetxController {
  //TODO: Implement JobTabScreenController

  final count = 0.obs;
  bool searchViewVisible = true;

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
