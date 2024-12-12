import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:mammoth/app/color/ApkColors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../CommonFile/CommonWidget.dart';
import '../../../Utils/StringConstants.dart';
import '../../../Utils/icon_path.dart';
import '../../../routes/app_pages.dart';
import '../controllers/appliction_form_screen_controller.dart';

class ApplicationFormScreenView extends GetView<ApplicationFormScreenController> {
  const ApplicationFormScreenView({super.key});

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ApkColors.backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.146),
        child: Container(
          decoration: BoxDecoration(color: ApkColors.primaryColor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: screenHeight * 0.0752,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: screenHeight * 0.0215),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: SvgPicture.asset(
                        IconPath.arrowLeftIcon,
                        height: screenHeight * 0.035,
                        width: screenHeight * 0.035,
                      ),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    SizedBox(
                      width: screenHeight * 0.0129,
                    ),
                    Text(
                      StringConstants.applicationForm,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: ApkColors.backgroundColor,
                          fontSize: screenHeight * 0.028),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.0322,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.0387,
            ),
            Container(
              //color: ApkColors.primaryColor,
              margin: EdgeInsets.symmetric(horizontal: screenHeight * 0.0258),
              padding: EdgeInsets.only(bottom: screenHeight * 0.0086),
              width: double.infinity,
              child: Text(
                StringConstants.fullName,
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: ApkColors.primaryColor,
                    fontSize: screenHeight * 0.0194),
              ),
            ),
            Obx(() {
              controller.count.value;
              return Container(
                padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.0258),
                //height: 88.px,
                child: CommonWidget.commonTextField(
                    validator: controller.firstNameValidator,
                    hintText: StringConstants.firstNameHint,
                    autofocus: false,
                    filled: true,
                    style: TextStyle(
                      fontSize: screenHeight * 0.0172,
                      fontFamily: 'Poppins',
                      color: ApkColors.primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                    hintStyle: TextStyle(
                      fontSize: screenHeight * 0.0172,
                      fontFamily: 'Poppins',
                      color: ApkColors.hintColor,
                      fontWeight: FontWeight.w400,
                    ),
                    errorStyle: TextStyle(
                      fontSize: screenHeight * 0.014,
                      fontFamily: 'Poppins',
                      color: ApkColors.textErrorColor,
                      fontWeight: FontWeight.w400,
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: screenHeight * 0.0215),
                    fillColor: ApkColors.textEditColor,
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(screenHeight * 0.0129),
                      child: SvgPicture.asset(
                        IconPath.usersSvg,
                        height: screenHeight * 0.0258,
                        width: screenHeight * 0.0258,

                      ),
                    ),
                    enableBorder:  OutlineInputBorder(
                        borderSide: BorderSide(color: ApkColors.primaryColorLite),
                        borderRadius: BorderRadius.all(Radius.circular(screenHeight * 0.0129))),
                    keyboardType: TextInputType.emailAddress,
                    controller: controller.firstNameController
                ),
              );
            }),
            SizedBox(
              height: screenHeight * 0.0086,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal:screenHeight * 0.0258),
              padding: EdgeInsets.only(bottom: screenHeight * 0.0086),
              width: double.infinity,
              child: Text(
                StringConstants.enterEmail,
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: ApkColors.primaryColor,
                    fontSize: screenHeight * 0.0194),
              ),
            ),
            Obx(() {
              controller.count.value;
              return Container(
                padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.0258),
                //height: 88.px,
                child: CommonWidget.commonTextField(
                  validator: controller.emailValidator,
                  // labelText: StringConstants.enterHint,
                  hintText: StringConstants.enterHint,
                  autofocus: false,
                  filled: true,
                    style: TextStyle(
                      fontSize: screenHeight * 0.0172,
                      fontFamily: 'Poppins',
                      color: ApkColors.primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                    hintStyle: TextStyle(
                      fontSize: screenHeight * 0.0172,
                      fontFamily: 'Poppins',
                      color: ApkColors.hintColor,
                      fontWeight: FontWeight.w400,
                    ),
                    errorStyle: TextStyle(
                      fontSize: screenHeight * 0.014,
                      fontFamily: 'Poppins',
                      color: ApkColors.textErrorColor,
                      fontWeight: FontWeight.w400,
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: screenHeight * 0.0215),

                    fillColor: ApkColors.textEditColor,
                  prefixIcon:  Padding(
                    padding: EdgeInsets.all( screenHeight * 0.0129),
                    child: SvgPicture.asset(
                      IconPath.mailSvg,
                      height:  screenHeight * 0.0258,
                      width:  screenHeight * 0.0258,

                    ),
                  ),
                  enableBorder:  OutlineInputBorder(
                      borderSide: BorderSide(color: ApkColors.primaryColorLite),
                      borderRadius: BorderRadius.all(Radius.circular( screenHeight * 0.0129))),
                  keyboardType: TextInputType.emailAddress,
                  controller: controller.emailAddressController
                ),
              );
            }),
            SizedBox(
              height:  screenHeight * 0.0086,
            ),
            Container(
              //color: ApkColors.primaryColor,
              margin: EdgeInsets.symmetric(horizontal:  screenHeight * 0.0258),
              padding: EdgeInsets.only(bottom:  screenHeight * 0.0086),
              width: double.infinity,
              child: Text(
              StringConstants.phoneNumber,
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: ApkColors.primaryColor,
                    fontSize:  screenHeight * 0.0194),
              ),
            ),
            Obx(() {
              controller.count.value;
              return Container(
                padding: EdgeInsets.symmetric(horizontal:  screenHeight * 0.0258),
              //  height: 88.px,
                child: CommonWidget.commonTextField(
                  validator: controller.mobilValidator,
                  hintText: StringConstants.enterHint,
                  autofocus: false,
                  filled: true,
                    style: TextStyle(
                      fontSize: screenHeight * 0.0172,
                      fontFamily: 'Poppins',
                      color: ApkColors.primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                    hintStyle: TextStyle(
                      fontSize: screenHeight * 0.0172,
                      fontFamily: 'Poppins',
                      color: ApkColors.hintColor,
                      fontWeight: FontWeight.w400,
                    ),
                    errorStyle: TextStyle(
                      fontSize: screenHeight * 0.014,
                      fontFamily: 'Poppins',
                      color: ApkColors.textErrorColor,
                      fontWeight: FontWeight.w400,
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: screenHeight * 0.0215),
                  fillColor: ApkColors.textEditColor,
                  prefixIcon:  Padding(
                    padding: EdgeInsets.all( screenHeight * 0.0129),
                    child: SvgPicture.asset(
                      IconPath.smartPhone,
                      height:  screenHeight * 0.0258,
                      width:  screenHeight * 0.0258,

                    ),
                  ),
                  enableBorder:  OutlineInputBorder(
                      borderSide: BorderSide(color: ApkColors.primaryColorLite),
                      borderRadius: BorderRadius.all(Radius.circular( screenHeight * 0.0129))),
                  keyboardType: TextInputType.emailAddress,
                  controller: controller.phoneNumberController
                ),
              );
            }),
            SizedBox(
              height: screenHeight * 0.0086,
            ),
            Container(
              //color: ApkColors.primaryColor,
              margin: EdgeInsets.symmetric(horizontal:screenHeight * 0.0258),
              padding: EdgeInsets.only(bottom: screenHeight * 0.0086),
              width: double.infinity,
              child: Text(
                StringConstants.resume,
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: ApkColors.primaryColor,
                    fontSize: screenHeight * 0.0194),
              ),
            ),
            Obx(() {
              controller.count.value;
              return Container(
                padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.0258),
               // height: 88.px,
                child: CommonWidget.commonTextField(
                  hintText: StringConstants.uploadHere,
                  autofocus: false,
                  filled: true,
                  readOnly: true,
                  style: TextStyle(
                    fontSize: screenHeight * 0.0172,
                    fontFamily: 'Poppins',
                    color: ApkColors.primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                  hintStyle: TextStyle(
                    fontSize: screenHeight * 0.0172,
                    fontFamily: 'Poppins',
                    color: ApkColors.hintColor,
                    fontWeight: FontWeight.w400,
                  ),
                  errorStyle: TextStyle(
                    fontSize: screenHeight * 0.014,
                    fontFamily: 'Poppins',
                    color: ApkColors.textErrorColor,
                    fontWeight: FontWeight.w400,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: screenHeight * 0.0215),
                  fillColor: ApkColors.textEditColor,
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(screenHeight * 0.0129),
                    child: SvgPicture.asset(
                      IconPath.pdf,
                      height: screenHeight * 0.0258,
                      width: screenHeight * 0.0258,
                    
                    ),
                  ),
                  enableBorder:  OutlineInputBorder(
                      borderSide: BorderSide(color: ApkColors.primaryColorLite),
                      borderRadius: BorderRadius.all(Radius.circular(screenHeight * 0.0129))),
                  keyboardType: TextInputType.emailAddress,
                ),
              );
            }),
            SizedBox(
              height: screenHeight * 0.0687,
            ),
            GestureDetector(
              onTap: () {

                Get.toNamed(Routes.APPLICATION_SENT_SCREEN);
              },
              child: Container(
                height: screenHeight * 0.0687,
                margin: EdgeInsets.symmetric(horizontal: screenHeight * 0.0507),

                alignment: Alignment.center,
                // margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 24.px),
                decoration: BoxDecoration(
                    color:
                    ApkColors.orangeColor,
                    borderRadius:
                    BorderRadius.all(
                        Radius.circular(
                            screenHeight * 0.0344))),
                child: Text(
                  StringConstants.submit,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight:
                      FontWeight.w600,
                      color: ApkColors
                          .backgroundColor,
                      fontSize: screenHeight * 0.0194),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.100,
            ),
          ],
        ),
      ),
    );
  }
}
