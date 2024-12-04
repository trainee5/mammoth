import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.ralewayTextTheme(),
        // colorScheme: const ColorScheme.dark(
        //   primary: ApkColors.primaryColor,
        //   onSurface: ApkColors.orangeColor,
        //   surface: ApkColors.backgroundColor,
        //   secondary: ApkColors.orangeColor,
        //   onSecondary : ApkColors.primaryColor,
        //   onPrimary: ApkColors.primaryColor,
        //   onPrimaryFixed:Colors.amber,
        //   primaryContainer: ApkColors.primaryColor,
        //   onPrimaryContainer:ApkColors.orangeColor,
        //   secondaryContainer:ApkColors.orangeColor,
        //   onSecondaryContainer: ApkColors.orangeColor,
        //   error: ApkColors.orangeColor,
        //   onError: ApkColors.orangeColor,
        // ),
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
