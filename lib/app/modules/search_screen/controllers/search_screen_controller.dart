import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../models/sample_model.dart';

class SearchScreenController extends GetxController {
  //TODO: Implement SearchScreenController

  final count = 0.obs;
  bool searchViewVisible = true;

  var scaffoldKey = GlobalKey<ScaffoldState>();

  SampleModel? sampleModel;


  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  void closeDrawer() {
    scaffoldKey.currentState?.openEndDrawer();
  }

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
