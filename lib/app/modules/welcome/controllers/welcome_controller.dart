import 'dart:async';

import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WelcomeController extends GetxController  with GetSingleTickerProviderStateMixin {
  //TODO: Implement HomeController

  final count = 0.obs;
  final animateCount = 0.obs;

  bool isLoading = false;
  bool completed = false;



  late AnimationController loginButtonAnimationController;
  late Animation<double> loginButtonSizeAnimation;


  @override
  void onInit() {

    loginButtonAnimationController= AnimationController(
        duration: Duration(milliseconds: 500),
        vsync: this
    );

    loginButtonSizeAnimation = Tween<double>(begin: 382.px, end: 60.px)
        .animate(loginButtonAnimationController)
      ..addListener(() {
        animatedBtnLoad();
      });
    playButtonAnimation();
   animatedBtnLoad();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    loginButtonAnimationController.dispose();
    super.onClose();
  }


  void playButtonAnimation() async {
    if (isLoading) {
      return; }
    isLoading = true;
    animatedBtnLoad();

    try {
      await loginButtonAnimationController.reverse();

      Timer(Duration(milliseconds: 100), () {

        loginButtonAnimationController.forward();
        completed = true;
        animatedBtnLoad();

      });
    }
    on TickerCanceled {}
  }





  void increment() => count.value++;
  void animatedBtnLoad() => animateCount.value++;
}
