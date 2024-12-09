import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:mammoth/app/CommonFile/CommonWidget.dart';
import 'package:mammoth/app/color/ApkColors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../Utils/icon_path.dart';
import '../../../routes/app_pages.dart';
import '../controllers/profile_web_screen_controller.dart';

class ProfileWebScreenView extends GetView<ProfileWebScreenController> {
  const ProfileWebScreenView({super.key});
  @override
  Widget build(BuildContext context) {

    Get.put(ProfileWebScreenController());
    Get.lazyPut<ProfileWebScreenController>(
          () => ProfileWebScreenController(),
    );

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Obx((){
      controller.count.value;
      return Scaffold(
        backgroundColor: ApkColors.backgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
          children: [


            Padding(
              padding: EdgeInsets.symmetric(horizontal: 316.px),
              child: Container(
                height: 600.px,
                width:808.px,
                
                decoration: BoxDecoration(
                  color: ApkColors.orange20Color,
                  borderRadius: BorderRadius.circular(screenWidth * 0.012)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 58.px),
                    Row(
                      children: [
                        SizedBox(width: 104.px),
                        Container(
                          height:  screenWidth * 0.050.px,
                          width:  screenWidth * 0.050.px,
                          padding: EdgeInsets.all(screenWidth * 0.001),
                          decoration: BoxDecoration(
                              color: ApkColors.orangeColor,
                              shape: BoxShape.circle
                          ),
                          child: GestureDetector(
                            onTap: (){
                              // Get.toNamed(Routes.PROFILE_SCREEN);
                              // controller.increment();
                              // controller.selectedPage = 4;
                            },
                            child: Stack(
                              alignment: Alignment.center,
                              children: [

                                Container(
                                    padding: EdgeInsets.all(2.px),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50.px),
                                        color: ApkColors.backgroundColor
                                    ),

                                    child: Image.asset(
                                      IconPath.googleImg,
                                      height: 98.px,
                                      width: 98.px,
                                    )),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child:Container(
                                    height: 26.px,
                                    width: 26.px,
                                    decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(13.px),
                                      color: ApkColors.primaryColor,

                                    ),
                                    padding: EdgeInsets.all(4.px),

                                    child: SvgPicture.asset(
                                      IconPath.cameraAdd,
                                      color: ApkColors.backgroundColor,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.006,
                        ),
                        SizedBox(
                          height:  screenWidth * 0.060,

                          //color: Colors.cyan,
                          child: GestureDetector(
                            onTap: (){
                              Get.toNamed(Routes.PROFILE_SCREEN);
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Upload Profile Picture",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      color: ApkColors.primaryColor,
                                      fontSize: 22.px),
                                ),
                                Text(
                                  "PNG,JPEG max. size of 4mb",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      color: ApkColors.blackShadow60p,
                                      fontSize: screenWidth * 0.016),
                                )
                              ],
                            ),
                          ),

                          // child:
                        ),
                      ],
                    ),
                    SizedBox(height: 52.px),
                    Row(
                      children: [
                        SizedBox(width: 104.px),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Full Name",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: ApkColors.primaryColor,
                                  fontSize: 20.px),
                            ),
                            SizedBox(height: 12.px),
                            Container(
                              height: 72.px,
                              width: 276.px,
                              decoration: BoxDecoration(
                                  color: ApkColors.backgroundColor,
                                  borderRadius: BorderRadius.circular(screenWidth * 0.012)
                              ),
                              child: CommonWidget.commonTextField(
                                hintText: "Claudia Fie",
                                autofocus: false,
                                filled: true,
                                //maxLines: 3,
                               // contentPadding: EdgeInsets.symmetric(vertical: 30.px),
                                fillColor: ApkColors.backgroundColor,
                                enableBorder:  OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                        ApkColors.backgroundColor),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular( screenWidth * 0.012))),
                                keyboardType: TextInputType.emailAddress,

                              ),

                            )

                          ],
                        ),
                        SizedBox(width: 48.px),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mobile No.",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: ApkColors.primaryColor,
                                  fontSize: 20.px),
                            ),
                            SizedBox(height: 12.px),
                            Container(
                              height: 72.px,
                              width: 276.px,
                              decoration: BoxDecoration(
                                  color: ApkColors.backgroundColor,
                                  borderRadius: BorderRadius.circular(screenWidth * 0.012)
                              ),
                              child: CommonWidget.commonTextField(
                                hintText: "7356822636",
                                autofocus: false,
                                filled: true,
                                // contentPadding: EdgeInsets.symmetric(vertical: 30.px),
                                fillColor: ApkColors.backgroundColor,
                                enableBorder:  OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                        ApkColors.backgroundColor),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular( screenWidth * 0.012))),
                                keyboardType: TextInputType.emailAddress,

                              ),

                            )

                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 48.px),
                    Row(
                      children: [
                        SizedBox(width: 104.px),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "E-mail",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: ApkColors.primaryColor,
                                  fontSize: 20.px),
                            ),
                            SizedBox(height: 12.px),
                            Container(
                              height: 72.px,
                              width: 276.px,
                              decoration: BoxDecoration(
                                  color: ApkColors.backgroundColor,
                                  borderRadius: BorderRadius.circular(screenWidth * 0.012)
                              ),
                              child: CommonWidget.commonTextField(
                                hintText: "smith1@gmail.com",
                                autofocus: false,
                                filled: true,

                                maxLines: 3,
                                // contentPadding: EdgeInsets.symmetric(vertical: 30.px),
                                fillColor: ApkColors.backgroundColor,
                                enableBorder:  OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                        ApkColors.backgroundColor),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular( screenWidth * 0.012))),
                                keyboardType: TextInputType.emailAddress,

                              ),

                            )

                          ],
                        ),
                        SizedBox(width: 48.px),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Date of Birth",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: ApkColors.primaryColor,
                                  fontSize: 20.px),
                            ),
                            SizedBox(height: 12.px),
                            Container(
                              height: 72.px,
                              width: 276.px,
                              decoration: BoxDecoration(
                                  color: ApkColors.backgroundColor,
                                  borderRadius: BorderRadius.circular(screenWidth * 0.012)
                              ),
                              child: CommonWidget.commonTextField(
                                hintText: "28/11/1995",
                                autofocus: false,
                                filled: true,
                                //maxLines: 3,
                                // contentPadding: EdgeInsets.symmetric(vertical: 30.px),
                                fillColor: ApkColors.backgroundColor,
                                enableBorder:  OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                        ApkColors.backgroundColor),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular( screenWidth * 0.012))),
                                keyboardType: TextInputType.emailAddress,

                              ),

                            )

                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 48.px),
                    Row(
                      children: [
                        SizedBox(width: 104.px),
                        Container(
                          height: 40.px,
                          width: 140.px,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: ApkColors.orangeColor,
                              borderRadius: BorderRadius.circular(screenWidth * 0.030)
                          ),
                          child:  Text(
                            "Edit",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.backgroundColor,
                                fontSize: 20.px),
                          ),

                        ),
                        SizedBox(width: 48.px),
                        Container(
                          height: 40.px,
                          width: 140.px,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: ApkColors.orange20Color,
                              borderRadius: BorderRadius.circular(screenWidth * 0.012),
                            border: Border.all(
                              width: 1.px,
                              color: ApkColors.orangeColor
                            )
                          ),
                          child:  Text(
                            "Log Out",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.orangeColor,
                                fontSize: 20.px),
                          ),

                        )

                      ],
                    ),

                    
                  ],
                ),
              ),
            )

          ],
        ),
      );
    });


  }
}
