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
    return Scaffold(
      backgroundColor: ApkColors.backgroundColor,
      appBar: PreferredSize(
        //preferredSize:  Size.fromHeight(80.0)
        preferredSize:  Size.fromHeight(136.px),
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
                        IconPath.arrowLeftIcon,
                        height: 32.px,
                        width: 32.px,
                        color: ApkColors.backgroundColor,
                      ),
                      onPressed: () {
                        // controller.openDrawer();
                      },
                    ),
                    SizedBox(width: 12.px,),
                    Text(
                      StringConstants.design,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: ApkColors.backgroundColor,
                          fontSize: 26.px),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: SvgPicture.asset(
                        IconPath.preferenceIcon,
                        height:  32.px,
                        width:  32.px,
                        color: ApkColors.backgroundColor,
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
                  height: 24.px,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "45 jobs available",
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
                    final item = SampleModel.cateItem[index];
                    return Padding(
                      padding: EdgeInsets.only(bottom: 18.px),
                      child: GestureDetector(
                        onTap: (){
                          Get.toNamed(Routes.DETAILS_SCREEN);
                        },
                        child: Container(
                          height: 250.px,
                          alignment: Alignment.center,

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
                                          ApkColors.textEditColor,
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
                                              color: ApkColors.primaryColor,
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
                                                color: ApkColors
                                                    .primaryColor70p,
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
                                          ApkColors.textEditColor,
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
                                              color: ApkColors.primaryColor,
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
                                          ApkColors.textEditColor,
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
                                              color: ApkColors.primaryColor,
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
                                                color: ApkColors
                                                    .primaryColor70p,
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
                                      color: ApkColors.primaryColor,
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
                                  Spacer(),
                                  SizedBox(
                                    child: SvgPicture.asset(
                                      IconPath.time,
                                      height: 22.px,
                                      width: 22.px,
                                      color: ApkColors.primaryColor70p,
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
                                        color: ApkColors
                                            .primaryColor70p,
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
  }
}
