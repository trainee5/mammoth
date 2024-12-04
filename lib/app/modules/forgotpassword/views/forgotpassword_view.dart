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
    return Scaffold(
      backgroundColor: ApkColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Form(
              // key: controller.formKey,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24.px),
                    height: 230.px,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ApkColors.primaryColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 90.px,
                        ),
                        Row(
                          children: [
                            Text(
                              StringConstants.forgotPassword,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: ApkColors.backgroundColor,
                                  fontSize: 32.px),
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 17.px,
                        ),
                        Text(
                          StringConstants.otpSendDigit,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: ApkColors.backgroundColor,
                              fontSize: 20.px),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40.px,
                  ),
                  Obx(() {
                    controller.count.value;
                    return Pinput(
                      controller: controller.pinController,
                      length: 4,
                      onCompleted: (pin) {
                        if (kDebugMode) {
                          print('Entered OTP: $pin');
                        }
                      },
                      submittedPinTheme: PinTheme(
                        width: 84.px,
                        height: 84.px,
                        textStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 32.px,
                          color: ApkColors.primaryColor,
                        ),
                        decoration: BoxDecoration(
                          color: ApkColors.backgroundColor,
                          border: Border.all(color: ApkColors.orangeColor),
                          borderRadius: BorderRadius.circular(12.0.px),
                        ),
                      ),
                      focusedPinTheme: PinTheme(
                        width: 84.px,
                        height: 84.px,
                        textStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 32.px,
                          color: ApkColors.primaryColor,
                        ),
                        decoration: BoxDecoration(
                          color: ApkColors.textEditColor,
                          // border: Border.all(color:ApkColors.orangeColor),
                           borderRadius: BorderRadius.circular(12.0.px),
                        ),
                      ),
                      defaultPinTheme: PinTheme(
                        width: 84.px,
                        height: 84.px,
                        textStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 32.px,
                          color: ApkColors.primaryColor,
                        ),
                        decoration: BoxDecoration(
                         color: ApkColors.textEditColor,
                         // border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(12.0.px),
                        ),
                      ),
                    );
                  }),
                  SizedBox(
                    height: 16.px,
                  ),

                  Obx((){
                    controller.count.value;
                    return Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.symmetric(horizontal: 24.px),
                      width: double.infinity,
                      //color: Colors.black,
                      child: Text(
                        controller.formattedTime,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: ApkColors.orangeColor,
                            fontSize: 16.px),
                      ),
                    );
                  }),
                  SizedBox(
                    height: 250.px,
                  )



                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 30.px),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.px,
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
                            fontSize: 18.px),
                      ),
                      SizedBox(
                        width: 5.px,
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
                              fontSize: 18.px),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.px,
                  ),

                  Obx(() {
                    controller.count.value;
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 24.px),
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
                    height: 24.px,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      StringConstants.backToLogIn,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: ApkColors.orangeColor,
                          fontSize: 18.px),
                    ),
                  ),

                ],
              )




            )
          ],
        ),
      ),
    );
  }
}
