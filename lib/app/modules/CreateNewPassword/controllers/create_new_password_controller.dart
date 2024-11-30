import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CreateNewPasswordController extends GetxController {
  //TODO: Implement CreateNewPasswordController

  final count = 0.obs;

  TextEditingController PasswordController = TextEditingController();
  TextEditingController confermPasswordController = TextEditingController();

  bool passwordVisible = false;
  bool emailTextValueCheck = false;
  bool passwordTextValueCheck = false;
  bool conformPasswordVisible = false;
  bool checkboxvalue = false;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  FormFieldValidator<String>? Passwordvalidator = (String? value) {
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
}
