import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class CreateAccountController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;

  TextEditingController emailAddressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();


  bool passwordVisible = false;
  bool checkBoxValue = false;
  bool passwordTextValueCheck = false;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

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


  FormFieldValidator<String>? passwordValidator = (String? value) {
    RegExp regex =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    var passNonNullValue = value ?? "";
    if (passNonNullValue.isEmpty) {
      return ("Password is required");
    } else if (passNonNullValue.length < 6) {
      return ("Password Must be more than 6 characters");
    }
    // else if(!regex.hasMatch(passNonNullValue)){
    //   return ("Password should contain upper,lower,digit and Special character ");
    // }
  };

  void createNewAccount() {


    if (emailAddressController.text.trim().isNotEmpty && passwordController.text.trim().isNotEmpty ) {
      //isLoading = false;
      try {
       // isLoading = true;
      } catch (e) {
       //isLoading = true;
        Get.snackbar("An error acquired", e.toString());
      }
    } else {
      //isLoading = false;
      Get.snackbar("please", 'Enter All field');
    }

    //isLoading = false;

    Get.toNamed(Routes.HOME);




  }
}
