import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:mammoth/app/color/ApkColors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../CommonFile/CommonWidget.dart';
import '../../../Utils/StringConstants.dart';
import '../../../Utils/icon_path.dart';
import '../../../routes/app_pages.dart';
import '../controllers/profile_screen_controller.dart';

class ProfileScreenView extends GetView<ProfileScreenController> {
  const ProfileScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ApkColors.backgroundColor,
      appBar:PreferredSize(
        preferredSize:  Size.fromHeight(160.px),
        child: Stack(
          children: [
            Container(
              height: 136.px,
              decoration: BoxDecoration(
                  color: ApkColors.primaryColor
              ),
              child:  Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 70.px,
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 24.px),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            Get.back();
                          },
                          child: Text(
                            StringConstants.cancel,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: ApkColors.backgroundColor,
                                fontSize: 20.px),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: (){
                           // Get.back();
                          },
                          child: Text(
                            StringConstants.save,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: ApkColors.backgroundColor,
                                fontSize: 20.px),
                          ),
                        ),


                      ],
                    ),

                  ),
                  SizedBox(
                    height: 9.px,
                  ),




                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 100.px,
                width: 100.px,
                child: GestureDetector(
                  onTap: (){
                   // Get.toNamed(Routes.PROFILE_SCREEN);
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
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],

        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40.px,
            ),
            Container(
              //color: ApkColors.primaryColor,
              margin: EdgeInsets.symmetric(horizontal: 24.px),
              padding: EdgeInsets.only(bottom: 8.px),
              width: double.infinity,
              child: Text(
                "Full Name",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: ApkColors.primaryColor,
                    fontSize: 18.px),
              ),
            ),
            Obx(() {
              controller.count.value;
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 24.px),
                child: CommonWidget.commonTextField(
                  //validator: controller.Emailvalidator,
                  // labelText: StringConstants.enterHint,
                  hintText: "Ex : Roshni Pal",
                  autofocus: false,
                  filled: true,
                  fillColor: ApkColors.textEditColor,
                  prefixIcon: Image.asset(
                    IconPath.mailIcon,
                    height: 17.px,
                    width: 20.px,),
                  enableBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: ApkColors.primaryColorLite),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  keyboardType: TextInputType.emailAddress,
                  //controller: controller.EmailAddressController
                ),
              );
            }),
            SizedBox(
              height: 32.px,
            ),
            Container(
              //color: ApkColors.primaryColor,
              margin: EdgeInsets.symmetric(horizontal: 24.px),
              padding: EdgeInsets.only(bottom: 8.px),
              width: double.infinity,
              child: Text(
                StringConstants.enterEmail,
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: ApkColors.primaryColor,
                    fontSize: 18.px),
              ),
            ),
            Obx(() {
              controller.count.value;
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 24.px),
                child: CommonWidget.commonTextField(
                  //validator: controller.Emailvalidator,
                  // labelText: StringConstants.enterHint,
                  hintText: StringConstants.enterHint,
                  autofocus: false,
                  filled: true,
                  fillColor: ApkColors.textEditColor,
                  prefixIcon: Image.asset(
                    IconPath.mailIcon,
                    height: 17.px,
                    width: 20.px,),
                  enableBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: ApkColors.primaryColorLite),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  keyboardType: TextInputType.emailAddress,
                  //controller: controller.EmailAddressController
                ),
              );
            }),
            SizedBox(
              height: 32.px,
            ),
            Container(
              //color: ApkColors.primaryColor,
              margin: EdgeInsets.symmetric(horizontal: 24.px),
              padding: EdgeInsets.only(bottom: 8.px),
              width: double.infinity,
              child: Text(
                "Phone Number",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: ApkColors.primaryColor,
                    fontSize: 18.px),
              ),
            ),
            Obx(() {
              controller.count.value;
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 24.px),
                child: CommonWidget.commonTextField(
                  //validator: controller.Emailvalidator,
                  // labelText: StringConstants.enterHint,
                  hintText: StringConstants.enterHint,
                  autofocus: false,
                  filled: true,
                  fillColor: ApkColors.textEditColor,
                  prefixIcon: Image.asset(
                    IconPath.mailIcon,
                    height: 17.px,
                    width: 20.px,),
                  enableBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: ApkColors.primaryColorLite),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  keyboardType: TextInputType.emailAddress,
                  //controller: controller.EmailAddressController
                ),
              );
            }),
            SizedBox(
              height: 32.px,
            ),
            Container(
              //color: ApkColors.primaryColor,
              margin: EdgeInsets.symmetric(horizontal: 24.px),
              padding: EdgeInsets.only(bottom: 8.px),
              width: double.infinity,
              child: Text(
                "Resume",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: ApkColors.primaryColor,
                    fontSize: 18.px),
              ),
            ),
            Obx(() {
              controller.count.value;
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 24.px),
                child: CommonWidget.commonTextField(
                  //validator: controller.Emailvalidator,
                  // labelText: StringConstants.enterHint,
                  hintText: "Upload here",
                  autofocus: false,
                  filled: true,
                  fillColor: ApkColors.textEditColor,
                  prefixIcon: Image.asset(
                    IconPath.mailIcon,
                    height: 17.px,
                    width: 20.px,),
                  enableBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: ApkColors.primaryColorLite),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  keyboardType: TextInputType.emailAddress,
                  //controller: controller.EmailAddressController
                ),
              );
            }),
            SizedBox(
              height: 64.px,
            ),
            GestureDetector(
              onTap: () {

                Get.toNamed(Routes.APPLICATION_SENT_SCREEN);
              },
              child: Container(
                height: 64.px,
                margin: EdgeInsets.symmetric(horizontal: 47.px),

                alignment: Alignment.center,
                // margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 24.px),
                decoration: BoxDecoration(
                    color:
                    ApkColors.orangeColor,
                    borderRadius:
                    BorderRadius.all(
                        Radius.circular(
                            32.px))),
                child: Text(
                  "Submit",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight:
                      FontWeight.w600,
                      color: ApkColors
                          .backgroundColor,
                      fontSize: 18.px),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
