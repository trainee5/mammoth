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

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ApkColors.backgroundColor,
      appBar:PreferredSize(
        preferredSize:  Size.fromHeight(screenHeight * 0.1718),
        child: Stack(
          children: [
            Container(
              height: screenHeight * 0.146,
              decoration: BoxDecoration(
                  color: ApkColors.primaryColor
              ),
              child:  Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: screenHeight * 0.0752,
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: screenHeight * 0.0258),
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
                                fontSize: screenHeight * 0.0215),
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
                                fontSize:  screenHeight * 0.0215),
                          ),
                        ),


                      ],
                    ),

                  ),
                  SizedBox(
                    height:  screenHeight * 0.0097,
                  ),




                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height:  screenHeight * 0.1074,
                width: screenHeight * 0.1074,
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
                              shape: BoxShape.circle,
                              color: ApkColors.backgroundColor
                          ),

                          child: Image.asset(
                            IconPath.profileConstLogo,
                            height: screenHeight * 0.1070,
                            fit: BoxFit.fill,
                            width: screenHeight * 0.1070,
                          )),
                      Align(
                        alignment: Alignment.bottomRight,
                        child:Container(
                          height: screenHeight * 0.028,
                          width:screenHeight * 0.028,
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(screenHeight * 0.0129),
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
              height: screenHeight * 0.0431,
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
                child: CommonWidget.commonTextField(
                  //validator: controller.Emailvalidator,
                  // labelText: StringConstants.enterHint,
                  hintText: "Roshni Pal",
                  autofocus: false,
                  filled: true,
                  fillColor: ApkColors.textEditColor,
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(screenHeight * 0.0129),
                    child: SvgPicture.asset(
                      IconPath.usersSvg,
                      height: screenHeight * 0.0258,
                      width: screenHeight * 0.0258,
                      color: ApkColors.primaryColor,

                    ),
                  ),
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
                  enableBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ApkColors.primaryColorLite),
                      borderRadius: BorderRadius.all(Radius.circular(screenHeight * 0.0129))),
                  keyboardType: TextInputType.emailAddress,
                  //controller: controller.EmailAddressController
                ),
              );
            }),
            SizedBox(
              height:screenHeight * 0.0086,
            ),
            Container(
              //color: ApkColors.primaryColor,
              margin: EdgeInsets.symmetric(horizontal: screenHeight * 0.0258),
              padding: EdgeInsets.only(bottom: screenHeight * 0.0086),
              width: double.infinity,
              child: Text(
                StringConstants.post,
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
                child: CommonWidget.commonTextField(
                  //validator: controller.Emailvalidator,
                  // labelText: StringConstants.enterHint,
                  hintText: StringConstants.postHint,
                  autofocus: false,
                  filled: true,
                  fillColor: ApkColors.textEditColor,
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(screenHeight * 0.0129),
                    child: SvgPicture.asset(
                      IconPath.mentoring,
                      height: screenHeight * 0.0258,
                      width: screenHeight * 0.0258,

                    ),
                  ),
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
                  enableBorder:  OutlineInputBorder(
                      borderSide: BorderSide(color: ApkColors.primaryColorLite),
                      borderRadius: BorderRadius.all(Radius.circular(screenHeight * 0.0129))),
                  keyboardType: TextInputType.emailAddress,
                  //controller: controller.EmailAddressController
                ),
              );
            }),
            SizedBox(
              height:screenHeight * 0.0086,
            ),
            Container(
              //color: ApkColors.primaryColor,
              margin: EdgeInsets.symmetric(horizontal: screenHeight * 0.0258),
              padding: EdgeInsets.only(bottom: screenHeight * 0.0086),
              width: double.infinity,
              child: Text(
                StringConstants.eMail,
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
                child: CommonWidget.commonTextField(
                  //validator: controller.Emailvalidator,
                  // labelText: StringConstants.enterHint,
                  hintText: StringConstants.enterHint,
                  autofocus: false,
                  filled: true,
                  fillColor: ApkColors.textEditColor,
                  prefixIcon: Image.asset(
                    IconPath.mailIcon,
                    height: screenHeight * 0.0215,
                    width: screenHeight * 0.0215,),
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
                  enableBorder:  OutlineInputBorder(
                      borderSide: BorderSide(color: ApkColors.primaryColorLite),
                      borderRadius: BorderRadius.all(Radius.circular(screenHeight * 0.0129))),
                  keyboardType: TextInputType.emailAddress,
                  //controller: controller.EmailAddressController
                ),
              );
            }),
            SizedBox(
              height:screenHeight * 0.0086,
            ),
            Container(
              //color: ApkColors.primaryColor,
              margin: EdgeInsets.symmetric(horizontal: screenHeight * 0.0258),
              padding: EdgeInsets.only(bottom: screenHeight * 0.0086),
              width: double.infinity,
              child: Text(
                StringConstants.number,
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
                child: CommonWidget.commonTextField(
                  //validator: controller.Emailvalidator,
                  // labelText: StringConstants.enterHint,
                  hintText: StringConstants.numHint,
                  autofocus: false,
                  filled: true,
                  fillColor: ApkColors.textEditColor,
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(screenHeight * 0.0129),
                    child: SvgPicture.asset(
                      IconPath.smartPhone,
                      height: screenHeight * 0.0258,
                      width: screenHeight * 0.0258,

                    ),
                  ),
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
                  enableBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ApkColors.primaryColorLite),
                      borderRadius: BorderRadius.all(Radius.circular(screenHeight * 0.0129))),
                  keyboardType: TextInputType.emailAddress,
                  //controller: controller.EmailAddressController
                ),
              );
            }),
            SizedBox(
              height: screenHeight * 0.0043,
            ),
          ],
        ),
      ),
    );
  }
}
