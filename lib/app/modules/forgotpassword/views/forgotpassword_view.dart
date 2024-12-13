import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mammoth/app/routes/app_pages.dart';
import 'package:pinput/pinput.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../CommonFile/CommonWidget.dart';
import '../../../Utils/StringConstants.dart';
import '../../../color/ApkColors.dart';
import '../controllers/forgotpassword_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({super.key});
  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    print("screenHeight : $screenHeight" );
    print("screenWidth : $screenWidth" );


    return Scaffold(
      backgroundColor: ApkColors.backgroundColor,
      body: SingleChildScrollView(
        child: Form(
          // key: controller.formKey,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.0258),
                height: screenHeight * 0.245,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ApkColors.primaryColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screenHeight * 0.088,
                    ),
                    Row(
                      children: [
                        Text(
                          StringConstants.forgotPassword,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: ApkColors.backgroundColor,
                              fontSize: screenHeight * 0.0344),
                        ),

                      ],
                    ),
                    SizedBox(
                        height: screenHeight * 0.020
                    ),
                    Text(
                      StringConstants.otpSendDigit,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: ApkColors.backgroundColor,
                          fontSize: screenHeight * 0.022),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.042,
              ),
              Obx(() {
                controller.count.value;
                return Pinput(
                  controller: controller.pinController,
                  keyboardType: TextInputType.number,
                  length: 4,
                  onCompleted: (pin) {
                    if (kDebugMode) {
                      print('Entered OTP: $pin');
                    }
                  },
                  submittedPinTheme: PinTheme(
                    width: screenHeight * 0.0902,
                    height: screenHeight * 0.0902,
                    textStyle: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: screenHeight * 0.035,
                      color: ApkColors.primaryColor,
                    ),
                    decoration: BoxDecoration(
                      color: ApkColors.backgroundColor,
                      border: Border.all(color: ApkColors.orangeColor),
                      borderRadius: BorderRadius.circular(screenHeight * 0.0129),
                    ),
                  ),
                  focusedPinTheme: PinTheme(
                    width: screenHeight * 0.0902,
                    height: screenHeight * 0.0902,
                    textStyle: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: screenHeight * 0.035,
                      color: ApkColors.primaryColor,
                    ),
                    decoration: BoxDecoration(
                      color: ApkColors.textEditColor,
                      // border: Border.all(color:ApkColors.orangeColor),
                       borderRadius: BorderRadius.circular(screenHeight * 0.0129),
                    ),
                  ),
                  defaultPinTheme: PinTheme(
                    width: screenHeight * 0.0902,
                    height: screenHeight * 0.0902,
                    textStyle: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: screenHeight * 0.0322,
                      color: ApkColors.primaryColor,
                    ),
                    decoration: BoxDecoration(
                     color: ApkColors.textEditColor,
                     // border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(screenHeight * 0.0129),
                    ),
                  ),
                );
              }),
              SizedBox(
                height: screenHeight * 0.0172,
              ),

              Obx((){
                controller.count.value;
                return Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.symmetric(horizontal: screenHeight * 0.0258),
                  width: double.infinity,
                  //color: Colors.black,
                  child: Text(
                    controller.formattedTime,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: ApkColors.orangeColor,
                        fontSize: screenHeight * 0.0172),
                  ),
                );
              }),
              SizedBox(
                  height: screenHeight * 0.321
              ),
              Container(
                  padding: EdgeInsets.only(bottom: screenHeight * 0.0322),
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenHeight * 0.020,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            StringConstants.didNotOTP,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.primaryLite80p,
                                fontSize: screenHeight * 0.020),
                          ),
                          SizedBox(
                            width: screenHeight * 0.0054,
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.startTimer();
                            },
                            child:  Text(
                              StringConstants.resendOTP,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: ApkColors.orangeColor,
                                  fontSize: screenHeight * 0.020),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.0117,
                      ),

                      Obx(() {
                        controller.count.value;
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: screenHeight * 0.026),
                          child: CommonWidget.commonButton(
                              text: StringConstants.next,
                              onPressed: () {
                                Get.toNamed(Routes.CREATE_NEW_PASSWORD);

                                // controller.formKey.currentState!.validate();
                                //controller.animatedBtnLoad();
                              }),
                        );
                      }),

                      SizedBox(
                        height: screenHeight * 0.026,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          StringConstants.backToLogIn,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: ApkColors.orangeColor,
                              fontSize: screenHeight * 0.020),
                        ),
                      ),
                    ],
                  )




              ),







            ],
          ),
        ),
      ),
    );
  }
}
