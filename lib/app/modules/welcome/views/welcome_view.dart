import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mammoth/app/modules/welcome/controllers/welcome_controller.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../CommonFile/CommonWidget.dart';
import '../../../color/ApkColors.dart';
import '../../../routes/app_pages.dart';



class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ApkColors.backgroundColor,
        body: Obx(() {
          controller.count.value;
          return Column(
           // crossAxisAlignment: CrossAxisAlignment.,
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: 500.px,
                //color: ApkColors.backgroundColor,
                width: 500.px,
                child: Image.asset("assets/images/elispe.png"),
              ),
              Image.asset("assets/images/stripnpng.png"),
              SizedBox(
                height: 30.px,
              ),

              Image.asset("assets/images/textpng.png"),
              SizedBox(
                height: 60.px,
              ),
              Obx(() {
                controller.count.value;
                return Container(
                  // color: ApkColors.orangeColor,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: CommonWidget.commonbutten(onPressed: () {
                    Get.offNamed(Routes.LOGIN);
                    },fillColor: ApkColors.primaryColor,
                    text: "Get Started"
                  ),
                );
              }),
            ],
          );
        }));;
  }
}
