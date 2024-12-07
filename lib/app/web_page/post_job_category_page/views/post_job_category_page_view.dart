import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../Utils/icon_path.dart';
import '../../../color/ApkColors.dart';
import '../../post_job_web_scren/views/post_job_web_scren_view.dart';
import '../controllers/post_job_category_page_controller.dart';

class PostJobCategoryPageView extends GetView<PostJobCategoryPageController> {
  const PostJobCategoryPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;


    Get.put(PostJobCategoryPageController());
    Get.lazyPut<PostJobCategoryPageController>(
          () => PostJobCategoryPageController(),
    );
    return Obx((){
      controller.count.value;
      return Scaffold(
        body: SingleChildScrollView(
          child:controller.onClickPostJob
              ? Column(
            children: [
              SizedBox(height: screenWidth * 0.030),
              Row(
                children: [
                  SizedBox(width: screenWidth * 0.106),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        controller.increment();
                        controller.onClickPostJob =
                        !controller.onClickPostJob;
                      },
                      child: Container(
                          alignment: Alignment.center,
                          width: screenWidth * 0.190,
                          height: screenWidth * 0.042,
                          decoration: BoxDecoration(
                            color: ApkColors.orangeColor,
                            borderRadius: BorderRadius.circular(
                                screenWidth * 0.025),
                          ),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment:
                            CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                  width: screenHeight * 0.010),
                              Text(
                                "Post Job",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color:
                                  ApkColors.backgroundColor,
                                  fontSize: screenWidth * 0.024,
                                ),
                              ),
                              SizedBox(
                                  width: screenHeight * 0.010),
                              Icon(
                                CupertinoIcons.plus,
                                color: ApkColors.backgroundColor,
                                size: screenWidth * 0.018,
                              ),
                              SizedBox(
                                  width: screenHeight * 0.010),
                            ],
                          )),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.067),
                    child: Text(
                      "Post Jobs for designers",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: ApkColors.primaryColor,
                        fontSize: screenWidth * 0.024,
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(width: screenWidth * 0.106),
                ],
              ),
              SizedBox(height: screenWidth * 0.048),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.075),
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 12,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                      vertical: 24.px, horizontal: 24.px),
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: screenWidth * 0.030,
                    crossAxisSpacing: screenWidth * 0.030,
                    mainAxisExtent: screenWidth * 0.188,
                  ),
                  itemBuilder: (context, index) {
                    //final item = SampleModel.cateItem[index];
                    return MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          controller.increment();
                          controller.onClickCategory =
                          !controller.onClickCategory;
                        },
                        child: Stack(
                          children: [
                            Container(
                              height: screenWidth * 0.188,
                              width: screenWidth * 0.630,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: (index == 0)
                                      ? ApkColors.orangeColor
                                      : ApkColors.backgroundColor,
                                  borderRadius:
                                  BorderRadius.circular(
                                      screenWidth * 0.018),
                                  border: Border.all(
                                      width: 1.px,
                                      color:
                                      ApkColors.orangeColor)),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: screenWidth * 0.018,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width:
                                        screenWidth * 0.024,
                                      ),
                                      Container(
                                        height:
                                        screenWidth * 0.048,
                                        width:
                                        screenWidth * 0.048,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius
                                              .circular(
                                              screenWidth *
                                                  0.010),
                                          color: (index == 0)
                                              ? Colors
                                              .deepPurpleAccent
                                              : ApkColors
                                              .orangeColor,
                                        ),
                                        child: GestureDetector(
                                          child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  screenWidth *
                                                      0.025),
                                              child: Image.asset(
                                                'assets/images/googlepng.png',
                                                height:
                                                screenWidth *
                                                    0.022,
                                                width:
                                                screenWidth *
                                                    0.022,
                                              )),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                        screenWidth * 0.008,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment
                                            .start,
                                        children: [
                                          Text(
                                            "Emma Phillips",
                                            style: TextStyle(
                                                fontFamily:
                                                'Poppins',
                                                fontWeight:
                                                FontWeight
                                                    .w500,
                                                color: (index ==
                                                    0)
                                                    ? ApkColors
                                                    .backgroundColor
                                                    : ApkColors
                                                    .primaryColor,
                                                fontSize:
                                                screenWidth *
                                                    0.020),
                                          ),
                                          Text(
                                            "Graphic Designer",
                                            style: TextStyle(
                                                fontFamily:
                                                'Poppins',
                                                fontWeight:
                                                FontWeight
                                                    .w500,
                                                color: (index ==
                                                    0)
                                                    ? ApkColors
                                                    .backgroundColor90p
                                                    : ApkColors
                                                    .primaryColor70p,
                                                fontSize:
                                                screenWidth *
                                                    0.016),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: screenWidth * 0.023,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width:
                                        screenWidth * 0.027,
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          height:
                                          screenWidth * 0.028,
                                          alignment:
                                          Alignment.center,
                                          // margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 24.px),
                                          decoration: BoxDecoration(
                                              color: (index == 0)
                                                  ? ApkColors
                                                  .backgroundColor
                                                  : ApkColors
                                                  .textEditColor,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      screenWidth *
                                                          0.006))),
                                          child: Row(
                                            children: <Widget>[
                                              SizedBox(
                                                width:
                                                screenWidth *
                                                    0.012,
                                              ),
                                              SizedBox(
                                                child: SvgPicture
                                                    .asset(
                                                  IconPath
                                                      .locationIcon,
                                                  height:
                                                  screenWidth *
                                                      0.022,
                                                  width:
                                                  screenWidth *
                                                      0.022,
                                                ),
                                              ),
                                              SizedBox(
                                                width:
                                                screenWidth *
                                                    0.008,
                                              ),
                                              Text(
                                                "Full-time",
                                                style: TextStyle(
                                                    fontFamily:
                                                    'Poppins',
                                                    fontWeight:
                                                    FontWeight
                                                        .w500,
                                                    color: (index ==
                                                        0)
                                                        ? ApkColors
                                                        .primaryColor
                                                        : ApkColors
                                                        .primaryColor80p,
                                                    fontSize:
                                                    screenWidth *
                                                        0.010),
                                              ),
                                              SizedBox(
                                                width:
                                                screenWidth *
                                                    0.008,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                        screenWidth * 0.008,
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          height:
                                          screenWidth * 0.028,
                                          alignment:
                                          Alignment.center,
                                          // margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 24.px),
                                          decoration: BoxDecoration(
                                              color: (index == 0)
                                                  ? ApkColors
                                                  .backgroundColor
                                                  : ApkColors
                                                  .textEditColor,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      screenWidth *
                                                          0.006))),
                                          child: Row(
                                            children: <Widget>[
                                              SizedBox(
                                                width: 12.px,
                                              ),
                                              SizedBox(
                                                child: SvgPicture
                                                    .asset(
                                                  IconPath
                                                      .locationIcon,
                                                  height:
                                                  screenWidth *
                                                      0.022,
                                                  width:
                                                  screenWidth *
                                                      0.022,
                                                ),
                                              ),
                                              SizedBox(
                                                width:
                                                screenWidth *
                                                    0.008,
                                              ),
                                              Text(
                                                "\$40.00 /month",
                                                style: TextStyle(
                                                    fontFamily:
                                                    'Poppins',
                                                    fontWeight:
                                                    FontWeight
                                                        .w500,
                                                    color: (index ==
                                                        0)
                                                        ? ApkColors
                                                        .primaryColor
                                                        : ApkColors
                                                        .primaryColor80p,
                                                    fontSize:
                                                    screenWidth *
                                                        0.010),
                                              ),
                                              SizedBox(
                                                width:
                                                screenWidth *
                                                    0.008,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                        screenWidth * 0.008,
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          height:
                                          screenWidth * 0.028,
                                          alignment:
                                          Alignment.center,
                                          // margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 24.px),
                                          decoration: BoxDecoration(
                                              color: (index == 0)
                                                  ? ApkColors
                                                  .backgroundColor
                                                  : ApkColors
                                                  .textEditColor,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      screenWidth *
                                                          0.006))),
                                          child: Row(
                                            children: <Widget>[
                                              SizedBox(
                                                width:
                                                screenWidth *
                                                    0.012,
                                              ),
                                              SizedBox(
                                                child: SvgPicture
                                                    .asset(
                                                  IconPath
                                                      .locationIcon,
                                                  height:
                                                  screenWidth *
                                                      0.022,
                                                  width:
                                                  screenWidth *
                                                      0.022,
                                                ),
                                              ),
                                              SizedBox(
                                                width:
                                                screenWidth *
                                                    0.008,
                                              ),
                                              Text(
                                                "Full-time",
                                                style: TextStyle(
                                                    fontFamily:
                                                    'Poppins',
                                                    fontWeight:
                                                    FontWeight
                                                        .w500,
                                                    color: (index ==
                                                        0)
                                                        ? ApkColors
                                                        .primaryColor
                                                        : ApkColors
                                                        .primaryColor80p,
                                                    fontSize:
                                                    screenWidth *
                                                        0.010),
                                              ),
                                              SizedBox(
                                                width:
                                                screenWidth *
                                                    0.008,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: screenWidth * 0.024,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width:
                                        screenWidth * 0.024,
                                      ),
                                      SizedBox(
                                        child: SvgPicture.asset(
                                          IconPath.locationIcon,
                                          height:
                                          screenWidth * 0.022,
                                          width:
                                          screenWidth * 0.022,
                                          color: (index == 0)
                                              ? ApkColors
                                              .backgroundColor
                                              : ApkColors
                                              .primaryColor80p,
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                        screenWidth * 0.008,
                                      ),
                                      Text(
                                        "Indore, India",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight:
                                            FontWeight.w500,
                                            color: (index == 0)
                                                ? ApkColors
                                                .backgroundColor
                                                : ApkColors
                                                .primaryColor80p,
                                            fontSize:
                                            screenWidth *
                                                0.016),
                                      ),
                                      Spacer(),
                                      SizedBox(
                                        child: SvgPicture.asset(
                                          IconPath.time,
                                          height:
                                          screenWidth * 0.022,
                                          width:
                                          screenWidth * 0.022,
                                          color: (index == 0)
                                              ? ApkColors
                                              .backgroundColor
                                              : ApkColors
                                              .primaryColor80p,
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                        screenWidth * 0.008,
                                      ),
                                      Text(
                                        "3 days left",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight:
                                            FontWeight.w500,
                                            color: (index == 0)
                                                ? ApkColors
                                                .backgroundColor
                                                : ApkColors
                                                .primaryColor80p,
                                            fontSize:
                                            screenWidth *
                                                0.016),
                                      ),
                                      SizedBox(
                                        width:
                                        screenWidth * 0.024,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: screenWidth * 0.016,
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.all(
                                    screenWidth * 0.010),
                                child: Card(
                                  elevation: 10,
                                  child: Container(
                                    height: screenWidth * 0.020,
                                    width: screenWidth * 0.020,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(
                                          screenWidth *
                                              0.010),
                                      color: ApkColors
                                          .backgroundColor,
                                    ),
                                    child: Icon(
                                      Icons.more_vert_sharp,
                                      color:
                                      ApkColors.primaryColor,
                                      size: screenWidth * 0.020,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: screenHeight * 0.060),
            ],
          )
              : SizedBox(
              height: screenHeight,
              width:screenWidth,
              child:  PostJobWebScreenView()// Your Widget
          )
        ),
      );
    });


  }
}
