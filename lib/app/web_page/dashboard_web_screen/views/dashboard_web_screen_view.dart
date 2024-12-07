import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../models/recent_file.dart';
import '../../../Utils/icon_path.dart';
import '../../../color/ApkColors.dart';
import '../controllers/dashboard_web_screen_controller.dart';

class DashboardWebScreenView extends GetView<DashboardWebScreenController> {
  const DashboardWebScreenView({super.key});

  
  
  @override
  Widget build(BuildContext context) {
    Get.put(DashboardWebScreenController());
    Get.lazyPut<DashboardWebScreenController>(
      () => DashboardWebScreenController(),
    );

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = 1024;
    // final screenWidth = 1440;
    return  Obx((){
      controller.count.value;
      print("screenHeight : $screenHeight" );
      print("screenWidth : $screenWidth" );
      return Scaffold(
        backgroundColor: ApkColors.backgroundColor,
        body: SingleChildScrollView(
            child: controller.onClickViewAll
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: screenHeight * 0.060),

                      //// jobs data...............................
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: screenHeight * 0.240),
                    Flexible(
                      child: Container(
                        height: screenWidth * 0.070,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.010),
                              decoration: BoxDecoration(
                                color: ApkColors.backgroundColor,
                                borderRadius:
                                    BorderRadius.circular(screenWidth * 0.012),
                                border: Border.all(
                                    width: 1.px, color: ApkColors.orangeColor),
                              ),
                        child: Row(
                          children: [
                            SizedBox(
                              height: screenWidth * 0.050,
                              width: screenWidth * 0.050,
                              child: SvgPicture.asset(
                                IconPath.assistantIcon,
                                height: screenWidth * 0.032,
                                width: screenWidth * 0.032,
                                //color: ApkColors.backgroundColor,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.018,
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Text(
                                      "Active Jobs",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight:
                                        FontWeight.w600,
                                        color: ApkColors
                                            .primaryColor,
                                        fontSize: screenWidth * 0.020,),
                                    ),
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Total 1200",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight:
                                        FontWeight.w600,
                                        color: ApkColors
                                            .primaryColor,
                                        fontSize: screenWidth * 0.016,),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: screenHeight * 0.030),
                          Flexible(
                            child: Container(
                              height: screenWidth * 0.070,
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.010),
                              decoration: BoxDecoration(
                          color: ApkColors.backgroundColor,
                          borderRadius: BorderRadius.circular(
                              screenWidth * 0.012),
                          border: Border.all(
                              width: 1.px,
                              color: ApkColors.orangeColor
                          ),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: screenWidth * 0.050,
                                    width: screenWidth * 0.050,
                                    child: SvgPicture.asset(
                                      IconPath.assistantIcon,
                                      height: screenWidth * 0.032,
                                      width: screenWidth * 0.032,
                                      //color: ApkColors.backgroundColor,
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.018,
                                  ),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            "Active Jobs",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              color: ApkColors.primaryColor,
                                              fontSize: screenWidth * 0.020,
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Text(
                                            "Total 1200",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              color: ApkColors.primaryColor,
                                              fontSize: screenWidth * 0.016,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                        ),
                      ),
                    ),
                    SizedBox(width: screenHeight * 0.030),
                    Flexible(
                      child: Container(
                        height: screenWidth * 0.070,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.010),
                              decoration: BoxDecoration(
                                color: ApkColors.backgroundColor,
                                borderRadius:
                                    BorderRadius.circular(screenWidth * 0.012),
                                border: Border.all(
                                    width: 1.px, color: ApkColors.orangeColor),
                              ),
                        child: Row(
                          children: [
                            SizedBox(
                              height: screenWidth * 0.050,
                              width: screenWidth * 0.050,
                              child: SvgPicture.asset(
                                IconPath.assistantIcon,
                                height: screenWidth * 0.032,
                                width: screenWidth * 0.032,
                                //color: ApkColors.backgroundColor,
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.018,
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Text(
                                      "Active Jobs",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight:
                                        FontWeight.w600,
                                        color: ApkColors
                                            .primaryColor,
                                        fontSize: screenWidth * 0.020,),
                                    ),
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Total 1200",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight:
                                        FontWeight.w600,
                                        color: ApkColors
                                            .primaryColor,
                                        fontSize: screenWidth * 0.016,),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: screenHeight * 0.240),
                        ],
                ),
                SizedBox(height: screenHeight * 0.060),

                      //// divider...............................
                      Container(
                        width: screenWidth * 0.954,
                        height: screenWidth * 0.0005,
                        // color: ApkColors.primaryColor,
                        margin: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.120),
                        child: DottedLine(
                          dashLength: 10,
                          dashGapLength: 10,
                          lineThickness: 1,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.042),

                      //// category...............................
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.067),
                  child: Text(
                    "Categories",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight:
                      FontWeight.w600,
                      color: ApkColors
                          .primaryColor,
                      fontSize: screenWidth * 0.024,),
                  ),
                ),
                SizedBox(height: screenHeight * 0.024),

                      //// category items...............................
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: screenWidth * 0.067),
                          Flexible(
                            child: SizedBox(
                              height: screenWidth * 0.144,
                              child: GridView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: 4,
                                physics: NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 1,
                                  mainAxisSpacing: screenWidth * 0.030,
                                  crossAxisSpacing: screenWidth * 0.030,
                                  mainAxisExtent: screenWidth * 0.144,
                                ),
                                itemBuilder: (context, index) {
                                  //final item = SampleModel.cateItem[index];
                                  return MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () {
                                        //
                                        // controller.increment();
                                        // controller.onClickCategory =
                                        // !controller.onClickCategory;
                                      },
                                      child: Column(
                                        children: [
                                          Container(
                                            height: screenWidth * 0.144,
                                            width: screenWidth * 0.185,
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.symmetric(
                                                horizontal:
                                                    screenWidth * 0.020),

                                            // padding: EdgeInsets.only(bottom: 18.px,left: 15.px,right: 15.px),

                                            decoration: BoxDecoration(
                                              color: (index == 0)
                                                  ? ApkColors.orangeColor
                                                  : ApkColors.textEditColor,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      screenWidth * 0.012),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  height: screenWidth * 0.018,
                                                ),
                                                SizedBox(
                                                  height: screenWidth * 0.048,
                                                  width: screenWidth * 0.048,
                                                  child: SvgPicture.asset(
                                                    (index == 0)
                                                        ? IconPath.doctorIcon
                                                        : IconPath
                                                            .assistantIcon,
                                                    height: screenWidth * 0.32,
                                                    width: screenWidth * 0.032,
                                                    //color: ApkColors.backgroundColor,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: screenWidth * 0.008,
                                                ),
                                                Text(
                                                  "Doctors",
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: (index == 0)
                                                          ? ApkColors
                                                              .backgroundColor
                                                          : ApkColors
                                                              .primaryColor,
                                                      fontSize:
                                                          screenWidth * 0.020),
                                                ),
                                                SizedBox(
                                                  height: screenWidth * 0.005,
                                                ),
                                                Text(
                                                  "More than 100 jobs",
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: (index == 0)
                                                          ? ApkColors
                                                              .backgroundColor980p
                                                          : ApkColors
                                                              .primaryColor80p,
                                                      fontSize:
                                                          screenWidth * 0.010),
                                                ),
                                                SizedBox(
                                                  height: screenWidth * 0.015,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.055),
                          SizedBox(
                            height: screenWidth * 0.100,
                            width: screenWidth * 0.083,
                            child: Column(
                              children: [
                                IconButton(
                                  icon: SvgPicture.asset(
                                    IconPath.addJObsSvg,
                                    height: screenWidth * 0.050,
                                    width: screenWidth * 0.050,
                                  ),
                                  onPressed: () {
                                    // controller.increment();
                                    // clickOnItems[1] = false;
                                    // clickOnItems[2] = false;
                                    // clickOnItems[0] = true;
                                  },
                                ),
                                SizedBox(height: screenWidth * 0.012),
                                Flexible(
                                  child: Text(
                                    "Add job",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      color: ApkColors.primaryColor,
                                      fontSize: screenWidth * 0.016,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.067),
                        ],
                      ),

                      SizedBox(height: screenHeight * 0.060),

                      //// user...............................

                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.067),
                        child: Text(
                          "User Status",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: ApkColors.primaryColor,
                            fontSize: screenWidth * 0.020,
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.030),

                      Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.082),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: DataTable(
                          columnSpacing: screenWidth * 0.050,
                          dataRowMaxHeight: screenWidth * 0.040,
                          showBottomBorder: true,
                          dividerThickness: 1,
                          dataTextStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: ApkColors.primaryColor,
                            fontSize: screenWidth * 0.010,
                          ),
                          decoration: BoxDecoration(
                            color: ApkColors.primaryColor,
                            borderRadius: BorderRadius.only(
                              topRight:
                              Radius.circular(screenWidth * 0.012),
                              topLeft:
                              Radius.circular(screenWidth * 0.012),
                            ),
                          ),
                          // minWidth: 600,

                                columns: [
                                  DataColumn(
                                    label: Padding(
                                      padding: EdgeInsets.only(
                                          left: screenWidth * 0.060),
                                      child: Text("Name",
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            color: ApkColors.backgroundColor,
                                            fontSize: screenWidth * 0.015,
                                          )),
                                    ),
                                  ),
                                  DataColumn(
                                    label: Text("E-mail",
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          color: ApkColors.backgroundColor,
                                          fontSize: screenWidth * 0.015,
                                        )),
                                  ),
                                  DataColumn(
                                    label: Text("Status",
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          color: ApkColors.backgroundColor,
                                          fontSize: screenWidth * 0.015,
                                        )),
                                  ),
                                  DataColumn(
                                    label: Text("Resume",
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          color: ApkColors.backgroundColor,
                                          fontSize: screenWidth * 0.015,
                                        )),
                                  ),
                                ],
                                rows: List.generate(3, (index) {
                                  return recentFileDataRow(
                                      demoRecentFiles[index], index);
                                }),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: screenHeight * 0.060),

                      ////  View all button...............................
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                            controller.increment();
                            controller.onClickViewAll =
                                !controller.onClickViewAll;
                          },
                    child: Container(
                      alignment: Alignment.center,
                      width: screenWidth * 0.120,
                      padding: EdgeInsets.symmetric(
                          vertical: screenWidth * 0.002),
                      decoration: BoxDecoration(
                        color: ApkColors.orangeColor,
                        borderRadius: BorderRadius.circular(screenWidth *
                            0.025),
                      ),
                      child: Text(
                        "View All",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight:
                          FontWeight.w600,
                          color: ApkColors
                              .backgroundColor,
                          fontSize: screenWidth * 0.015,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.060),







            ],
          )
                : Column(
                    children: [
                      SizedBox(
                        height: screenWidth * 0.067,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: screenWidth * 0.082,
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                controller.increment();
                        controller.onClickViewAll =
                        !controller.onClickViewAll;

                      },
                      child: SizedBox(
                                height: screenWidth * 0.030,
                                width: screenWidth * 0.030,
                                child: SvgPicture.asset(
                                  IconPath.arrowLeftIcon,
                                  height: 25.px,
                                  width: 25.px,
                                  color: ApkColors.primaryColor,
                                ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.018,
                  ),
                  Text(
                    "All Users",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight:
                      FontWeight.w600,
                      color: ApkColors
                          .primaryColor,
                              fontSize: screenWidth * 0.020,
                            ),
                          ),
                        ],
              ),
                      SizedBox(height: screenHeight * 0.030),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.067),
                        child: Text(
                          "User Status",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: ApkColors.primaryColor,
                            fontSize: screenWidth * 0.020,
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.030),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.082),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: DataTable(
                                columnSpacing: screenWidth * 0.050,
                                dataRowMaxHeight: screenWidth * 0.040,
                                showBottomBorder: true,
                                dividerThickness: 1,
                                dataTextStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: ApkColors.primaryColor,
                                  fontSize: screenWidth * 0.010,
                                ),
                                decoration: BoxDecoration(
                                  color: ApkColors.primaryColor,
                                  borderRadius: BorderRadius.only(
                                    topRight:
                                        Radius.circular(screenWidth * 0.012),
                                    topLeft:
                                        Radius.circular(screenWidth * 0.012),
                                  ),
                                ),
                                // minWidth: 600,

                                columns: [
                            DataColumn(
                              label: Padding(

                                padding: EdgeInsets.only(
                                    left: screenWidth * 0.060),

                                child: Text("Name",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight:
                                      FontWeight.w600,
                                      color: ApkColors
                                          .backgroundColor,
                                      fontSize: screenWidth * 0.015,)
                                ),
                              ),
                            ),
                            DataColumn(
                              label: Text("E-mail",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight:
                                    FontWeight.w600,
                                    color: ApkColors
                                        .backgroundColor,
                                    fontSize: screenWidth * 0.015,)),
                            ),
                            DataColumn(
                              label: Text("Status",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight:
                                    FontWeight.w600,
                                    color: ApkColors
                                        .backgroundColor,
                                    fontSize: screenWidth * 0.015,)),
                            ),
                            DataColumn(
                              label: Text("Resume",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight:
                                    FontWeight.w600,
                                    color: ApkColors
                                        .backgroundColor,
                                    fontSize: screenWidth * 0.015,)),
                          ),
                                ],
                                rows: List.generate(demoRecentFiles.length,
                                    (index) {
                                  return recentFileDataRow(
                                      demoRecentFiles[index], index);
                                }),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.030),
                      Container(
                          alignment: Alignment.center,
                          width: screenWidth * 0.150,
                          padding: EdgeInsets.symmetric(
                              vertical: screenWidth * 0.005),
                          decoration: BoxDecoration(
                            color: ApkColors.orangeColor,
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.025),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    SizedBox(width:screenHeight * 0.010),

                    Icon(CupertinoIcons.chevron_left,color: ApkColors.backgroundColor,
                                size: screenWidth * 0.020,
                              ),
                              SizedBox(width: screenHeight * 0.010),
                              Container(
                    width: 2.px,
                      height: 30.px,
                      color: ApkColors.backgroundColor,
                    ),
                    SizedBox(width:screenHeight * 0.010),
                    Text(
                      "1",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight:
                        FontWeight.w600,
                        color: ApkColors
                            .backgroundColor,
                                  fontSize: screenWidth * 0.015,
                                ),
                              ),
                              SizedBox(width:screenHeight * 0.010),
                    Text(
                      "of",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight:
                        FontWeight.w600,
                        color: ApkColors
                            .backgroundColor,
                                  fontSize: screenWidth * 0.015,
                                ),
                              ),
                              SizedBox(width:screenHeight * 0.010),
                    Text(
                      "1",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight:
                        FontWeight.w600,
                        color: ApkColors
                            .backgroundColor,
                                  fontSize: screenWidth * 0.015,
                                ),
                              ),
                              SizedBox(width:screenHeight * 0.010),
                    Container(
                      width: 2.px,
                      height: 30.px,
                      color: ApkColors.backgroundColor,
                    ),


                    Icon(CupertinoIcons.chevron_forward,color: ApkColors.backgroundColor,
                                size: screenWidth * 0.020,
                              ),
                              SizedBox(width: screenHeight * 0.010),
                            ],
                          )),
                      SizedBox(height: screenHeight * 0.060),
                    ],
                  )

        ),
      );
    });



  }

  DataRow recentFileDataRow(RecentFile fileInfo, int index) {
    return DataRow(
      color: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        return ApkColors.textEditColor;
      }),
      cells: [
        DataCell(
          Row(
            children: [
              SizedBox(
                width: 30.px,
              ),
              Image.asset(
                fileInfo.icon!,
                height: 30.px,
                width: 30.px,
              ),
              SizedBox(
                width: 40.px,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.px),
                child: Text(fileInfo.name!),
              ),
            ],
          ),
        ),
        DataCell(Text(fileInfo.email!)),
        DataCell(
          Row(
            children: [
              Icon(Icons.circle,
                  size: 12.px,
                  color: (fileInfo.status! == "Hired")
                      ? ApkColors.hiredColor
                      : (fileInfo.status! == "Pending")
                          ? ApkColors.pendingColor
                          : ApkColors.underReviewColor),
              SizedBox(
                width: 10.px,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.px),
                child: Text(fileInfo.status!),
              ),
            ],
          ),
        ),
        DataCell(
          Row(
            children: [
              SvgPicture.asset(
                IconPath.downloadSvg,
                height: 30.px,
                width: 30.px,
              ),
              Spacer(),
              Icon(
                Icons.more_vert_sharp,
                color: ApkColors.primaryColor,
                size: 30.px,
              )
            ],
          ),
        ),
      ],
    );
  }
}
