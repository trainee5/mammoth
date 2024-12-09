import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:mammoth/app/Utils/icon_path.dart';
import 'package:mammoth/app/color/ApkColors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../routes/app_pages.dart';
import '../controllers/setting_web_screen_controller.dart';

class SettingWebScreenView extends GetView<SettingWebScreenController> {
  const SettingWebScreenView({super.key});
  @override
  Widget build(BuildContext context) {

    Get.put(SettingWebScreenController());
    Get.lazyPut<SettingWebScreenController>(
          () => SettingWebScreenController(),
    );

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;


    return Obx((){
      controller.count.value;
      return Scaffold(
        backgroundColor: ApkColors.webBackgroundColor,
        body: SingleChildScrollView(
          child: Column(

            children: [
              SizedBox(
                height: screenWidth * 0.0495,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    height: 600.px,
                    alignment: Alignment.center,
                    width: screenWidth * 0.517,
                    //margin: EdgeInsets.symmetric(vertical: 0.007,horizontal: screenWidth * 0.082),
                    decoration: BoxDecoration(
                      color: ApkColors.backgroundColor,
                      borderRadius:
                      BorderRadius.circular(screenWidth * 0.007),
                      border: Border.all(
                          width: 1.px, color: ApkColors.orangeColor),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 43.px,),
                        ListTile(
                          onTap: (){
                            Get.toNamed(Routes.PRIVACY_POLLICY_WEB_SCREEN);
                          },
                          leading: CircleAvatar(
                            backgroundColor: ApkColors.textEditColor,
                            radius: 40.px,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: SvgPicture.asset(IconPath.lockSignSvg,
                                  height: 24.px,
                                  width: 24.px,
                                ),
                            ),
                            //CircleAvatar
                          ),
                          title: Text(
                            "Privacy Policy",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.primaryColor,
                                fontSize: 24.px),
                          ),
                          trailing: SvgPicture.asset(IconPath.settingArrowLeft,
                          height: 40.px,
                          width: 40.px,
                          ),
                        ),
                        SizedBox(height: 30.px,),
                        ListTile(
                          onTap: (){

                            Get.toNamed(Routes.TERM_CONDITION_WEB_SCREEN);
                          },
                          leading: CircleAvatar(
                            backgroundColor: ApkColors.textEditColor,
                            radius: 40.px,
                            child: SvgPicture.asset(IconPath.termSvg,
                              height: 20.px,
                              width: 20.px,
                            ),
                            //CircleAvatar
                          ),
                          title: Text(
                            "Term & Conditions",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.primaryColor,
                                fontSize: 24.px),
                          ),
                          trailing: SvgPicture.asset(IconPath.settingArrowLeft,
                            height: 40.px,
                            width: 40.px,
                          ),
                        ),
                        SizedBox(height: 30.px,),
                        ListTile(
                          onTap: (){
                            Get.toNamed(Routes.FAQ_WEB_SCREEN);
                          },
                          leading: CircleAvatar(
                            backgroundColor: ApkColors.textEditColor,
                            radius: 40.px,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: SvgPicture.asset(IconPath.faqSvg,
                                  height: 24.px,
                                  width: 24.px,
                                ),
                            ),
                            //CircleAvatar
                          ),
                          title: Text(
                            "FAQ",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.primaryColor,
                                fontSize: 24.px),
                          ),
                          trailing: SvgPicture.asset(IconPath.settingArrowLeft,
                            height: 40.px,
                            width: 40.px,
                          ),
                        ),
                        SizedBox(height: 30.px,),
                        ListTile(
                          onTap: (){
                            Get.toNamed(Routes.POST_JOB_WEB_SCREN);
                          },
                          leading: CircleAvatar(
                            backgroundColor: ApkColors.textEditColor,
                            radius: 40.px,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: SvgPicture.asset(IconPath.postJobSvg,
                                  height: 24.px,
                                  width: 24.px,
                                ),
                            ),
                            //CircleAvatar
                          ),
                          title: Text(
                            "Post Job",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.primaryColor,
                                fontSize: 24.px),
                          ),
                          trailing: SvgPicture.asset(IconPath.settingArrowLeft,
                            height: 40.px,
                            width: 40.px,
                          ),
                        ),
                        Spacer()

                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      );
    });


  }
}
