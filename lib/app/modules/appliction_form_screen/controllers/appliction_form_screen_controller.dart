import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ApplicationFormScreenController extends GetxController {
  //TODO: Implement ApplictionFormScreenController

  final count = 0.obs;


  TextEditingController emailAddressController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}



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

  FormFieldValidator<String>? firstNameValidator = (String? value) {
    var nonNullValue = value ?? '';
    if (nonNullValue.isEmpty) {
      return ("First Name is required");
    } else
      return null;
  };

  FormFieldValidator<String>? mobilValidator = (String? value) {
    if (value!.length < 10) {
      return "Enter at least 10 number";
    } else
      return null;
  };




  void increment() => count.value++;
}
