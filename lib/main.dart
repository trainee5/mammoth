import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import 'app/color/ApkColors.dart';
import 'app/routes/app_pages.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor:  ApkColors.primaryColor,
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.dark,
    //systemNavigationBarIconBrightness: Brightness.dark));
  ));
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mammoth",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
