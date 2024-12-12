import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../models/sample_model.dart';
import '../../../Utils/StringConstants.dart';
import '../../../Utils/icon_path.dart';
import '../../../color/ApkColors.dart';
import '../../../routes/app_pages.dart';
import '../controllers/job_tab_screen_controller.dart';

class JobTabScreenView extends GetView<JobTabScreenController> {
  const JobTabScreenView({super.key});

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ApkColors.backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.146),
        child: Container(
          decoration: BoxDecoration(color: ApkColors.primaryColor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: screenHeight * 0.0752,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: screenHeight * 0.0215),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: SvgPicture.asset(
                        IconPath.arrowLeftIcon,
                        height: screenHeight * 0.035,
                        width: screenHeight * 0.035,
                      ),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    SizedBox(
                      width: screenHeight * 0.0129,
                    ),
                    Text(
                      StringConstants.design,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: ApkColors.backgroundColor,
                          fontSize: screenHeight * 0.028),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.0322,
              ),
            ],
          ),
        ),
      ),
      body:  Obx(() {
        controller.count.value;
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.px),
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.0258,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                      StringConstants.jobsAvailable,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        color: ApkColors.primaryColor,
                        fontSize: screenHeight * 0.0258),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.0365,
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
                      padding: EdgeInsets.only(bottom: screenHeight * 0.0194),
                      child: GestureDetector(
                        onTap: (){
                          Get.toNamed(Routes.DETAILS_SCREEN);
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
                                    decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(
                                          screenHeight * 0.0108),
                                      color: (index == 0) ? Colors.deepPurpleAccent :  ApkColors.orangeColor,
                                    ),
                                    child: GestureDetector(
                                      child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(
                                              screenHeight * 0.0258),
                                          child: Image.asset(
                                            'assets/images/googlepng.png',
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
                                        "Emma Phillips",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight:
                                            FontWeight.w500,
                                            color: (index == 0) ? ApkColors.backgroundColor :  ApkColors.primaryColor,
                                            fontSize: screenHeight * 0.0215),
                                      ),
                                      Text(
                                        "Graphic Designer",
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
  }
}
