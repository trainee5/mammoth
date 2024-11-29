import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mammoth/app/modules/welcome/controllers/welcome_controller.dart';



class ForgotPasswordView extends GetView<WelcomeController> {
  const ForgotPasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ForgotPasswordView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
