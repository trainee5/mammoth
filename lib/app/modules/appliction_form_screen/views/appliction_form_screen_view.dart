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
    return Scaffold(
      backgroundColor: ApkColors.backgroundColor,
      appBar:PreferredSize(
        //preferredSize:  Size.fromHeight(80.0)
        preferredSize:  Size.fromHeight(136.px),
        child: Container(
          decoration: BoxDecoration(
              color: ApkColors.primaryColor
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 70.px,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: SvgPicture.asset(
                        IconPath.arrowLeftIcon,
                        height: 32.px,
                        width: 32.px,
                      ),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    SizedBox(width: 12.px,),
                    Text(
                      StringConstants.applicationForm,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: ApkColors.backgroundColor,
                          fontSize: 26.px),
                    ),

                  ],
                ),

              ),
              SizedBox(
                height: 30.px,
              ),


            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 36.px,
            ),
            Container(
              //color: ApkColors.primaryColor,
              margin: EdgeInsets.symmetric(horizontal: 24.px),
              padding: EdgeInsets.only(bottom: 8.px),
              width: double.infinity,
              child: Text(
                StringConstants.fullName,
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
                    validator: controller.firstNameValidator,
                    hintText: StringConstants.firstNameHint,
                    autofocus: false,
                    filled: true,
                    fillColor: ApkColors.textEditColor,
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(12.px),
                      child: SvgPicture.asset(
                        IconPath.usersSvg,
                        height: 24.px,
                        width: 24.px,

                      ),
                    ),
                    enableBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: ApkColors.primaryColorLite),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    keyboardType: TextInputType.emailAddress,
                    controller: controller.firstNameController
                ),
              );
            }),
            SizedBox(
              height: 32.px,
            ),
            Container(
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
                  validator: controller.emailValidator,
                  // labelText: StringConstants.enterHint,
                  hintText: StringConstants.enterHint,
                  autofocus: false,
                  filled: true,
                  fillColor: ApkColors.textEditColor,
                  prefixIcon:  Padding(
                    padding: EdgeInsets.all(12.px),
                    child: SvgPicture.asset(
                      IconPath.mailSvg,
                      height: 24.px,
                      width: 24.px,

                    ),
                  ),
                  enableBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: ApkColors.primaryColorLite),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  keyboardType: TextInputType.emailAddress,
                  controller: controller.emailAddressController
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
              StringConstants.phoneNumber,
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
                  validator: controller.mobilValidator,
                  hintText: StringConstants.enterHint,
                  autofocus: false,
                  filled: true,
                  fillColor: ApkColors.textEditColor,
                  prefixIcon:  Padding(
                    padding: EdgeInsets.all(12.px),
                    child: SvgPicture.asset(
                      IconPath.smartPhone,
                      height: 24.px,
                      width: 24.px,

                    ),
                  ),
                  enableBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: ApkColors.primaryColorLite),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  keyboardType: TextInputType.emailAddress,
                  controller: controller.phoneNumberController
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
                StringConstants.resume,
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
                  hintText: StringConstants.uploadHere,
                  autofocus: false,
                  filled: true,
                  readOnly: true,
                  fillColor: ApkColors.textEditColor,
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(12.px),
                    child: SvgPicture.asset(
                      IconPath.usersSvg,
                      height: 24.px,
                      width: 24.px,
                    
                    ),
                  ),
                  enableBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: ApkColors.primaryColorLite),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  keyboardType: TextInputType.emailAddress,
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
                  StringConstants.submit,
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
