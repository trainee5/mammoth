import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mammoth/app/color/ApkColors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ApkColors.backgroundColor,
        body: Obx(() {
      controller.count.value;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: 100.px,
            //color: ApkColors.backgroundColor,
            width: double.infinity,
            child: Image.asset("assets/images/splash_logo.png"),
          )
        ],
      );
    }));
  }
}
