import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSnackbar {
  static void showError(String errorMessage) {
    Get.snackbar(
      "Error",
      errorMessage,
      colorText: Colors.white,
      backgroundColor: Colors.red.shade300,
      margin: const EdgeInsets.all(10),
      borderRadius: 8,
      duration: const Duration(seconds: 3),
    );
  }

  static void showSuccess(String successMessage) {
    Get.snackbar(
      "Success",
      successMessage,
      colorText: Colors.white,
      backgroundColor: Colors.green,
      margin: const EdgeInsets.all(10),
      borderRadius: 8,
      duration: const Duration(seconds: 3),
    );
  }
}
