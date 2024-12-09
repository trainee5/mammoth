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
        backgroundColor: ApkColors.webBackgroundColor,
        body: SingleChildScrollView(
            child: controller.onClickViewAll
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: screenHeight * 0.0417),

                      //// jobs data...............................
                      SizedBox(
                        height: screenWidth * 0.0486.px,
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 3,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            mainAxisSpacing: screenWidth * 0.021,
                            mainAxisExtent: screenWidth *0.209.px,
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
                                child: Container(
                                  height: screenWidth * 0.0486,
                                  alignment: Alignment.centerLeft,
                                 // margin: EdgeInsets.only(left: screenWidth * 0.030.px),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: screenWidth * 0.007),
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
                                        height: screenWidth * 0.035,
                                        width: screenWidth * 0.035,
                                        child: SvgPicture.asset(
                                          IconPath.assistantIcon,
                                          height: screenWidth * 0.023,
                                          width: screenWidth * 0.023,
                                          //color: ApkColors.backgroundColor,
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth * 0.013,
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
                                                  fontSize: screenWidth * 0.014,),
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
                                                  fontSize: screenWidth * 0.011,),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),




                      SizedBox(height: screenHeight * 0.042),

                      //// divider...............................
                      Container(
                        height: screenWidth * 0.0005,
                        // color: ApkColors.primaryColor,
                        margin: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.200),
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
                  margin: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.057),
                  child: Text(
                    "Categories",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight:
                      FontWeight.w600,
                      color: ApkColors
                          .primaryColor,
                      fontSize: screenWidth * 0.0167,),
                  ),
                ),


                SizedBox(height: screenHeight * 0.024),

                      //// category items...............................
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: screenWidth * 0.057),
                          Flexible(
                            child: SizedBox(
                              height: screenWidth * 0.100,
                              child: GridView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: 6,
                                physics: NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 1,
                                  mainAxisSpacing: screenWidth * 0.030,
                                  crossAxisSpacing: screenWidth * 0.030,
                                  mainAxisExtent: screenWidth * 0.100,
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
                                            height: screenWidth * 0.100,
                                            width: screenWidth * 0.1285,
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.symmetric(
                                                horizontal:
                                                    screenWidth * 0.013),

                                            // padding: EdgeInsets.only(bottom: 18.px,left: 15.px,right: 15.px),

                                            decoration: BoxDecoration(
                                              color: (index == 0)
                                                  ? ApkColors.orangeColor
                                                  : ApkColors.textEditColor,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      screenWidth * 0.007),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  height: screenWidth * 0.013,
                                                ),
                                                SizedBox(
                                                  height: screenWidth * 0.033,
                                                  width: screenWidth * 0.033,
                                                  child: SvgPicture.asset(
                                                    (index == 0)
                                                        ? IconPath.doctorIcon
                                                        : IconPath
                                                            .assistantIcon,
                                                    height: screenWidth * 0.23,
                                                    width: screenWidth * 0.023,
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
                                                          screenWidth * 0.014),
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
                                                          screenWidth * 0.007),
                                                ),
                                                SizedBox(
                                                  height: screenWidth * 0.010,
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
                          SizedBox(width: screenWidth * 0.0382),
                          SizedBox(
                            height: screenWidth * 0.100,
                            width: screenWidth * 0.045,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: SvgPicture.asset(
                                    IconPath.addJObsSvg,
                                    height: screenWidth * 0.035,
                                    width: screenWidth * 0.035,
                                  ),
                                  onPressed: () {
                                    // controller.increment();
                                    // clickOnItems[1] = false;
                                    // clickOnItems[2] = false;
                                    // clickOnItems[0] = true;
                                  },
                                ),
                                SizedBox(height: screenWidth * 0.007),
                                Flexible(
                                  child: Text(
                                    "Add job",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      color: ApkColors.primaryColor,
                                      fontSize: screenWidth * 0.01116,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.0655),
                        ],
                      ),

                      SizedBox(height: screenHeight * 0.0417),

                      //// user...............................

                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.057),
                        child: Text(
                          "User Status",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: ApkColors.primaryColor,
                            fontSize: screenWidth * 0.0167,
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
                         // columnSpacing: screenWidth * 0.050,
                         // dataRowMaxHeight: screenWidth * 0.0278,
                          showBottomBorder: true,
                          dividerThickness: 1,
                          dataTextStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: ApkColors.primaryColor,
                            fontSize: screenWidth * 0.0139,
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
                                          left: screenWidth * 0.0417),
                                      child: Text("Name",
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            color: ApkColors.backgroundColor,
                                            fontSize: screenWidth * 0.0167,
                                          )),
                                    ),
                                  ),
                                  DataColumn(
                                    label: Text("E-mail",
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          color: ApkColors.backgroundColor,
                                          fontSize: screenWidth * 0.0167,
                                        )),
                                  ),
                                  DataColumn(
                                    label: Text("Status",
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          color: ApkColors.backgroundColor,
                                          fontSize: screenWidth * 0.0167,
                                        )),
                                  ),
                                  DataColumn(
                                    label: Text("Resume",
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          color: ApkColors.backgroundColor,
                                          fontSize: screenWidth * 0.0167,
                                        )),
                                  ),
                                ],
                                rows: List.generate(3, (index) {
                                  return recentFileDataRow(
                                      demoRecentFiles[index], index, screenWidth);
                                }),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: screenHeight * 0.0417),

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
                      width: screenWidth * 0.132,
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
                          fontSize: screenWidth * 0.0167,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.0417),







            ],
          )
                : Column(
                    children: [
                      SizedBox(
                        height: screenWidth * 0.0495,
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
                                height: screenWidth * 0.028,
                                width: screenWidth * 0.028,
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
                              fontSize: screenWidth * 0.0166,
                            ),
                          ),
                        ],
              ),
                      SizedBox(height: screenHeight * 0.021),
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
                            fontSize: screenWidth * 0.0195,
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.021),
                      Container(

                        margin: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.056),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: DataTable(
                                // columnSpacing: screenWidth * 0.050,
                                // dataRowMaxHeight: screenWidth * 0.0278,
                                showBottomBorder: true,
                                dividerThickness: 1,
                                dataTextStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: ApkColors.primaryColor,
                                  fontSize: screenWidth * 0.0139,
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
                                    left: screenWidth * 0.0417),

                                child: Text("Name",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight:
                                      FontWeight.w600,
                                      color: ApkColors
                                          .backgroundColor,
                                      fontSize: screenWidth * 0.0167,)
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
                                    fontSize: screenWidth * 0.0167,)),
                            ),
                            DataColumn(
                              label: Text("Status",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight:
                                    FontWeight.w600,
                                    color: ApkColors
                                        .backgroundColor,
                                    fontSize: screenWidth * 0.0167,)),
                            ),
                            DataColumn(
                              label: Text("Resume",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight:
                                    FontWeight.w600,
                                    color: ApkColors
                                        .backgroundColor,
                                    fontSize: screenWidth * 0.0167,)),
                          ),
                                ],
                                rows: List.generate(demoRecentFiles.length,
                                    (index) {
                                  return recentFileDataRow(
                                      demoRecentFiles[index], index,screenWidth);
                                }),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.030),
                      Container(
                          alignment: Alignment.center,
                          width: screenWidth * 0.221,
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

                    SizedBox(width:screenHeight * 0.007),

                    Icon(CupertinoIcons.chevron_left,color: ApkColors.backgroundColor,
                                size: screenWidth * 0.020,
                              ),
                              SizedBox(width: screenHeight * 0.007),
                              Container(
                    width: 2.px,
                      height: 30.px,
                      color: ApkColors.backgroundColor,
                    ),
                    SizedBox(width:screenHeight * 0.007),
                    Text(
                      "1",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight:
                        FontWeight.w600,
                        color: ApkColors
                            .backgroundColor,
                                  fontSize: screenWidth * 0.0104,
                                ),
                              ),
                              SizedBox(width:screenHeight * 0.007),
                    Text(
                      "of",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight:
                        FontWeight.w600,
                        color: ApkColors
                            .backgroundColor,
                                  fontSize: screenWidth * 0.0104,
                                ),
                              ),
                              SizedBox(width:screenHeight * 0.007),
                    Text(
                      "1",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight:
                        FontWeight.w600,
                        color: ApkColors
                            .backgroundColor,
                                  fontSize: screenWidth * 0.0104,
                                ),
                              ),
                              SizedBox(width:screenHeight * 0.007),
                    Container(
                      width: 2.px,
                      height: 30.px,
                      color: ApkColors.backgroundColor,
                    ),


                    Icon(CupertinoIcons.chevron_forward,color: ApkColors.backgroundColor,
                                size: screenWidth * 0.020,
                              ),
                              SizedBox(width: screenHeight * 0.007),
                            ],
                          )),
                      SizedBox(height: screenHeight * 0.0417),
                    ],
                  )

        ),
      );
    });



  }

  DataRow recentFileDataRow(RecentFile fileInfo, int index, double screenWidth) {
    return DataRow(
      color: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        return ApkColors.textEditColor;
      }),
      cells: [
        DataCell(
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                
                padding: EdgeInsets.all(screenWidth * 0.005.px),

                child: Image.asset(
                  fileInfo.icon!,
                  height: screenWidth * 0.030.px,
                  width: screenWidth * 0.030.px,
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.007.px),
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
                  size: screenWidth * 0.012.px,
                  color: (fileInfo.status! == "Hired")
                      ? ApkColors.hiredColor
                      : (fileInfo.status! == "Pending")
                          ? ApkColors.pendingColor
                          : ApkColors.underReviewColor),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.007.px),
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
                height: screenWidth * 0.020.px,
                width: screenWidth * 0.020.px,
              ),
              Spacer(),
              Icon(
                Icons.more_vert_sharp,
                color: ApkColors.primaryColor,
                size: screenWidth * 0.020.px,
              )
            ],
          ),
        ),
      ],
    );
  }
}
