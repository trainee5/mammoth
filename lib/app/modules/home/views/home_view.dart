import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mammoth/app/Utils/StringConstants.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../../models/sample_model.dart';
import '../../../CommonFile/CommonWidget.dart';
import '../../../Utils/icon_path.dart';
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
          drawer: SafeArea(
            child: Drawer(
              backgroundColor: ApkColors.primaryColor,
              width: 350.px,
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
                            onTap: (){
                              Get.toNamed(Routes.PROFILE_SCREEN);
                            },
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.asset(
                                  IconPath.googleImg,
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
                          child: GestureDetector(
                            onTap: (){
                              Get.toNamed(Routes.PROFILE_SCREEN);
                            },
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
              ),
            ),
          ),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(230.px),
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
                            height: 32.px,
                            width:  32.px,
                        ),
                        onPressed: () {
                            Get.toNamed(Routes.NOTIFICATION_SCREEN);
                          },
                      ),
                      IconButton(
                        icon: SvgPicture.asset(
                            IconPath.bookmarkIcon,
                            height: 32.px,
                            width:  32.px,
                        ),
                        onPressed: () {
                            //controller.openDrawer();
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
                    textfontsize: 20.px,
                    readOnly: true,
                    searchIcon: Padding(
                      padding: EdgeInsets.only(right: 16.px, left: 8.px),
                      child: SvgPicture.asset(
                        IconPath.searchIcon,
                        height: 32.px,
                        width: 32.px,
                        color: ApkColors.backgroundColor60p,
                      ),
                    ),
                    fillColor: ApkColors.primaryColor,
                    textColor: ApkColors.backgroundColor,
                    iconColor: ApkColors.backgroundColor60p,
                    onPressedEditBox: () {
                      controller.increment();
                    controller.searchViewVisible =
                    true;
                    Get.toNamed(Routes.SEARCH_SCREEN);
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
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 24.px),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 34.px,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            StringConstants.selectByCategory,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: ApkColors.primaryColor,
                                fontSize: 24.px),
                          ),
                        ),
                        GridView.builder(
                          // scrollDirection: Axis.vertical,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: SampleModel.cateItem.length,
                          padding: EdgeInsets.symmetric(vertical: 24.px),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 27.px,
                            crossAxisSpacing: 12.px,
                            mainAxisExtent: 144.px,
                          ),

                          itemBuilder: (context, index) {
                                  final item = SampleModel.cateItem[index];
                                  return GestureDetector(
                                    child: Container(
                                      height: 144.px,
                                      alignment: Alignment.center,
                                      // padding: EdgeInsets.only(bottom: 18.px,left: 15.px,right: 15.px),

                                decoration: BoxDecoration(
                                  color: (index == 0)
                                      ? ApkColors.orangeColor
                                      : ApkColors.textEditColor,
                                  borderRadius:
                                      BorderRadius.circular(12.px),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 18.px,
                                    ),
                                    SizedBox(
                                      height: 48.px,
                                      width: 48.px,
                                      child: SvgPicture.asset(
                                        (index == 0) ? IconPath.doctorIcon : IconPath.assistantIcon,
                                        height: 32.px,
                                        width: 32.px,
                                        //color: ApkColors.backgroundColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.px,
                                    ),
                                    Text(
                                      item.name,
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          color: (index == 0)
                                              ? ApkColors.backgroundColor
                                              : ApkColors.primaryColor,
                                          fontSize: 20.px),
                                    ),
                                    SizedBox(
                                      height: 5.px,
                                    ),
                                    Text(
                                      item.title,
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          color:
                                          (index == 0)
                                              ? ApkColors.backgroundColor980p
                                              : ApkColors.primaryColor80p,
                                          fontSize: 15.px),
                                    ),
                                    SizedBox(
                                      height: 15.px,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                          Text(
                          StringConstants.viewAll,
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
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            StringConstants.jobsByPreference,
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
                    child: Column(
                      children: [
                        SizedBox(
                          height: 330.px,
                          child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: SampleModel.cateItem.length,
                            padding: EdgeInsets.symmetric(
                                vertical: 24.px, horizontal: 24.px),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              mainAxisSpacing: 16.px,
                              mainAxisExtent: 296.px,
                            ),
                            itemBuilder: (context, index) {
                              //final item = SampleModel.cateItem[index];
                              return GestureDetector(
                                child: Container(
                                  height: 160.px,
                                  alignment: Alignment.center,
                                  // padding: EdgeInsets.only(bottom: 18.px,left: 15.px,right: 15.px),

                                  decoration: BoxDecoration(
                                      color: ApkColors.backgroundColor,
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
                                              color: ApkColors.orangeColor,
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
                                                    color: ApkColors
                                                        .primaryColor,
                                                    fontSize: 20.px),
                                              ),
                                              Text(
                                                "Graphic Designer",
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight:
                                                        FontWeight.w500,
                                                    color: ApkColors
                                                        .primaryColor70p,
                                                    fontSize: 16.px),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 24.px,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 24.px),
                                        child: Divider(
                                          height: 0.5.px,
                                          color: ApkColors.dividerColor,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16.px,
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
                                                color: ApkColors
                                                    .primaryColor70p,
                                                fontSize: 16.px),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8.px,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          SizedBox(
                                            width: 24.px,
                                          ),
                                          SizedBox(
                                            child: SvgPicture.asset(
                                              IconPath.walletIcon,
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
                                                color: ApkColors
                                                    .primaryColor70p,
                                                fontSize: 16.px),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8.px,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          SizedBox(
                                            width: 24.px,
                                          ),
                                          SizedBox(
                                            child: SvgPicture.asset(
                                              IconPath.briefcaseIcon,
                                              height: 22.px,
                                              width: 22.px,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8.px,
                                          ),
                                          Text(
                                            "Work from home",
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                color: ApkColors
                                                    .primaryColor70p,
                                                fontSize: 16.px),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 24.px,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 27.px,
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              height: 40.px,
                                              padding: EdgeInsets.all(2.px),
                                              width: 177.px,
                                              alignment: Alignment.center,
                                              // margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 24.px),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ApkColors.orangeColor,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              20.px))),
                                              child: Text(
                                                "View Details",
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight:
                                                        FontWeight.w600,
                                                    color: ApkColors
                                                        .backgroundColor,
                                                    fontSize: 12.px),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 12.px,
                                          ),
                                          Container(
                                            height: 40.px,
                                            width: 40.px,
                                            padding: EdgeInsets.all(10.px),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      20.px),
                                              color:
                                                  ApkColors.textEditColor,
                                            ),
                                            child: GestureDetector(
                                              child: SvgPicture.asset(
                                                IconPath.bookmarkIcon20x20,
                                                height: 20.px,
                                                width: 20.px,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Text(
                          "View All Jobs",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w500,
                              color: ApkColors.primaryColor,
                              fontSize: 18.px),
                        ),
                        SizedBox(
                          height: 24.px,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40.px,
                  ),
                  Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 24.px),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Blogs",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: ApkColors.primaryColor,
                                fontSize: 24.px),
                          ),
                          SizedBox(
                            height: 24.px,
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 300.px,
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: SampleModel.cateItem.length,
                      padding: EdgeInsets.symmetric(horizontal: 24.px),
                      gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: 16.px,
                        crossAxisSpacing: 20,
                        mainAxisExtent: 277.px,
                      ),
                      itemBuilder: (context, index) {
                        // final item = SampleModel.cateItem[index];
                        return GestureDetector(
                          child: Container(
                            height: 300.px,

                            alignment: Alignment.center,
                                  //color: ApkColors.orangeColor,
                                  // padding: EdgeInsets.symmetric(horizontal: 10.px),
                                  // padding: EdgeInsets.only(bottom: 18.px,left: 15.px,right: 15.px),

                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    height: 64.px,
                                    width: 64.px,
                                    padding: EdgeInsets.all(16.px),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(32.px),
                                        color: ApkColors.orangeColor),
                                    child: SvgPicture.asset(
                                      IconPath.arrowUpRight,
                                      height: 20.px,
                                      width: 20.px,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  child: SvgPicture.asset(
                                    IconPath.rectangleDesign,
                                    height: 300.px,
                                    width: 277.px,
                                    // color: ApkColors.primaryColor,
                                  ),
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 8.px,
                                    ),
                                    Image.asset(IconPath.frameImage,
                                        height: 124.px, width: 261.px),
                                    SizedBox(
                                      height: 18.px,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 16.px,
                                      ),
                                      child: Text(
                                        "New job? These 6 things you should consider",
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            overflow: TextOverflow.ellipsis,
                                            fontWeight: FontWeight.w500,
                                            color: ApkColors.primaryColor,
                                            fontSize: 20.px),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.px,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 16.px,
                                        ),
                                        Text(
                                          "You may be excited because \n"
                                          "you've been offered a \n"
                                          "new job, or it's..........",
                                          maxLines: 3,
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              overflow:
                                                  TextOverflow.ellipsis,
                                              fontWeight: FontWeight.w400,
                                              color:
                                                  ApkColors.primaryColor70p,
                                              fontSize: 14.px),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 40.px,
                  ),
                ],
              ),
            );
          }));



    });




    
  }
}
