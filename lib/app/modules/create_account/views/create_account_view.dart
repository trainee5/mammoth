import 'package:carded/carded.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../CommonFile/CommonWidget.dart';
import '../../../Utils/StringConstants.dart';
import '../../../Utils/icon_path.dart';
import '../../../color/ApkColors.dart';
import '../../../routes/app_pages.dart';
import '../controllers/create_account_controller.dart';



class CreateAccountView extends GetView<CreateAccountController> {
  const CreateAccountView({super.key});
  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ApkColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Form(
              key: controller.formKey,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.026),
                    height: screenHeight * 0.245,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ApkColors.primaryColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: screenHeight * 0.065,
                        ),
                        Row(
                          children: [
                            Text(
                              StringConstants.createYourAccount,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: ApkColors.backgroundColor,
                                  fontSize: screenHeight * 0.030),
                            ),

                            Image.asset(
                              IconPath.handDown,
                              height:  screenHeight * 0.0408,
                              width: screenWidth * 0.0886,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.0183,
                        ),
                        Text(
                          StringConstants.createAccountUnlock,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: ApkColors.backgroundColor,
                              fontSize: screenHeight * 0.020),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.042,
                  ),
                  Container(
                    //color: ApkColors.primaryColor,
                    margin: EdgeInsets.symmetric(horizontal:screenHeight * 0.026),
                    padding: EdgeInsets.only(bottom: screenHeight * 0.0086),
                    width: double.infinity,
                    child: Text(
                      StringConstants.enterEmail,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: ApkColors.primaryColor,
                          fontSize: screenHeight * 0.020),
                    ),
                  ),
                  Obx(() {
                    controller.count.value;
                    return Container(
                      // color: Colors.deepPurple,
                      margin: EdgeInsets.symmetric(horizontal:screenHeight * 0.026),
                      child: CommonWidget.commonTextField(
                        //  validator: controller.emailValidator,
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
                          wantPrefixIcon: true,
                          fillColor: ApkColors.textEditColor,
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(screenHeight * 0.0129),
                            child: Image.asset(
                              IconPath.mailIcon,
                              height: screenHeight * 0.026,
                              width: screenHeight * 0.026,),
                          ),
                          enableBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: ApkColors.primaryColorLite),
                              borderRadius:
                              BorderRadius.all(Radius.circular(screenHeight * 0.0129))),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: ApkColors.orangeColor),
                              borderRadius:
                              BorderRadius.all(Radius.circular(screenHeight * 0.0129))),


                          keyboardType: TextInputType.emailAddress,

                          controller: controller.emailAddressController),
                    );
                  }),
                  Container(
                    //color: ApkColors.primaryColor,
                    margin: EdgeInsets.symmetric(horizontal:screenHeight * 0.026),
                    padding: EdgeInsets.only(bottom: screenHeight * 0.0086),
                    width: double.infinity,
                    child: Text(
                      StringConstants.createStrongPassword,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: ApkColors.primaryColor,
                          fontSize: screenHeight * 0.020),
                    ),
                  ),
                  Obx(() {
                    controller.count.value;
                    return  Padding(
                      padding: EdgeInsets.symmetric(horizontal:screenHeight * 0.026),
                      child: SizedBox(
                        // height: screenHeight * 0.110,
                        // color: Colors.amber,
                        //margin: EdgeInsets.symmetric(horizontal:screenHeight * 0.026),
                        // padding: EdgeInsets.only(top: screenHeight * 0.0086),
                        child: CommonWidget.commonTextField(
                          // validator: controller.passwordValidator,
                          // labelText: StringConstants.enterEmail,
                            hintText: StringConstants.enterPassword,
                            autofocus: false,
                            maxLines: 1,

                            //contentPadding: EdgeInsets.symmetric(vertical: screenHeight * 0.020),

                            obscureText: controller.passwordVisible,
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

                            wntsuffixIcon: true,
                            wantPrefixIcon: true,
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(screenHeight * 0.0129),
                              child: Image.asset(
                                IconPath.passLockIcon,
                                height: screenHeight * 0.026,
                                width: screenHeight * 0.026,),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                controller.increment();
                                controller.passwordVisible =
                                !controller.passwordVisible;
                              },
                              child: controller.passwordVisible
                                  ? Padding(
                                padding: EdgeInsets.all(screenHeight * 0.0129),
                                child: SvgPicture.asset(
                                  IconPath.eyeIcon,
                                  height: screenHeight * 0.026,
                                  width: screenHeight * 0.026,
                                ),
                              )
                                  : Padding(
                                padding: EdgeInsets.all(screenHeight * 0.0129),
                                child: SvgPicture.asset(
                                  IconPath.viewOffIcon,
                                  height: screenHeight * 0.026,
                                  width: screenHeight * 0.026,
                                ),
                              ),
                            ),

                            filled: true,
                            fillColor:controller.passwordTextValueCheck
                                ? ApkColors.backgroundColor
                                : ApkColors.textEditColor,
                            enableBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: ApkColors.primaryColorLite),
                                borderRadius:
                                BorderRadius.all(Radius.circular(screenHeight * 0.0129))),
                            errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: ApkColors.orangeColor),
                                borderRadius:
                                BorderRadius.all(Radius.circular(screenHeight * 0.0129))),
                            keyboardType: TextInputType.visiblePassword,
                            controller: controller.passwordController
                        ),
                      ),
                    );

                  }),

                  Obx(() {
                    controller.count.value;
                    return Row(

                      children: [
                        Container(
                          width: screenHeight * 0.026,
                          height: screenHeight * 0.026,
                          margin: EdgeInsets.only(left:screenHeight * 0.026),
                          //color: Colors.black,
                          child: Checkbox(
                            side: const BorderSide(
                              color: ApkColors.primaryColor,
                              style: BorderStyle.solid,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(screenHeight * 0.0054),
                            ),

                            value: controller.checkBoxValue,
                            checkColor: ApkColors.backgroundColor,
                            activeColor: ApkColors.orangeColor,
                            onChanged: (bool? value) {
                              controller.checkBoxValue = value!;
                              controller.increment();
                            },
                          ),
                        ),
                        SizedBox(width: screenHeight * 0.0086),
                        SizedBox(
                            height:  screenHeight * 0.0322,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  StringConstants.rememberMe,
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      color: ApkColors.primaryColor,
                                      fontSize:  screenHeight * 0.0172),
                                ),
                                SizedBox(width:  screenHeight * 0.065,),
                              ],
                            )),
                        SizedBox(width: screenHeight * 0.026,)
                      ],
                    );
                  }),

                  SizedBox(
                    height: screenHeight * 0.043,
                  ),
                  Obx(() {
                    controller.count.value;
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: screenHeight * 0.0258),
                      child: CommonWidget.commonButton(
                          height: screenHeight * 0.069,
                          text: StringConstants.signUp,

                          onPressed: () {
                            controller.createNewAccount();

                            controller.formKey.currentState!.validate();
                          }
                      ),
                    );
                  }
                  ),
                  SizedBox(
                    height: screenHeight * 0.026,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        child: Container(
                            height: 2.px,
                            width: screenHeight * 0.1417,

                            color: ApkColors.hintColor
                        ),
                      ),
                      SizedBox(
                        width: screenHeight * 0.0172,
                      ),
                      Text(
                        StringConstants.orContinueWith,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: ApkColors.hintColor,
                            fontSize: screenHeight * 0.0172),
                      ),
                      SizedBox(
                        width: screenHeight * 0.0172,
                      ),
                      Flexible(
                        child: Container(
                            height: 2.px,
                            width: screenHeight * 0.1417,
                            color: ApkColors.hintColor
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.043,
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CardyContainer(
                        blurRadius: 0.px,
                        height: screenHeight * 0.0773,
                        width: screenHeight * 0.0773,
                        borderRadius: BorderRadius.all(Radius.circular(screenHeight * 0.0129)),
                        blurStyle: BlurStyle.normal,
                        shadowColor: ApkColors.blackShadow,
                        shadowOffset: Offset(
                            0.px,4.px
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: ApkColors.primaryLite8p,
                            borderRadius: BorderRadius.all(Radius.circular(screenHeight * 0.0129)),
                          ),
                          child: Image.asset(IconPath.googleImg,
                            height: screenHeight * 0.043,
                            width: screenHeight * 0.043,
                          ),
                        ),


                      ),
                      SizedBox(
                        width: screenHeight * 0.0172,
                      ),
                      CardyContainer(
                        blurRadius: 0.px,
                        height: screenHeight * 0.0773,
                        width: screenHeight * 0.0773,
                        borderRadius: BorderRadius.all(Radius.circular(12.px)),
                        blurStyle: BlurStyle.normal,
                        shadowColor: ApkColors.blackShadow,
                        shadowOffset: Offset(
                            0.px,4.px
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: ApkColors.primaryLite8p,
                            borderRadius: BorderRadius.all(Radius.circular(screenHeight * 0.0129)),
                          ),
                          child: Image.asset(IconPath.appleImg,
                            height: screenHeight * 0.043,
                            width: screenHeight * 0.043,
                          ),
                        ),


                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.050,
            ),
            Container(
              padding: EdgeInsets.only(bottom: screenHeight * 0.032),
              // color: ApkColors.orangeColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    StringConstants.alreadyAccount,
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
                      Get.toNamed(Routes.HOME);
                    },
                    child:  Text(
                      StringConstants.signIn,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: ApkColors.orangeColor,
                          fontSize: screenHeight * 0.020),
                    ),
                  ),
                ],
              ),
            )



          ],
        ),
      ),
    );
  }
}
