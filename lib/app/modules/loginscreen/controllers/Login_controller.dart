import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  TextEditingController EmailAddressController = TextEditingController();
  TextEditingController MobileNumberController = TextEditingController();
  TextEditingController FirstNameController = TextEditingController();
  TextEditingController LastNameController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();


  bool passwordVisible = false;
  bool ConFormPasswordVisible = false;
  bool checkboxvalue = false;

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

  FormFieldValidator<String>? FirstNamevalidator = (String? value) {
    var nonNullValue = value ?? '';
    if (nonNullValue.isEmpty) {
      return ("First Name is required");
    } else
      return null;
  };
  FormFieldValidator<String>? LastNamevalidator = (String? value) {
    var nonNullValue = value ?? '';
    if (nonNullValue.isEmpty) {
      return ("Last Name is required");
    } else
      return null;
  };
  FormFieldValidator<String>? Emailvalidator = (String? value) {
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
  FormFieldValidator<String>? Mobillidator = (String? value) {
    if (value!.length < 10) {
      return "Enter at least 10 number";
    } else
      return null;
  };
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

}
