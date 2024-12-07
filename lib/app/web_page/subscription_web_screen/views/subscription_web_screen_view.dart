import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../color/ApkColors.dart';
import '../controllers/subscription_web_screen_controller.dart';

class SubscriptionWebScreenView
    extends GetView<SubscriptionWebScreenController> {
  const SubscriptionWebScreenView({super.key});



  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    Get.put(SubscriptionWebScreenController());
    Get.lazyPut<SubscriptionWebScreenController>(
          () => SubscriptionWebScreenController(),
    );
    return Obx((){
      controller.count.value;
      return Scaffold(
        backgroundColor: ApkColors.backgroundColor,
        body: Center(
          child: Text(
            'SubscriptionWebScreenView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      );
    }) ;


  }
}
