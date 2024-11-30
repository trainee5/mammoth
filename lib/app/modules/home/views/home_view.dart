import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../CommonFile/CommonWidget.dart';
import '../../../color/ApkColors.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx((){
      controller.count.value;
      return Scaffold(
        backgroundColor: ApkColors.backgroundColor,
        key: controller.scaffoldKey,
        extendBody: true,
        drawer: Drawer(
            backgroundColor: ApkColors.backgroundColor,

            child: Stack(
              children: [
                Image.asset('assets/images/elispe.png'),
                SizedBox(
                  height: Get.height*0.2,
                  child: Row(
                    children: [
                      SizedBox(
                        width: Get.width*0.01,
                      ),
                      Container(
                        child: GestureDetector(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.asset(
                                'assets/images/google.png',
                                height: Get.height*0.05,
                                width: Get.width*0.05,
                              )),
                        ),
                      ),
                      SizedBox(
                        width: Get.width*0.01,
                      ),
                      SizedBox(
                        height: Get.height*0.07,

                        //color: Colors.cyan,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome...",
                              style: TextStyle(
                                  fontFamily: 'Nunito-Bold',
                                  fontWeight: FontWeight.bold,
                                  color: ApkColors.backgroundColor,
                                  fontSize: 16),
                            ),
                            Text(
                              "to user..",
                              style: TextStyle(
                                  fontFamily: 'Nunito-Bold',
                                  fontWeight: FontWeight.bold,
                                  color: ApkColors.backgroundColor,
                                  fontSize: 12),
                            )
                          ],
                        ),

                        // child:
                      ),
                    ],
                  ),
                ),
                Container(
                  // color: Colors.cyan,
                  margin: const EdgeInsets.only(top: 300),
                  child: ListView(
                    // Important: Remove any padding from the ListView.
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      ListTile(
                        leading:
                        const Icon(Icons.home, color: ApkColors.orangeColor),
                        title: const Text(
                          'Home',
                          style: TextStyle(
                              fontFamily: 'Nunito-Bold',
                              fontWeight: FontWeight.bold,
                              color: ApkColors.orangeColor,
                              fontSize: 12),
                        ),
                        onTap: () {
                          // Update the state of the app
                          // ...
                          // Then close the drawer
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.picture_as_pdf,
                            color: ApkColors.orangeColor),
                        title: const Text(
                          'Book Pdf',
                          style: TextStyle(
                              fontFamily: 'Nunito-Bold',
                              fontWeight: FontWeight.bold,
                              color: ApkColors.orangeColor,
                              fontSize: 12),
                        ),
                        onTap: () {
                          // Update the state of the app
                          // ...
                          // Then close the drawer
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading:
                        const Icon(Icons.quiz, color: ApkColors.orangeColor),
                        title: const Text(
                          'Quize Test',
                          style: TextStyle(
                              fontFamily: 'Nunito-Bold',
                              fontWeight: FontWeight.bold,
                              color: ApkColors.orangeColor,
                              fontSize: 12),
                        ),
                        onTap: () {
                          // Update the state of the app
                          // ...
                          // Then close the drawer
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.settings,
                            color: ApkColors.orangeColor),
                        title: const Text(
                          'Settings',
                          style: TextStyle(
                              fontFamily: 'Nunito-Bold',
                              fontWeight: FontWeight.bold,
                              color: ApkColors.orangeColor,
                              fontSize: 12),
                        ),
                        onTap: () {
                          // Update the state of the app
                          // ...
                          // Then close the drawer
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.health_and_safety_rounded,
                            color: ApkColors.orangeColor),
                        title: const Text(
                          'Privacy and security',
                          style: TextStyle(
                              fontFamily: 'Nunito-Bold',
                              fontWeight: FontWeight.bold,
                              color: ApkColors.orangeColor,
                              fontSize: 12),
                        ),
                        onTap: () {
                          // Update the state of the app
                          // ...
                      //    controller.dataupload();
                          // Then close the drawer
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            )),
        appBar: PreferredSize(
          //preferredSize:  Size.fromHeight(80.0)
          preferredSize: const Size.fromHeight(230),
          child: Container(
            decoration: BoxDecoration(
              color: ApkColors.primaryColor
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                 SizedBox(
                  height: 70.px,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: SvgPicture.asset(
                    "assets/svgs/menusvg.svg",
                    height:  32.px,
                    width:  32.px,
                    color: ApkColors.backgroundColor,
                  ),
                        onPressed: () {
                          controller.openDrawer();
                        },
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: ApkColors.backgroundColor,
                            fontSize: 26.px),
                      ),
                       const Spacer(),
                      // Container(
                      //   //margin: EdgeInsets.only(left: 50),
                      //     height: 30,
                      //     width: 30,
                      //     decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(15),
                      //       color: ApkColors.primaryColor,
                      //       border: Border.all(
                      //           color: ApkColors.orangeColor, width: 0.5),
                      //       //color: Colors.cyan,
                      //     ),
                      //     padding: EdgeInsets.all(0.5),
                      //     alignment: Alignment.center,
                      //     child: const Icon(Icons.account_circle,
                      //         color: ApkColors.orangeColor)),
                      IconButton(
                        icon: SvgPicture.asset(
                          "assets/svgs/notification-03.svg",
                          height:  32.px,
                          width:  32.px,
                          color: ApkColors.backgroundColor,
                        ),
                        onPressed: () {
                          controller.openDrawer();
                        },
                      ),
                      IconButton(
                        icon: SvgPicture.asset(
                          "assets/svgs/bookmark-02.svg",
                          height:  32.px,
                          width:  32.px,
                          color: ApkColors.backgroundColor,
                        ),
                        onPressed: () {
                          controller.openDrawer();
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.px,
                ),
                CommonWidget.searchBar(
                  height: 64.px,

                    onPressed: () {
                      Get.offNamed(Routes.ForgotPassword);
                    },
                    fillColor: ApkColors.backgroundColor),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24.px),
                child: Column(
                  children: [
                    SizedBox(
                      height: 34.px,
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                        "Select by Category",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: ApkColors.primaryColor,
                            fontSize: 24.px),
                      ),
                    ),
                    SizedBox(
                      height: 24.px,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 160.px,
                          alignment: Alignment.center,
                           padding: EdgeInsets.only(bottom: 18.px,left: 15.px,right: 15.px),

                          decoration: BoxDecoration(
                            color: ApkColors.orangeColor,
                            borderRadius: BorderRadius.circular(12.px),

                          ),
                          child: Column(
                            children: [

                              SizedBox(
                                height: 18.px,
                              ),
                              SizedBox(
                                height: 48.px,
                                width: 48.px,
                                child: SvgPicture.asset(
                                  "assets/svgs/doctorssvg.svg",
                                  height:  32.px,
                                  width:  32.px,
                                  //color: ApkColors.backgroundColor,
                                ),

                              ),
                              SizedBox(
                                height: 16.px,
                              ),
                              Text(
                                "Doctors",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    color: ApkColors.backgroundColor,
                                    fontSize: 20.px),
                              ),
                              SizedBox(
                                height: 8.px,
                              ),
                              Text(
                                "More than 100 jobs",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    color: ApkColors.backgroundColor980p,
                                    fontSize: 15.px),
                              ),


                            ],
                          ),
                        ),
                        SizedBox(width: 12.px),
                        Container(
                          height: 160.px,
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(bottom: 18.px,left: 15.px,right: 15.px),
                          decoration: BoxDecoration(
                            color: ApkColors.textEditColor,
                            borderRadius: BorderRadius.circular(12.px),

                          ),
                          child: Column(
                            children: [

                              SizedBox(
                                height: 18.px,
                              ),
                              SizedBox(
                                height: 48.px,
                                width: 48.px,
                                child: SvgPicture.asset(
                                  "assets/svgs/assistantsvg.svg",
                                  height:  32.px,
                                  width:  32.px,
                                  //color: ApkColors.backgroundColor,
                                ),

                              ),
                              SizedBox(
                                height: 16.px,
                              ),
                              Text(
                                "Doctors",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    color: ApkColors.primaryColor,
                                    fontSize: 20.px),
                              ),
                              SizedBox(
                                height: 8.px,
                              ),
                              Text(
                                "More than 100 jobs",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    color: ApkColors.primaryColor80p,
                                    fontSize: 15.px),
                              ),


                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 27.px,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 160.px,
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(bottom: 18.px,left: 15.px,right: 15.px),
                          decoration: BoxDecoration(
                            color: ApkColors.textEditColor,
                            borderRadius: BorderRadius.circular(12.px),

                          ),
                          child: Column(
                            children: [

                              SizedBox(
                                height: 18.px,
                              ),
                              SizedBox(
                                height: 48.px,
                                width: 48.px,
                                child: SvgPicture.asset(
                                  "assets/svgs/assistantsvg.svg",
                                  height:  32.px,
                                  width:  32.px,
                                  //color: ApkColors.backgroundColor,
                                ),

                              ),
                              SizedBox(
                                height: 16.px,
                              ),
                              Text(
                                "Doctors",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    color: ApkColors.primaryColor,
                                    fontSize: 20.px),
                              ),
                              SizedBox(
                                height: 8.px,
                              ),
                              Text(
                                "More than 100 jobs",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    color: ApkColors.primaryColor80p,
                                    fontSize: 15.px),
                              ),


                            ],
                          ),
                        ),
                        SizedBox(width: 12.px),
                        Container(
                          height: 160.px,
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(bottom: 18.px,left: 15.px,right: 15.px),
                          decoration: BoxDecoration(
                            color: ApkColors.textEditColor,
                            borderRadius: BorderRadius.circular(12.px),

                          ),
                          child: Column(
                            children: [

                              SizedBox(
                                height: 18.px,
                              ),
                              SizedBox(
                                height: 48.px,
                                width: 48.px,
                                child: SvgPicture.asset(
                                  "assets/svgs/assistantsvg.svg",
                                  height:  32.px,
                                  width:  32.px,
                                  //color: ApkColors.backgroundColor,
                                ),

                              ),
                              SizedBox(
                                height: 16.px,
                              ),
                              Text(
                                "Doctors",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    color: ApkColors.primaryColor,
                                    fontSize: 20.px),
                              ),
                              SizedBox(
                                height: 8.px,
                              ),
                              Text(
                                "More than 100 jobs",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    color: ApkColors.primaryColor80p,
                                    fontSize: 15.px),
                              ),


                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24.px,
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w500,
                          color: ApkColors.primaryColor,
                          fontSize: 18.px),
                    ),
                    SizedBox(
                      height: 40.px,
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                        "Jobs by Preference",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: ApkColors.primaryColor,
                            fontSize: 24.px),
                      ),
                    ),
                    SizedBox(
                      height: 24.px,
                    ),


                  ],
                ),
              ),
              Container(
                height: 380.px,
                width: double.infinity,
                color: ApkColors.orangeColor12p,
              ),
            ],

          ),
        ),
      );



    });




    
  }
}
