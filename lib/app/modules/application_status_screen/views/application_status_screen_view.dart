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
    return Obx(() {
      controller.count.value;
      return Scaffold(
          backgroundColor: ApkColors.backgroundColor,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(126.px),
            child: Container(
              decoration: BoxDecoration(color: ApkColors.primaryColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 60.px,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.px),
                    child: Row(
                      children: <Widget>[
                        IconButton(
                          icon: SvgPicture.asset(
                            IconPath.arrowLeftIcon,
                            height: 32.px,
                            width: 32.px,
                          ),
                          onPressed: () {
                            Get.back();
                          },
                        ),
                        SizedBox(
                          width: 12.px,
                        ),
                        Text(
                          StringConstants.applicationStatus,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              color: ApkColors.backgroundColor,
                              fontSize: 26.px),
                        ),
                        Spacer(),
                        SvgPicture.asset(
                          IconPath.searchIcon,
                          height: 32.px,
                          width: 32.px,
                          color: ApkColors.backgroundColor,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.px,
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
                          padding: EdgeInsets.only(bottom: 18.px),
                          child: GestureDetector(
                            onTap: () {
                              // Get.toNamed(Routes.);
                            },
                            child: Container(
                              height: 128.px,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: ApkColors.textEditColor,
                              ),
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
                                              BorderRadius.circular(10.px),
                                          color: ApkColors.orangeColor,
                                        ),
                                        child: GestureDetector(
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(25),
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
                                                fontWeight: FontWeight.w500,
                                                color: ApkColors.primaryColor,
                                                fontSize: 20.px),
                                          ),
                                          Text(
                                            "Graphic Designer",
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                color:
                                                    ApkColors.primaryColor80p,
                                                fontSize: 16.px),
                                          )
                                        ],
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 48.px,
                                        width: 48.px,
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
                                      SizedBox(
                                        width: 24.px,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12.px,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 24.px,
                                      ),
                                      SizedBox(
                                        child: SvgPicture.asset(
                                          IconPath.calendarIcon,
                                          height: 20.px,
                                          width: 20.px,
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
                                            color: ApkColors.primaryColor80p,
                                            fontSize: 16.px),
                                      ),
                                      Spacer(),
                                      SizedBox(
                                          child: Icon(
                                        Icons.circle,
                                        color: ApkColors.underReviewColor,
                                        size: 12.px,
                                      )),
                                      SizedBox(
                                        width: 8.px,
                                      ),
                                      Text(
                                        "Under Review",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            color: ApkColors.primaryColor80p,
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
              );
            },
          ));
    });
  }
}
