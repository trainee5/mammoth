import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class CreateNewPasswordController extends GetxController {

  final count = 0.obs;

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();


  var formKey = GlobalKey<FormState>();

  bool passwordVisible = false;
  bool emailTextValueCheck = false;
  bool passwordTextValueCheck = false;
  bool conformPasswordVisible = false;
  bool checkBoxValue = false;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

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

  @override
  void onClose() {}



  void increment() => count.value++;

  void createNewPassword() {

    if (passwordController.text.trim().isNotEmpty && confirmPasswordController.text.trim().isNotEmpty ) {
      //isLoading = false;
      try {
       // isLoading = true;
      } catch (e) {
      //  isLoading = true;
        Get.snackbar("An error acquired", e.toString());
      }
    } else {
     // isLoading = false;
      Get.snackbar("please", 'Enter All field');
    }

   // isLoading = false;

    Get.toNamed(Routes.CreateAccount);



  }
}
