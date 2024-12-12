import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mammoth/app/modules/welcome/controllers/welcome_controller.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../Utils/StringConstants.dart';
import '../../../Utils/icon_path.dart';
import '../../../color/ApkColors.dart';
import '../../../routes/app_pages.dart';



class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({super.key});
  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    print("screenHeight : $screenHeight" );
    print("screenWidth : $screenWidth" );


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
                height:screenHeight * 0.536,
                //color: ApkColors.backgroundColor,
                width:screenWidth * 1.16,
                child: Image.asset(IconPath.welcomeGroupImg),
              ),
              Image.asset(IconPath.stripIcon),
              SizedBox(
                height: screenHeight * 0.035,
              ),
              Image.asset(IconPath.textLogoIcon),
              SizedBox(
                height: screenHeight * 0.064,
              ),
              Obx(() {
                controller.animateCount.value;
                return GestureDetector(
                  onTap: (){
                   Get.offNamed(Routes.LOGIN);
                  },
                  child: Container(
                    height: 64.px,
                    padding: EdgeInsets.all(2.px),
                    width: double.infinity,
                    alignment: Alignment.center,
                     margin: EdgeInsets.symmetric(horizontal: 20.px),
                    decoration: BoxDecoration(
                        color: ApkColors.primaryColor,
                        borderRadius:
                        BorderRadius.all(Radius.circular(30.px))),
                    child: Stack(

                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                              StringConstants.getStarted,
                            style:
                            TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.backgroundColor,
                                fontSize: 18.px)
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height:  60.px,
                              width: controller.loginButtonSizeAnimation.value,
                              padding: EdgeInsets.all(15.px),
                              alignment: Alignment.centerRight,
                              decoration: BoxDecoration(
                                  color:  ApkColors.orangeColor,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular( 30.px))),
                              child: Icon(CupertinoIcons.forward,color: ApkColors.backgroundColor
                              )),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ],
          );
        }));
  }
}
