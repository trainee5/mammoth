import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mammoth/app/routes/app_pages.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../models/sample_model.dart';
import '../../../CommonFile/CommonWidget.dart';
import '../../../Utils/StringConstants.dart';
import '../../../Utils/icon_path.dart';
import '../../../color/ApkColors.dart';
import '../controllers/search_screen_controller.dart';

class SearchScreenView extends GetView<SearchScreenController> {
  const SearchScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Obx((){
      controller.count.value;
      return Scaffold(
          backgroundColor: ApkColors.backgroundColor,
          key: controller.scaffoldKey,
          extendBody: true,
          drawer: Drawer(
              backgroundColor: ApkColors.primaryColor,
              child: Column(
                children: [
                  SizedBox(
                    height: 48.px,
                  ),
                  SizedBox(
                    height: 64.px,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 24.px,
                        ),
                        Container(
                          height: 64.px,
                          width: 64.px,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32.px),
                            color: ApkColors.backgroundColor,
                          ),
                          child: GestureDetector(
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  'assets/images/googlepng.png',
                                  height: 64.px,
                                  width: 64.px,
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 18.px,
                        ),
                        SizedBox(
                          height: 64.px,

                          //color: Colors.cyan,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Emma Phillips",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    color: ApkColors.backgroundColor,
                                    fontSize: 24.px),
                              ),
                              Text(
                                "Graphic Designer",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    color: ApkColors.backgroundColor,
                                    fontSize: 12.px),
                              )
                            ],
                          ),

                          // child:
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40.px,
                  ),
                  Divider(
                    height: 2.px,
                    color: ApkColors.backgroundColor60p,
                  ),
                  SizedBox(
                    height: 30.px,
                  ),
                  SizedBox(
                    height: 270.px,
                    child: ListView(
                      // Important: Remove any padding from the ListView.
                      padding: EdgeInsets.zero,
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            StringConstants.privacyPolicy,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: ApkColors.backgroundColor,
                                fontSize: 22.px),
                          ),
                          onTap: () {
                            Get.toNamed(Routes.PRIVACY_POLICY_SCREEN);
                          },
                        ),
                        ListTile(
                          title: Text(
                            StringConstants.termConditions,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: ApkColors.backgroundColor,
                                fontSize: 22.px),
                          ),
                          onTap: () {
                            Get.toNamed(Routes.TERM_CONDITION_SCREEN);
                          },
                        ),
                        ListTile(
                          title: Text(
                            StringConstants.fAQ,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: ApkColors.backgroundColor,
                                fontSize: 22.px),
                          ),
                          onTap: () {
                            Get.toNamed(Routes.FAQ_SCREEN);
                          },
                        ),
                        ListTile(
                          title: Text(
                            StringConstants.newsletter,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: ApkColors.backgroundColor,
                                fontSize: 22.px),
                          ),
                          onTap: () {
                            Get.toNamed(Routes.NEWSLATTER_SCREEN);
                          },
                        ),
                        ListTile(
                          title: Text(
                            StringConstants.logOut,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: ApkColors.backgroundColor,
                                fontSize: 22.px),
                          ),
                          onTap: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          appBar: PreferredSize(
            //preferredSize:  Size.fromHeight(80.0)
            preferredSize:  Size.fromHeight(230.px),
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
                            IconPath.menuIcon,
                            height: 32.px,
                            width: 32.px,
                          ),
                          onPressed: () {
                            controller.openDrawer();
                          },
                        ),
                        Text(
                          StringConstants.home,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              color: ApkColors.backgroundColor,
                              fontSize: 26.px),
                        ),
                        const Spacer(),
                        IconButton(
                          icon: SvgPicture.asset(
                            IconPath.notificationIcon,
                            height:  32.px,
                            width:  32.px,
                          ),
                          onPressed: () {
                            Get.toNamed(Routes.NOTIFICATION_SCREEN);
                          },
                        ),
                        IconButton(
                          icon: SvgPicture.asset(
                            IconPath.bookmarkIcon,
                            height:  32.px,
                            width:  32.px,
                          ),
                          onPressed: () {
                            Get.toNamed(Routes.APPLICATION_STATUS_SCREEN);
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
                    autofocus: true,
                    textfontsize: 20.px,
                    searchIcon: Padding(
                      padding: EdgeInsets.only(right: 16.px, left: 8.px),
                      child: SvgPicture.asset(
                        IconPath.searchIcon,
                        height: 32.px,
                        width: 32.px,
                        color: ApkColors.primaryColor,
                      ),
                    ),
                    fillColor: controller.searchViewVisible
                        ? ApkColors.backgroundColor
                        : ApkColors.primaryColor,
                    textColor: controller.searchViewVisible
                        ? ApkColors.primaryColor
                        : ApkColors.backgroundColor,
                    iconColor: controller.searchViewVisible
                        ? ApkColors.primaryColor
                        : ApkColors.backgroundColor90p,
                    onPressedEditBox: () {
                      // controller.increment();
                      // controller.searchViewVisible =
                      // true;
                      /// Get.offNamed(Routes.ForgotPassword);
                    },
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 24.px,
                  ),
                ],
              ),
            ),
          ),
          body: Obx(() {
            controller.count.value;
            return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.px),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 24.px,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "24 jobs available",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              color: ApkColors.primaryColor,
                              fontSize: 24.px),
                        ),
                      ),
                      SizedBox(
                        height: 34.px,
                      ),
                      ListView.builder(
                         scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: SampleModel.cateItem.length,
                        //padding: EdgeInsets.symmetric(vertical: 34.px),
                        itemBuilder: (context, index) {
                         // final item = SampleModel.cateItem[index];
                          return Padding(
                            padding: EdgeInsets.only(bottom: 18.px),
                            child: GestureDetector(
                              onTap: (){
                                Get.toNamed(Routes.JOB_TAB_SCREEN);
                              },
                              child: Container(
                                height: 250.px,
                                alignment: Alignment.center,

                                decoration: BoxDecoration(
                                    color: (index == 0) ? ApkColors.orangeColor :  ApkColors.backgroundColor,
                                    borderRadius:
                                    BorderRadius.circular(18.px),
                                    border: Border.all(
                                        width: 1.px,
                                        color: ApkColors.orangeColor)),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 18.px,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 24.px,
                                        ),
                                        Container(
                                          height: 48.px,
                                          width: 48.px,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(
                                                10.px),
                                            color: (index == 0) ? Colors.deepPurpleAccent :  ApkColors.orangeColor,
                                          ),
                                          child: GestureDetector(
                                            child: ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(
                                                    25),
                                                child: Image.asset(
                                                  'assets/images/googlepng.png',
                                                  height: 22.px,
                                                  width: 22.px,
                                                )),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8.px,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Emma Phillips",
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontWeight:
                                                  FontWeight.w500,
                                                  color: (index == 0) ? ApkColors.backgroundColor :  ApkColors.primaryColor,
                                                  fontSize: 20.px),
                                            ),
                                            Text(
                                              "Graphic Designer",
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontWeight:
                                                  FontWeight.w500,
                                                  color: (index == 0) ? ApkColors.backgroundColor90p :  ApkColors.primaryColor70p,
                                                  fontSize: 16.px),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 23.px,
                                    ),
                                    Row(

                                      children: [
                                        SizedBox(
                                          width: 27.px,
                                        ),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            height: 38.px,
                                            alignment: Alignment.center,
                                            // margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 24.px),
                                            decoration: BoxDecoration(
                                                color:
                                                (index == 0) ? ApkColors.backgroundColor :  ApkColors.textEditColor,
                                                borderRadius:
                                                BorderRadius.all(
                                                    Radius.circular(
                                                        6.px))),
                                            child: Row(
                                              children: <Widget>[
                                                SizedBox(
                                                  width: 12.px,
                                                ),
                                                SizedBox(
                                                  child: SvgPicture.asset(
                                                    IconPath.locationIcon,
                                                    height: 22.px,
                                                    width: 22.px,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 8.px,
                                                ),
                                                Text(
                                                  "Full-time",
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontWeight: FontWeight.w500,
                                                      color: (index == 0) ? ApkColors.primaryColor :  ApkColors.primaryColor80p,
                                                      fontSize: 15.px),
                                                ),
                                                SizedBox(
                                                  width: 12.px,
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8.px,
                                        ),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            height: 38.px,
                                            alignment: Alignment.center,
                                            // margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 24.px),
                                            decoration: BoxDecoration(
                                                color:
                                                (index == 0) ? ApkColors.backgroundColor :  ApkColors.textEditColor,
                                                borderRadius:
                                                BorderRadius.all(
                                                    Radius.circular(
                                                        6.px))),
                                            child: Row(
                                              children: <Widget>[
                                                SizedBox(
                                                  width: 12.px,
                                                ),
                                                SizedBox(
                                                  child: SvgPicture.asset(
                                                    IconPath.locationIcon,
                                                    height: 22.px,
                                                    width: 22.px,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 8.px,
                                                ),
                                                Text(
                                                  "\$40.00 /month",
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontWeight: FontWeight.w500,
                                                      color: (index == 0) ? ApkColors.primaryColor :  ApkColors.primaryColor80p,
                                                      fontSize: 15.px),
                                                ),
                                                SizedBox(
                                                  width: 8.px,
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8.px,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8.px,
                                    ),
                                    Row(

                                      children: [
                                        SizedBox(
                                          width: 27.px,
                                        ),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            height: 38.px,
                                            alignment: Alignment.center,
                                            // margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 24.px),
                                            decoration: BoxDecoration(
                                                color:
                                                (index == 0) ? ApkColors.backgroundColor :  ApkColors.textEditColor,
                                                borderRadius:
                                                BorderRadius.all(
                                                    Radius.circular(
                                                        6.px))),
                                            child: Row(
                                              children: <Widget>[
                                                SizedBox(
                                                  width: 12.px,
                                                ),
                                                SizedBox(
                                                  child: SvgPicture.asset(
                                                    IconPath.locationIcon,
                                                    height: 22.px,
                                                    width: 22.px,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 8.px,
                                                ),
                                                Text(
                                                  "Full-time",
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontWeight: FontWeight.w500,
                                                      color: (index == 0) ? ApkColors.primaryColor :  ApkColors.primaryColor80p,
                                                      fontSize: 15.px),
                                                ),
                                                SizedBox(
                                                  width: 12.px,
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8.px,
                                        ),

                                      ],
                                    ),
                                    SizedBox(
                                      height: 24.px,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: 24.px,
                                        ),
                                        SizedBox(
                                          child: SvgPicture.asset(
                                            IconPath.locationIcon,
                                            height: 22.px,
                                            width: 22.px,
                                            color:  (index == 0) ? ApkColors.backgroundColor :  ApkColors.primaryColor80p,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8.px,
                                        ),
                                        Text(
                                          "Indore, India",
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              color: (index == 0) ? ApkColors.backgroundColor :  ApkColors.primaryColor80p,
                                              fontSize: 16.px),
                                        ),
                                        Spacer(),
                                        SizedBox(
                                          child: SvgPicture.asset(
                                            IconPath.time,
                                            height: 22.px,
                                            width: 22.px,
                                            color: (index == 0) ? ApkColors.backgroundColor :  ApkColors.primaryColor80p,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8.px,
                                        ),
                                        Text(
                                          "3 days left",
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              color: (index == 0) ? ApkColors.backgroundColor :  ApkColors.primaryColor80p,
                                              fontSize: 16.px),
                                        ),
                                        SizedBox(
                                          width: 24.px,
                                        ),

                                      ],
                                    ),
                                    SizedBox(
                                      height: 16.px,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 50.px,
                      )

                    ],
                  ),
                ),
              );
          })





      );



    });
  }
}
