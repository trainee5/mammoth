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

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Obx((){
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
                SizedBox(
                  height:  screenHeight * 0.290,
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
                ),
              ],
            ),
          ),
          appBar: PreferredSize(
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
                    readOnly: true,
                    searchIcon: Padding(
                      padding: EdgeInsets.only(right: screenHeight * 0.0172, left: screenHeight * 0.0086),
                      child: SvgPicture.asset(
                        IconPath.searchIcon,
                        height: screenHeight * 0.0344,
                        width:screenHeight * 0.0344,
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
                  height: screenHeight * 0.0258,
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
                          height: screenHeight * 0.0365,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            StringConstants.selectByCategory,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: ApkColors.primaryColor,
                                fontSize: screenHeight * 0.0258),
                          ),
                        ),
                        GridView.builder(
                          // scrollDirection: Axis.vertical,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: SampleModel.cateItem.length,
                          padding: EdgeInsets.symmetric(vertical: screenHeight * 0.0258),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: screenHeight * 0.030,
                            crossAxisSpacing: screenHeight * 0.0129,
                            mainAxisExtent: screenHeight * 0.1825,
                          ),

                          itemBuilder: (context, index) {
                                  final item = SampleModel.cateItem[index];
                                  return GestureDetector(
                                    child: Container(
                                      height: screenHeight * 0.1825,
                                      alignment: Alignment.center,
                                      // padding: EdgeInsets.only(bottom: 18.px,left: 15.px,right: 15.px),

                                decoration: BoxDecoration(
                                  color: (index == 0)
                                      ? ApkColors.orangeColor
                                      : ApkColors.textEditColor,
                                  borderRadius:
                                      BorderRadius.circular(screenHeight * 0.0129),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: screenHeight * 0.0194,
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.0516,
                                      width: screenHeight * 0.0516,
                                      child: SvgPicture.asset(
                                        (index == 0) ? IconPath.doctorIcon : IconPath.assistantIcon,
                                        height: screenHeight * 0.0344,
                                        width: screenHeight * 0.0344,
                                        //color: ApkColors.backgroundColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.0086,
                                    ),
                                    Text(
                                      item.name,
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          color: (index == 0)
                                              ? ApkColors.backgroundColor
                                              : ApkColors.primaryColor,
                                          fontSize: screenHeight * 0.0215),
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.0086,
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
                                          fontSize: screenHeight * 0.0171),
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.0171,
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
                              fontSize: screenHeight * 0.0194),
                        ),
                          SizedBox(
                          height: screenHeight * 0.043,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            StringConstants.jobsByPreference,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: ApkColors.primaryColor,
                                fontSize: screenHeight * 0.0258),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.0258,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: screenHeight * 0.4220,
                    width: double.infinity,
                    color: ApkColors.orangeColor12p,
                     padding: EdgeInsets.symmetric( horizontal: screenHeight * 0.0258),

                    child: Column(
                      children: [
                        SizedBox(
                          height: screenHeight * 0.0258,
                        ),
                        SizedBox(
                          height: screenHeight * 0.3176,
                          child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: SampleModel.cateItem.length,
                            // padding: EdgeInsets.symmetric(
                            //     vertical: screenHeight * 0.0258, horizontal: screenHeight * 0.0258),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              mainAxisSpacing: screenHeight * 0.0172,
                              mainAxisExtent: screenHeight * 0.3176,
                            ),
                            itemBuilder: (context, index) {
                              //final item = SampleModel.cateItem[index];
                              return GestureDetector(
                                child: Container(
                                  height: screenHeight * 0.3176,
                                  alignment: Alignment.center,
                                  // padding: EdgeInsets.only(bottom: 18.px,left: 15.px,right: 15.px),

                                  decoration: BoxDecoration(
                                      color: ApkColors.backgroundColor,
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
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      screenHeight * 0.0108),
                                              color: ApkColors.orangeColor,
                                            ),
                                            child: GestureDetector(
                                              child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          screenHeight * 0.0269),
                                                  child: Image.asset(
                                                    'assets/images/googlepng.png',
                                                    height: screenHeight * 0.0237,
                                                    width: screenHeight * 0.0237,
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
                                                "Product Manager",
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight:
                                                        FontWeight.w500,
                                                    color: ApkColors
                                                        .primaryColor,
                                                    fontSize: screenHeight * 0.0194),
                                              ),
                                              Text(
                                                "Graphic Designer",
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight:
                                                        FontWeight.w500,
                                                    color: ApkColors
                                                        .primaryColor70p,
                                                    fontSize: screenHeight * 0.0175),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: screenHeight * 0.0258,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: screenHeight * 0.0215),
                                        child: Divider(
                                          height: 1.px,
                                          color: ApkColors.orangeColor,
                                        ),
                                      ),
                                      SizedBox(
                                        height: screenHeight * 0.0129,
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
                                                color: ApkColors
                                                    .primaryColor70p,
                                                fontSize: screenHeight * 0.0175),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: screenHeight * 0.0086,
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
                                                color: ApkColors
                                                    .primaryColor70p,
                                                fontSize: screenHeight * 0.0175),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: screenHeight * 0.0086,
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
                                                color: ApkColors
                                                    .primaryColor70p,
                                                fontSize: screenHeight * 0.0175),
                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: screenHeight * 0.0258,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: screenHeight * 0.0258,
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              height: screenHeight * 0.043,
                                              padding: EdgeInsets.all(2.px),
                                              width: screenHeight * 0.190,
                                              alignment: Alignment.center,
                                              // margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 24.px),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ApkColors.orangeColor,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              screenHeight * 0.0215))),
                                              child: Text(
                                                "View Details",
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight:
                                                        FontWeight.w600,
                                                    color: ApkColors
                                                        .backgroundColor,
                                                    fontSize: screenHeight * 0.0129),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: screenHeight * 0.0129,
                                          ),
                                          Container(
                                            height: screenHeight * 0.043,
                                            width: screenHeight * 0.043,
                                            padding: EdgeInsets.all(screenHeight * 0.0108),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      screenHeight * 0.0215),
                                              color:
                                                  ApkColors.textEditColor,
                                            ),
                                            child: GestureDetector(
                                              child: SvgPicture.asset(
                                                IconPath.bookmarkIcon20x20,
                                                height: screenHeight * 0.0215,
                                                width: screenHeight * 0.0215,
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
                        SizedBox(
                          height: screenHeight * 0.0258,
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.0451,
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
                                fontSize: screenHeight * 0.0258),
                          ),
                          SizedBox(
                            height: screenHeight * 0.0258,
                          ),
                        ],
                      )),
                  SizedBox(
                    height: screenHeight * 0.3319,
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: SampleModel.cateItem.length,
                      padding: EdgeInsets.symmetric(horizontal: 24.px),
                      gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: screenHeight * 0.0129,
                        crossAxisSpacing: screenHeight * 0.0215,
                        mainAxisExtent:screenHeight * 0.3219,
                      ),
                      itemBuilder: (context, index) {
                        // final item = SampleModel.cateItem[index];
                        return GestureDetector(
                          child: Container(
                            height: screenHeight * 0.321,

                            alignment: Alignment.center,
                                  //color: ApkColors.orangeColor,
                                  // padding: EdgeInsets.symmetric(horizontal: 10.px),
                                  // padding: EdgeInsets.only(bottom: 18.px,left: 15.px,right: 15.px),

                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    height: screenHeight * 0.0687,
                                    width: screenHeight * 0.0687,
                                    padding: EdgeInsets.all(screenHeight * 0.0172),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(screenHeight * 0.0344),
                                        color: ApkColors.orangeColor),
                                    child: SvgPicture.asset(
                                      IconPath.arrowUpRight,
                                      height: screenHeight * 0.0215,
                                      width: screenHeight * 0.0215,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  child: SvgPicture.asset(
                                    IconPath.rectangleDesign,
                                    height: screenHeight * 0.3219,
                                    width: screenHeight * 0.2975,
                                    // color: ApkColors.primaryColor,
                                  ),
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: screenHeight * 0.0086,
                                    ),
                                    Image.asset(IconPath.frameImage,
                                        height: screenHeight * 0.1331, width: screenHeight * 0.2801),
                                    SizedBox(
                                      height: screenHeight * 0.0194,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: screenHeight * 0.0172,
                                      ),
                                      child: Text(
                                        "New job? These 6 things you should consider",
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            overflow: TextOverflow.ellipsis,
                                            fontWeight: FontWeight.w500,
                                            color: ApkColors.primaryColor,
                                            fontSize: screenHeight * 0.0215),
                                      ),
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.0054,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: screenHeight * 0.0086,
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
                                              fontSize: screenHeight * 0.0172),
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
                    height: screenHeight * 0.043,
                  ),
                ],
              ),
            );
          }));



    });




    
  }
}
