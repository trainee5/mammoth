import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../CommonFile/CommonWidget.dart';
import '../../../Utils/StringConstants.dart';
import '../../../Utils/icon_path.dart';
import '../../../color/ApkColors.dart';
import '../controllers/newslatter_screen_controller.dart';

class NewslatterScreenView extends GetView<NewslatterScreenController> {
  const NewslatterScreenView({super.key});

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
                padding:
                EdgeInsets.symmetric(horizontal: screenHeight * 0.0215),
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
                      StringConstants.newsletter,
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight * 0.0687,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(IconPath.emailNewsLatter,
              height: screenHeight * 0.2362,
              width: screenHeight * 0.3123,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.146,
            ),
            Container(
              //color: ApkColors.primaryColor,
              margin: EdgeInsets.symmetric(horizontal: screenHeight * 0.0258),
              padding: EdgeInsets.only(bottom: screenHeight * 0.0086),
              width: double.infinity,
              child: Text(
                StringConstants.enterYourEmail,
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
                  enableBorder:  OutlineInputBorder(
                      borderSide: BorderSide(color: ApkColors.primaryColorLite),
                      borderRadius: BorderRadius.all(Radius.circular(screenHeight * 0.0129))),
                  keyboardType: TextInputType.emailAddress,
                  //controller: controller.EmailAddressController
                ),
              );
            }),
            SizedBox(
              height: screenHeight * 0.0494,
            ),
            GestureDetector(
              onTap: () {
        
               // Get.toNamed(Routes.APPLICATION_SENT_SCREEN);
              },
              child: Container(
                height: screenHeight * 0.0687,
                margin: EdgeInsets.symmetric(horizontal: screenHeight * 0.0494),
        
                alignment: Alignment.center,
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
        
          ],
        ),
      ),
    );
  }
}
