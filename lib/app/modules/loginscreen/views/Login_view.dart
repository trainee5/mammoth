import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mammoth/app/color/ApkColors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../CommonFile/CommonWidget.dart';
import '../controllers/Login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ApkColors.backgroundColor,
      body: Center(
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
                      "Welcome Back!",
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
                      "assets/images/hiipng.png",
                      height: 38.px,
                      width: 38.px,
                    ),
                  ],
                ),
                SizedBox(
                  height: 17.px,
                ),
                Text(
                  "Log in to continue your journey and explore new career possibilities!",
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
                margin: EdgeInsets.symmetric(horizontal: 50.px),
                padding: EdgeInsets.only(bottom: 8.px),
                width: double.infinity,
                child: Text(
                  "Enter Email",
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
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: CommonWidget.commonTextfield(
                      validator: controller.Emailvalidator,
                      labelText: "Ex : john@gmail.com",
                      autofocus: false,
                      filled: true,
                      fillColor: ApkColors.primaryColorLite,
                      prefixIcon: Image.asset("assets/images/mail.png",
                      height: 17.px,
                      width: 20.px,),
                      enableBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: ApkColors.primaryColorLite),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      keyboardType: TextInputType.emailAddress,
                      controller: controller.EmailAddressController),
                );
              }),
              SizedBox(height:24.px,),
              Row(
                children: [
                  Container(
                    //color: ApkColors.primaryColor,
                    margin: EdgeInsets.only(left: 50.px),
                    padding: EdgeInsets.only(bottom: 8.px),
                   // width: double.infinity,
                    child: Text(
                      "Enter Password",
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
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: CommonWidget.commonTextfield(
                      validator: controller.Passwordvalidator,
                      labelText: "Enter Password",
                      autofocus: false,
                      obscureText: controller.passwordVisible,
                      maxLine: 1,
                      wntsuffixIcon: true,
                      suffixIcon: IconButton(
                        icon: Icon(
                          // Based on passwordVisible state choose the icon
                          controller.passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: ApkColors.primaryColor,
                        ),
                        onPressed: () {
                          controller.increment();
                          // Update the state i.e. toogle the state of passwordVisible variable
                          controller.passwordVisible =
                          !controller.passwordVisible;
                        },
                      ),
                      filled: true,
                       fillColor: ApkColors.primaryColorLite,
                       prefixIcon: Image.asset("assets/images/passlock.png",
                        height: 17.px,
                        width: 20.px,),
                      enableBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: ApkColors.primaryColorLite),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      keyboardType: TextInputType.visiblePassword,
                      controller: controller.PasswordController),
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
                      margin: EdgeInsets.only(left: 50.px),
                      //color: Colors.black,
                      child: Checkbox(
                        side: const BorderSide(
                          color: ApkColors.primaryColor,
                          style: BorderStyle.solid,
                        ),

                        value: controller.checkboxvalue,
                        checkColor: ApkColors.backgroundColor,
                        activeColor: ApkColors.orangeColor,
                        onChanged: (bool? value) {
                          controller.checkboxvalue = value!;
                          controller.increment();
                          ;
                        },
                      ),
                    ),
                    SizedBox(width: 8.px),
                    Container(
                        height: 30,

                       // color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                             Text(
                              "Remember me",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  color: ApkColors.primaryColor,
                                  fontSize: 15.px),
                            ),
                            SizedBox(width: 30.px,),
                            GestureDetector(
                              onTap: () {},
                              child:  Text(
                                "Forgot Password?",
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
                controller.count.value;
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: CommonWidget.commonbutten(onPressed: () {

                  }
                     ),
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

                    color: ApkColors.primaryColor
                  ),
                  SizedBox(
                    width: 10.px,
                  ),
                  Text(
                    "Or Continue with",
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
                      color: ApkColors.primaryColor
                  ),
                ],
              ),
              SizedBox(
                height: 13.px,
              ),
              Row(
               // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 72.px,
                      width: 72.px,
                      decoration: BoxDecoration(
                          color: ApkColors.orangeColor,
                          //color: ApkColors.primaryColor
                          borderRadius:
                          BorderRadius.all(Radius.circular( 10.px)))


                  ),
                  SizedBox(
                    width: 16.px,
                  ),
                  Container(
                      height: 72.px,
                      width: 72.px,
                      decoration: BoxDecoration(
                          color: ApkColors.orangeColor,
                          //color: ApkColors.primaryColor
                          borderRadius:
                          BorderRadius.all(Radius.circular( 10.px)))
                  ),
                ],
              )

        ],
      )),
    );
  }
}
