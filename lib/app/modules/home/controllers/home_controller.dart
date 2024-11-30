import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../models/sample_model.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;

  bool searchViewVisible = false;

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
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
