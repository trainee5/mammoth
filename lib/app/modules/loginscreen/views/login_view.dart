import 'package:carded/carded.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mammoth/app/color/ApkColors.dart';
import 'package:mammoth/app/routes/app_pages.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../CommonFile/CommonWidget.dart';
import '../../../Utils/StringConstants.dart';
import '../../../Utils/icon_path.dart';
import '../controllers/Login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
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
                              StringConstants.welcomeBack,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: ApkColors.backgroundColor,
                                  fontSize: 32.px),
                            ),
                            SizedBox(
                              width: 10.px,
                            ),
                            Image.asset(
                              IconPath.hiFiIcon,
                              height: 38.px,
                              width: 38.px,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 17.px,
                        ),
                        Text(
                          StringConstants.loginToContinue,
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
                  Container(
                    //color: ApkColors.primaryColor,
                    margin: EdgeInsets.symmetric(horizontal:24.px),
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
                      margin: EdgeInsets.symmetric(horizontal:24.px),
                      child: CommonWidget.commonTextField(
                          validator: controller.emailValidator,
                         // labelText: StringConstants.enterHint,
                          hintText: StringConstants.enterHint,
                          autofocus: false,
                          filled: true,
                          fillColor: ApkColors.textEditColor,
                          prefixIcon: Image.asset(
                            IconPath.mailIcon,
                            height: 17.px,
                            width: 20.px,),
                          enableBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: ApkColors.primaryColorLite),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.px))),
                          keyboardType: TextInputType.emailAddress,

                          controller: controller.emailAddressController),
                    );
                  }),
                  SizedBox(height:24.px,),
                  Row(
                    children: [
                      Container(
                        //color: ApkColors.primaryColor,
                        margin: EdgeInsets.only(left:24.px),
                        padding: EdgeInsets.only(bottom: 8.px),
                        // width: double.infinity,
                        child: Text(
                          StringConstants.enterPassword,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: ApkColors.primaryColor,
                              fontSize: 18.px),
                        ),
                      ),
                      Container(
                        //color: ApkColors.primaryColor,
                        //margin: EdgeInsets.only(right: 50.px),
                        padding: EdgeInsets.only(bottom: 8.px),
                        //width: double.infinity,
                        child: Text(
                          "*",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: ApkColors.orangeColor,
                              fontSize: 18.px),
                        ),
                      ),
                    ],
                  ),
                  Obx(() {
                    controller.count.value;
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal:24.px),
                      child: CommonWidget.commonTextField(
                          validator: controller.passwordValidator,
                         // labelText: StringConstants.enterEmail,
                          hintText: StringConstants.enterPassword,
                          autofocus: false,
                          obscureText: controller.passwordVisible,
                          maxLine: 1,
                          wntsuffixIcon: true,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              controller.increment();
                              controller.passwordVisible =
                                  !controller.passwordVisible;
                            },
                            child: controller.passwordVisible
                                ? Padding(
                                    padding: EdgeInsets.all(12.px),
                                    child: SvgPicture.asset(
                                      IconPath.eyeIcon,
                                      height: 24.px,
                                      width: 24.px,
                                    ),
                                  )
                                : Padding(
                                    padding: EdgeInsets.all(12.px),
                                    child: SvgPicture.asset(
                                      IconPath.viewOffIcon,
                                      height: 24.px,
                                      width: 24.px,
                                    ),
                                  ),
                          ),
                          filled: true,
                          fillColor:controller.passwordTextValueCheck
                              ? ApkColors.backgroundColor
                              : ApkColors.textEditColor,
                          prefixIcon: Image.asset(
                            IconPath.passLockIcon,
                            height: 17.px,
                            width: 20.px,),
                          enableBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: ApkColors.primaryColorLite),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.px))),
                          keyboardType: TextInputType.visiblePassword,
                          controller: controller.passwordController
                      ),
                    );
                  }),
                  SizedBox(
                    height: 8.px,
                  ),
                  Obx(() {
                    controller.count.value;
                    return Row(

                      children: [
                        Container(
                          width: 24.px,
                          height: 24.px,
                          margin: EdgeInsets.only(left:24.px),
                          //color: Colors.black,
                          child: Checkbox(
                            side: const BorderSide(
                              color: ApkColors.primaryColor,
                              style: BorderStyle.solid,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.px),
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
                        SizedBox(width: 8.px),
                        SizedBox(
                            height: 30.px,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  StringConstants.rememberMe,
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      color: ApkColors.primaryColor,
                                      fontSize: 15.px),
                                ),
                                SizedBox(width: 80.px,),
                                GestureDetector(
                                  onTap: () {},
                                  child:  Text(
                                    StringConstants.forgotPassword,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        color: ApkColors.orangeColor,
                                        fontSize: 15.px),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    );
                  }),
                  SizedBox(
                    height: 40.px,
                  ),
                  Obx(() {
                    controller.animateButton.value;
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 24.px),
                      child:  GestureDetector(
                        onTap: () {
                          controller.playLoginAnimation();
                          controller.formKey.currentState!.validate();
                          controller.animatedBtnLoad();
                          controller.increment();
                        },
                        child: AnimatedOpacity(
                          duration: Duration(milliseconds: 1000),
                          opacity: controller.completed ? 0.0 : 1.0,
                          child: Container(
                              width: controller.loginButtonSizeAnimation.value,
                              height: 64.px,
                              alignment: FractionalOffset.center,
                              decoration: BoxDecoration(
                                  color: ApkColors.orangeColor,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(32.0.px))),
                              child: !controller.isLoading
                                  ?  Text(
                                  StringConstants.logIn,
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                      color: ApkColors.backgroundColor,
                                      fontSize: 18.px,))
                                  :  RefreshProgressIndicator(
                                color: ApkColors.orangeColor,
                                backgroundColor:
                                ApkColors.backgroundColor,
                              )),
                        ),
                      ),


                      // CommonWidget.commonButton(
                      //     text: StringConstants.logIn,
                      //
                      //     onPressed: () {
                      //       Get.toNamed(Routes.ForgotPassword);
                      //     //  controller.formKey.currentState!.validate();
                      //     //  controller.animatedBtnLoad();
                      //     }
                      // ),




                    );
                  }),



                  SizedBox(
                    height: 24.px,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: 2.px,
                          width: 126.px,

                          color: ApkColors.hintColor
                      ),
                      SizedBox(
                        width: 10.px,
                      ),
                      Text(
                        StringConstants.orContinueWith,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: ApkColors.hintColor,
                            fontSize: 16.px),
                      ),
                      SizedBox(
                        width: 10.px,
                      ),
                      Container(
                          height: 2.px,
                          width: 126.px,
                          color: ApkColors.hintColor
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40.px,
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CardyContainer(
                        blurRadius: 0.px,
                        height: 72.px,
                        width: 72.px,
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
                            borderRadius: BorderRadius.all(Radius.circular(12.px)),
                          ),
                          child: Image.asset(IconPath.googleImg,
                            height: 40.px,
                            width: 40.px,
                          ),
                        ),


                      ),
                      SizedBox(
                        width: 16.px,
                      ),
                      CardyContainer(
                        blurRadius: 0.px,
                        height: 72.px,
                        width: 72.px,
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
                            borderRadius: BorderRadius.all(Radius.circular(12.px)),
                          ),
                          child: Image.asset(IconPath.appleImg,
                            height: 40.px,
                            width: 40.px,
                          ),
                        ),


                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.px,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 30.px),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    StringConstants.newHere,
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
                      Get.toNamed(Routes.CreateAccount);
                    },
                    child:  Text(
                      StringConstants.signUp,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: ApkColors.orangeColor,
                          fontSize: 18.px),
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
