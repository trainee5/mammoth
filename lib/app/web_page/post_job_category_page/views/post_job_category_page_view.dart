import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../Utils/icon_path.dart';
import '../../../color/ApkColors.dart';
import '../../job_details_web_screen/views/job_details_web_screen_view.dart';
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
              ? controller.onClickCategory
              ? SizedBox(
              height: screenHeight,
              width:screenWidth,
              child:  JobDetailsWebScreenView()// Your Widget
          )
              : Column(
            children: [
              SizedBox(height: screenWidth * 0.030),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // SizedBox(width: screenWidth * 0.070),
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
                          height: screenWidth * 0.0292,
                          decoration: BoxDecoration(
                            color: ApkColors.orangeColor,
                            borderRadius: BorderRadius.circular(
                                screenWidth * 0.020),
                          ),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            crossAxisAlignment:
                            CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                  width: screenHeight * 0.020),
                              Text(
                                "Post Job",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color:
                                  ApkColors.backgroundColor,
                                  fontSize: screenWidth * 0.017,
                                ),
                              ),
                              SizedBox(
                                  width: screenHeight * 0.010),
                              Icon(
                                CupertinoIcons.plus,
                                color: ApkColors.backgroundColor,
                                size: screenWidth * 0.011,
                              ),
                              SizedBox(
                                  width: screenHeight * 0.020),
                            ],
                          )),
                    ),
                  ),
                  // SizedBox(width: screenWidth * 0.340),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Post Jobs for designers",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: ApkColors.primaryColor,
                        fontSize: screenWidth * 0.017,
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.070),
                ],
              ),
              SizedBox(height: screenWidth * 0.034),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.070),
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 12,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                      vertical:  screenWidth * 0.017, horizontal:  screenWidth * 0.017),
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: screenWidth * 0.021,
                    crossAxisSpacing: screenWidth * 0.021,
                    mainAxisExtent: screenWidth * 0.133,
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
                              height: screenWidth * 0.133,
                              width: screenWidth * 0.438,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: (index == 0)
                                      ? ApkColors.orangeColor
                                      : ApkColors.backgroundColor,
                                  borderRadius:
                                  BorderRadius.circular(
                                      screenWidth * 0.0083),
                                  border: Border.all(
                                      width: 1.px,
                                      color:
                                      ApkColors.orangeColor)),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: screenWidth * 0.011,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width:
                                        screenWidth * 0.011,
                                      ),
                                      Container(
                                        height:
                                        screenWidth * 0.0333,
                                        width:
                                        screenWidth * 0.0333,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius
                                              .circular(
                                              screenWidth *
                                                  0.007),
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
                                                      0.0175),
                                              child: Image.asset(
                                                'assets/images/googlepng.png',
                                                height:
                                                screenWidth *
                                                    0.0153,
                                                width:
                                                screenWidth *
                                                    0.0153,
                                              )),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                        screenWidth * 0.0125,
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
                                                    0.014),
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
                                                    0.0111),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: screenWidth * 0.011,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width:
                                        screenWidth * 0.0167,
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          height:
                                          screenWidth * 0.0264,
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
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              SizedBox(
                                                width:
                                                screenWidth *
                                                    0.0084,
                                              ),
                                              SizedBox(
                                                child: SvgPicture
                                                    .asset(
                                                  IconPath
                                                      .locationIcon,
                                                  height:
                                                  screenWidth *
                                                      0.0153,
                                                  width:
                                                  screenWidth *
                                                      0.0153,
                                                ),
                                              ),
                                              SizedBox(
                                                width:
                                                screenWidth *
                                                    0.0056,
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
                                                        0.0111),
                                              ),
                                              SizedBox(
                                                width:
                                                screenWidth *
                                                    0.0084,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                        screenWidth * 0.0056,
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          height:
                                          screenWidth * 0.0264,
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
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              SizedBox(
                                                width:
                                                screenWidth *
                                                    0.0084,
                                              ),
                                              SizedBox(
                                                child: SvgPicture
                                                    .asset(
                                                  IconPath
                                                      .locationIcon,
                                                  height:
                                                  screenWidth *
                                                      0.0153,
                                                  width:
                                                  screenWidth *
                                                      0.0153,
                                                ),
                                              ),
                                              SizedBox(
                                                width:
                                                screenWidth *
                                                    0.0056,
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
                                                        0.0111),
                                              ),
                                              SizedBox(
                                                width:
                                                screenWidth *
                                                    0.0084,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                        screenWidth * 0.0056,
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          height:
                                          screenWidth * 0.0264,
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
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              SizedBox(
                                                width:
                                                screenWidth *
                                                    0.0084,
                                              ),
                                              SizedBox(
                                                child: SvgPicture
                                                    .asset(
                                                  IconPath
                                                      .locationIcon,
                                                  height:
                                                  screenWidth *
                                                      0.0153,
                                                  width:
                                                  screenWidth *
                                                      0.0153,
                                                ),
                                              ),
                                              SizedBox(
                                                width:
                                                screenWidth *
                                                    0.0056,
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
                                                        0.0111),
                                              ),
                                              SizedBox(
                                                width:
                                                screenWidth *
                                                    0.0084,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                  SizedBox(
                                    height: screenWidth * 0.0167,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width:
                                        screenWidth * 0.011,
                                      ),
                                      SizedBox(
                                        child: SvgPicture.asset(
                                          IconPath.locationIcon,
                                          height:
                                          screenWidth * 0.0153,
                                          width:
                                          screenWidth * 0.0153,
                                          color: (index == 0)
                                              ? ApkColors
                                              .backgroundColor
                                              : ApkColors
                                              .primaryColor80p,
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                        screenWidth * 0.0055,
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
                                                0.0111),
                                      ),
                                      Spacer(),
                                      SizedBox(
                                        child: SvgPicture.asset(
                                          IconPath.time,
                                          height:
                                          screenWidth * 0.0153,
                                          width:
                                          screenWidth * 0.0153,
                                          color: (index == 0)
                                              ? ApkColors
                                              .backgroundColor
                                              : ApkColors
                                              .primaryColor80p,
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                        screenWidth * 0.0056,
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
                                                0.0111),
                                      ),
                                      SizedBox(
                                        width:
                                        screenWidth * 0.011,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: screenWidth * 0.010,
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.all(
                                    screenWidth * 0.008),
                                child: Card(
                                  elevation: 10,
                                  child: Container(
                                    height: screenWidth * 0.014,
                                    width: screenWidth * 0.014,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: ApkColors
                                          .backgroundColor,
                                    ),
                                    child: Icon(
                                      Icons.more_vert_sharp,
                                      color:
                                      ApkColors.primaryColor,
                                      size: screenWidth * 0.014,
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
