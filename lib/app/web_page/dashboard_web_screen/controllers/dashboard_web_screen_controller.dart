

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../models/profile.dart';
import '../../../../models/recent_file.dart';

class DashboardWebScreenController extends GetxController {
  //TODO: Implement DashboardWebScreenController

  final count = 0.obs;
  String getMember = "getMember";

  final scaffoldKey = GlobalKey<ScaffoldState>();

  var intGlobal = 0;
  RecentFile? recentFile;

  bool onClickViewAll = true;

  bool onClickJob = false;

  void openDrawer() {
    if (scaffoldKey.currentState != null) {
      scaffoldKey.currentState!.openDrawer();
    }





    Profile getProfil() {
      return const Profile(
        photo: AssetImage(ImageRasterPath.googleImg),
        name: "Firgia",
        email: "flutterwithgia@gmail.com",
      );
    }

  }
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
  void increment() => count.value++;

  getProfil() {
   return Profile(
      photo: AssetImage(ImageRasterPath.googleImg),
      name: "Firgia",
      email: "flutterwithgia@gmail.com",
    );

  }


}

class ImageRasterPath {
  static const String googleImg = "assets/images/googlepng.png";
  static const String googleImg1 = "assets/images/googlepng.png";
  static const String googleImg11 = "assets/images/googlepng.png";
}
