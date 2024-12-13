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

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;


    return  Obx((){
      controller.count.value;
      return Scaffold(
          backgroundColor: ApkColors.backgroundColor,
          key: controller.scaffoldKey,
          extendBody: true,
          drawer: Drawer(
            backgroundColor: ApkColors.primaryColor,
            width: screenHeight * 0.4035,
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.0516,
                ),
                SizedBox(
                  height: screenHeight * 0.069,
                  child: Row(
                    children: [
                      SizedBox(
                        width: screenHeight * 0.0258,
                      ),
                      Container(
                        height: screenHeight * 0.069,
                        width: screenHeight * 0.069,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(screenHeight * 0.0344),
                          color: ApkColors.backgroundColor,
                        ),
                        child: GestureDetector(
                          onTap: (){
                            Get.toNamed(Routes.PROFILE_SCREEN);
                          },
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(screenHeight * 0.0269),
                              child: Image.asset(
                                IconPath.googleImg,
                                height: screenHeight * 0.0258,
                                width: screenHeight * 0.0258,
                              )),
                        ),
                      ),
                      SizedBox(
                          width: screenHeight * 0.0194
                      ),
                      SizedBox(
                        height: screenHeight * 0.069,

                        //color: Colors.cyan,
                        child: GestureDetector(
                          onTap: (){
                            Get.toNamed(Routes.PROFILE_SCREEN);
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Emma Phillips",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    color: ApkColors.backgroundColor,
                                    fontSize: screenHeight * 0.0208),
                              ),
                              Text(
                                "Graphic Designer",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    color: ApkColors.backgroundColor,
                                    fontSize: screenHeight * 0.0129),
                              )
                            ],
                          ),
                        ),

                        // child:
                      ),
                      SizedBox(
                          width: screenHeight * 0.0400
                      ),

                      IconButton(onPressed:
                          (){
                        controller.closeDrawer();
                      },
                          icon: SvgPicture.asset(
                            IconPath.cancelSvg,
                            height: screenHeight * 0.0258,
                            width: screenHeight * 0.0258,
                          )),
                      SizedBox(
                          width: screenHeight * 0.010
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.043,
                ),
                Divider(
                  height: 2.px,
                  color: ApkColors.backgroundColor60p,
                ),
                SizedBox(
                  height: screenHeight * 0.043,
                ),
                ListView(
                  shrinkWrap: true,
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
                            fontSize: screenHeight * 0.0258),
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
                            fontSize: screenHeight * 0.0258),
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
                            fontSize: screenHeight * 0.0258),
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
                            fontSize: screenHeight * 0.0258),
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
                            fontSize: screenHeight * 0.0258),
                      ),
                      onTap: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ],
            ),
          ),
          appBar: PreferredSize(
            //preferredSize:  Size.fromHeight(80.0)
            preferredSize: Size.fromHeight(screenHeight * 0.2468),
            child: Container(
              decoration: BoxDecoration(
                  color: ApkColors.primaryColor
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: screenHeight * 0.0752,
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: screenHeight * 0.0258),
                    child: Row(
                      children: <Widget>[
                        IconButton(
                          icon: SvgPicture.asset(
                            IconPath.menuIcon,
                            height: screenHeight * 0.0344,
                            width:  screenHeight * 0.0344,
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
                            fontSize: screenHeight * 0.028,),
                        ),
                        const Spacer(),
                        IconButton(
                          icon: SvgPicture.asset(
                            IconPath.notificationIcon,
                            height: screenHeight * 0.0344,
                            width:  screenHeight * 0.0344,
                          ),
                          onPressed: () {
                            Get.toNamed(Routes.NOTIFICATION_SCREEN);
                          },
                        ),
                        IconButton(
                          icon: SvgPicture.asset(
                            IconPath.bookmarkIcon,
                            height: screenHeight * 0.0344,
                            width:  screenHeight * 0.0344,
                          ),
                          onPressed: () {
                            Get.toNamed(Routes.APPLICATION_STATUS_SCREEN);
                          },
                        ),
                      ],
                    ),

                  ),
                  SizedBox(
                    height: screenHeight * 0.0324,
                  ),
                  CommonWidget.searchBar(
                    height: screenHeight * 0.069,
                    textfontsize: screenHeight * 0.0215,
                    autofocus: true,
                    searchIcon: Padding(
                      padding: EdgeInsets.only(right: screenHeight * 0.0172, left: screenHeight * 0.0086),
                      child: SvgPicture.asset(
                        IconPath.searchIcon,
                        height: screenHeight * 0.0344,
                        width:screenHeight * 0.0344,
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
                    height: screenHeight * 0.0258,
                  ),
                ],
              ),
            ),
          ),
          body: Obx(() {
            controller.count.value;
            return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.0258),
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenHeight * 0.025,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "24 jobs available",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: ApkColors.primaryColor,
                              fontSize: screenHeight * 0.0215),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.0344,
                      ),
                      ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: SampleModel.cateItem.length,
                        itemBuilder: (context, index) {
                          // final item = SampleModel.cateItem[index];
                          return Padding(
                            padding: EdgeInsets.only(bottom: screenHeight * 0.0194),
                            child: GestureDetector(
                              onTap: (){
                                Get.toNamed(Routes.JOB_TAB_SCREEN);
                              },
                              child: Container(
                                height: screenHeight * 0.2737,
                                alignment: Alignment.center,

                                decoration: BoxDecoration(
                                    color: (index == 0) ? ApkColors.orangeColor :  ApkColors.backgroundColor,
                                    borderRadius:
                                    BorderRadius.circular(screenHeight * 0.0194),
                                    border: Border.all(
                                        width: 1.px,
                                        color: ApkColors.orangeColor)),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: screenHeight * 0.0194,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: screenHeight * 0.0258,
                                        ),
                                        Container(
                                          height: screenHeight * 0.0516,
                                          width: screenHeight * 0.0516,
                                          padding: EdgeInsets.all(screenHeight * 0.005),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(screenHeight * 0.007),
                                            color:(index == 0) ? ApkColors.backgroundColor :  ApkColors.orangeColor,
                                          ),
                                          child: GestureDetector(
                                            child: ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(
                                                    screenHeight * 0.0258),
                                                child: Image.asset(
                                                  IconPath.blackBox,
                                                  height: screenHeight * 0.0237,
                                                  width: screenHeight * 0.0237,
                                                )),
                                          ),
                                        ),
                                        SizedBox(
                                          width: screenHeight * 0.0086,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              index == 0 ? "UI/UX Designer" : "Graphic Designer",
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontWeight:
                                                  FontWeight.w500,
                                                  color: (index == 0) ? ApkColors.backgroundColor :  ApkColors.primaryColor,
                                                  fontSize: screenHeight * 0.0215),
                                            ),
                                            Text(
                                              "1st mammuth",
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontWeight:
                                                  FontWeight.w500,
                                                  color: (index == 0) ? ApkColors.backgroundColor90p :  ApkColors.primaryColor70p,
                                                  fontSize: screenHeight * 0.0172),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.025,
                                    ),
                                    Row(

                                      children: [
                                        SizedBox(
                                          width: screenHeight * 0.0258,
                                        ),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            height: screenHeight * 0.041,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color:
                                                (index == 0) ? ApkColors.backgroundColor :  ApkColors.textEditColor,
                                                borderRadius:
                                                BorderRadius.all(
                                                    Radius.circular(
                                                        screenHeight * 0.0066))),
                                            child: Row(
                                              children: <Widget>[
                                                SizedBox(
                                                  width: screenHeight * 0.0129,
                                                ),
                                                SizedBox(
                                                  child: SvgPicture.asset(
                                                    IconPath.locationIcon,
                                                    height: screenHeight * 0.024,
                                                    width: screenHeight * 0.02,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: screenHeight * 0.0086,
                                                ),
                                                Text(
                                                  "Full-time",
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontWeight: FontWeight.w500,
                                                      color: (index == 0) ? ApkColors.primaryColor :  ApkColors.primaryColor80p,
                                                      fontSize: screenHeight * 0.0172),
                                                ),
                                                SizedBox(
                                                  width: screenHeight * 0.0129,
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: screenHeight * 0.0086,
                                        ),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            height: screenHeight * 0.041,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color:
                                                (index == 0) ? ApkColors.backgroundColor :  ApkColors.textEditColor,
                                                borderRadius:
                                                BorderRadius.all(
                                                    Radius.circular(
                                                        screenHeight * 0.0066))),
                                            child: Row(
                                              children: <Widget>[
                                                SizedBox(
                                                  width: screenHeight * 0.0129,
                                                ),
                                                SizedBox(
                                                  child: SvgPicture.asset(
                                                    IconPath.walletIcon,
                                                    height: screenHeight * 0.024,
                                                    width: screenHeight * 0.02,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: screenHeight * 0.0086,
                                                ),
                                                Text(
                                                  "\$40.00 /month",
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontWeight: FontWeight.w500,
                                                      color: (index == 0) ? ApkColors.primaryColor :  ApkColors.primaryColor80p,
                                                      fontSize: screenHeight * 0.0172),
                                                ),
                                                SizedBox(
                                                  width: screenHeight * 0.0129,
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: screenHeight * 0.0086,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.0086,
                                    ),
                                    Row(

                                      children: [
                                        SizedBox(
                                          width: screenHeight * 0.0258,
                                        ),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            height: screenHeight * 0.041,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color:
                                                (index == 0) ? ApkColors.backgroundColor :  ApkColors.textEditColor,
                                                borderRadius:
                                                BorderRadius.all(
                                                    Radius.circular(
                                                        screenHeight * 0.0066))),
                                            child: Row(
                                              children: <Widget>[
                                                SizedBox(
                                                  width: screenHeight * 0.0129,
                                                ),
                                                SizedBox(
                                                  child: SvgPicture.asset(
                                                    IconPath.briefcaseIcon,
                                                    height: screenHeight * 0.024,
                                                    width: screenHeight * 0.02,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: screenHeight * 0.0086,
                                                ),
                                                Text(
                                                  "Work from home",
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontWeight: FontWeight.w500,
                                                      color: (index == 0) ? ApkColors.primaryColor :  ApkColors.primaryColor80p,
                                                      fontSize: screenHeight * 0.0172),
                                                ),
                                                SizedBox(
                                                  width: screenHeight * 0.0129,
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: screenHeight * 0.0086,
                                        ),

                                      ],
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.0258,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: screenHeight * 0.0258,
                                        ),
                                        SizedBox(
                                          child: SvgPicture.asset(
                                            IconPath.locationIcon,
                                            height: screenHeight * 0.0237,
                                            width: screenHeight * 0.0237,
                                            color:  (index == 0) ? ApkColors.backgroundColor :  ApkColors.primaryColor80p,
                                          ),
                                        ),
                                        SizedBox(
                                          width: screenHeight * 0.0086,
                                        ),
                                        Text(
                                          "Indore, India",
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              color: (index == 0) ? ApkColors.backgroundColor :  ApkColors.primaryColor80p,
                                              fontSize: screenHeight * 0.0172),
                                        ),
                                        Spacer(),
                                        SizedBox(
                                          child: SvgPicture.asset(
                                            IconPath.time,
                                            height: screenHeight * 0.0237,
                                            width: screenHeight * 0.0237,
                                            color: (index == 0) ? ApkColors.backgroundColor :  ApkColors.primaryColor80p,
                                          ),
                                        ),
                                        SizedBox(
                                          width: screenHeight * 0.0086,
                                        ),
                                        Text(
                                          "3 days left",
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              color: (index == 0) ? ApkColors.backgroundColor :  ApkColors.primaryColor80p,
                                              fontSize: screenHeight * 0.0172),
                                        ),
                                        SizedBox(
                                          width: screenHeight * 0.0258,
                                        ),

                                      ],
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.0172,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: screenHeight * 0.0537,
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
