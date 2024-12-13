import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mammoth/app/color/ApkColors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../Utils/StringConstants.dart';
import '../../../Utils/icon_path.dart';
import '../controllers/application_status_screen_controller.dart';

class ApplicationStatusScreenView
    extends GetView<ApplicationStatusScreenController> {
  const ApplicationStatusScreenView({super.key});

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;


    return Obx(() {
      controller.count.value;
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
                          StringConstants.applicationStatus,
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
          body: Obx(
            () {
              controller.count.value;
              return SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemCount: 6,
                      //padding: EdgeInsets.symmetric(vertical: 34.px),
                      itemBuilder: (context, index) {
                        //final item = SampleModel.cateItem[index];
                        return Padding(
                          padding: EdgeInsets.only(bottom: screenHeight * 0.0194),
                          child: GestureDetector(
                            onTap: () {
                              // Get.toNamed(Routes.);
                            },
                            child: Container(
                              height: screenHeight * 0.145,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: ApkColors.textEditColor,
                              ),
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
                                          shape: BoxShape.circle,
                                          color: ApkColors.orangeColor,
                                        ),
                                        child: GestureDetector(
                                          child: Image.asset(
                                            IconPath.blackBox,
                                            height: screenHeight * 0.0237,
                                            width:screenHeight * 0.0237,
                                          ),
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
                                            "Blackbox Design Co. s",
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                                color: ApkColors.primaryColor,
                                                fontSize: screenHeight * 0.0215),
                                          ),
                                          Text(
                                            "Aman Sharma",
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                color:
                                                    ApkColors.primaryColor80p,
                                                fontSize: screenHeight * 0.0151),
                                          )
                                        ],
                                      ),
                                      Spacer(),
                                      Container(
                                        height: screenHeight * 0.0516,
                                        width: screenHeight * 0.0516,
                                        padding: EdgeInsets.all(screenHeight * 0.0129),
                                        decoration: BoxDecoration(

                                            color: ApkColors.orangeColor,
                                          shape: BoxShape.circle
                                        ),
                                        child: SvgPicture.asset(
                                          IconPath.arrowUpRight,
                                          height: screenHeight * 0.0215,
                                          width: screenHeight * 0.0215,
                                          color: ApkColors.backgroundColor,
                                        ),


                                      ),
                                      SizedBox(
                                        width: screenHeight * 0.0258,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.022,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: screenHeight * 0.0258,
                                      ),
                                      SizedBox(
                                        child: SvgPicture.asset(
                                          IconPath.calendarIcon,
                                          height: screenHeight * 0.0215,
                                          width: screenHeight * 0.0215,
                                          color: ApkColors.primaryColor,
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenHeight * 0.0086,
                                      ),
                                      Text(
                                        index == 1 ? "Applied on 12th Sep" : "Applied on 13th Sep",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            color: ApkColors.primaryColor,
                                            fontSize: screenHeight * 0.0172),
                                      ),
                                      Spacer(),
                                      SizedBox(
                                          child: Icon(
                                        Icons.circle,
                                        color: (index == 1) ? ApkColors.hiredColor : ApkColors.underReviewColor ,
                                        size: screenHeight * 0.0129,
                                      )),
                                      SizedBox(
                                        width: screenHeight * 0.0086,
                                      ),
                                      Text(
                                        (index == 1) ? "Hired" : "Under Review",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            color: ApkColors.primaryColor,
                                            fontSize: screenHeight * 0.0172),
                                      ),
                                      SizedBox(
                                        width: screenHeight * 0.0258,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.0129,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: screenHeight * 0.0516,
                    )
                  ],
                ),
              );
            },
          ));
    });
  }
}
