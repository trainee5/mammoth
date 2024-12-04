import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mammoth/app/routes/app_pages.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginController extends GetxController with GetSingleTickerProviderStateMixin {

  final count = 0.obs;
  final animateButton = 0.obs;

  TextEditingController emailAddressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();


  bool passwordVisible = false;
  bool emailTextValueCheck = false;
  bool passwordTextValueCheck = false;
  bool checkBoxValue = false;


  bool isLoading = false;
  bool completed = false;


  late AnimationController loginButtonAnimationController;
  late Animation<double> loginButtonSizeAnimation;


  void animatedBtnLoad()=> animateButton.value++;


  @override
  void onInit() {

    loginButtonAnimationController= AnimationController(
        duration: Duration(milliseconds: 200),
        vsync: this
    );

    loginButtonSizeAnimation = Tween<double>(begin: 382.px, end: 64.px)
        .animate(loginButtonAnimationController)
      ..addListener(() {
        animatedBtnLoad();
      });

    super.onInit();
  }




  void playLoginAnimation() async {
    if (isLoading) {
      return; }
    isLoading = true;
    animatedBtnLoad();

    try {
      await loginButtonAnimationController.forward();

      Timer(Duration(milliseconds: 1200), () {
        loginButtonAnimationController.reverse();
        completed = true;
        animatedBtnLoad();
        loginCalling();
        isLoading = false;
        Timer(Duration(milliseconds: 1000), () {
          completed = false;
          animatedBtnLoad();
        });
      });
    }
    on TickerCanceled {}
  }

  void increment() => count.value++;


  @override
  void dispose() {
    loginButtonAnimationController.dispose();
    super.dispose();
  }

  FormFieldValidator<String>? firstNameValidator = (String? value) {
    var nonNullValue = value ?? '';
    if (nonNullValue.isEmpty) {
      return ("First Name is required");
    } else
      return null;
  };
  FormFieldValidator<String>? lastNameValidator = (String? value) {
    var nonNullValue = value ?? '';
    if (nonNullValue.isEmpty) {
      return ("Last Name is required");
    } else
      return null;
  };
  FormFieldValidator<String>? emailValidator = (String? value) {
    RegExp regex = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    var passNonNullValue = value ?? "";
    if (passNonNullValue.isEmpty) {
      return ("Email is required");
    }
    // else if(!regex.hasMatch(passNonNullValue)){
    //   return ("Email is not valid please check your email ");
    // }
    return null;
  };
  FormFieldValidator<String>? mobilValidator = (String? value) {
    if (value!.length < 10) {
      return "Enter at least 10 number";
    } else
      return null;
  };
  FormFieldValidator<String>? passwordValidator = (String? value) {
    RegExp regex =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    var passNonNullValue = value ?? "";
    if (passNonNullValue.isEmpty) {
      return ("Password is required");
    } else if (passNonNullValue.length < 6) {
      return ("Password Must be more than 6 characters");
    }
    return null;
    // else if(!regex.hasMatch(passNonNullValue)){
    //   return ("Password should contain upper,lower,digit and Special character ");
    // }
  };

  void loginCalling() {

    if (emailAddressController.text.trim().isNotEmpty && passwordController.text.trim().isNotEmpty ) {
      isLoading = false;
      try {
        isLoading = true;
      } catch (e) {
        isLoading = true;
        Get.snackbar("An error acquired", e.toString());
      }
    } else {
      isLoading = false;
      Get.snackbar("please", 'Enter All field');
    }

    isLoading = false;

    Get.toNamed(Routes.ForgotPassword);


  }

}
