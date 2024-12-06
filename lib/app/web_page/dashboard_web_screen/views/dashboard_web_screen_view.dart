import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../models/profile.dart';
import '../../../CommonFile/app_constants.dart';
import '../../../CommonFile/constants.dart';
import '../../../CommonFile/profile_tile.dart';
import '../../../Utils/StringConstants.dart';
import '../../../Utils/icon_path.dart';
import '../../../color/ApkColors.dart';
import '../../../components/responsive_builder.dart';
import '../../../routes/app_pages.dart';
import '../../job_web_screen/views/job_web_screen_view.dart';
import '../controllers/dashboard_web_screen_controller.dart';

class DashboardWebScreenView extends GetView<DashboardWebScreenController> {
  const DashboardWebScreenView({super.key});

  
  
  @override
  Widget build(BuildContext context) {


    int hoveredCardIndex = -1;
    int hoveredHeaderIndex = -1;
    bool isCallbackHover = false;


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
        appBar: PreferredSize(
          //preferredSize:  Size.fromHeight(80.0)
          preferredSize: Size.fromHeight(screenWidth * 0.090),
          child: Card(
            elevation: 10,
            child: Container(
              decoration: BoxDecoration(color: ApkColors.backgroundColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal:  screenWidth * 0.036,vertical: screenWidth * 0.010 ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        Image.asset(
                          IconPath.mammothOneSt,
                          width: screenWidth * 0.216,
                        ),


                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width:screenWidth * 0.020,
                              ),

                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: (){
                                    controller.increment();
                                    controller.onClickJob =
                                    !controller.onClickJob;

                                  },
                                  child: Text(
                                   "Dashboard",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        color: controller.onClickJob ? ApkColors.orangeColor : ApkColors.primaryColor,
                                        fontSize: screenWidth * 0.018),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width:screenWidth * 0.020,
                              ),

                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: (){
                                    controller.increment();
                                    controller.onClickJob =
                                    !controller.onClickJob;

                                  },
                                  child: Text(
                                    "Jobs",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        color: controller.onClickJob ? ApkColors.orangeColor : ApkColors.primaryColor,
                                        fontSize: screenWidth * 0.018),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.020,
                              ),
                              Text(
                                  "Blog",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    color: ApkColors.primaryColor,
                                    fontSize: screenWidth * 0.018),
                              ),
                              SizedBox(
                                width: screenWidth * 0.020,
                              ),
                              Text(
                                "Subscription",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    color: ApkColors.primaryColor,
                                    fontSize: screenWidth * 0.018),
                              ),
                              SizedBox(
                                width:screenWidth * 0.020,
                              ),



                            ],
                          ),
                        ),


                        SizedBox(
                          height: screenWidth * 0.050,
                          child: Row(
                            children: [

                              SvgPicture.asset(
                                IconPath.notificationIcon,
                                width: screenWidth * 0.020,
                                fit: BoxFit.fitWidth,
                                color: ApkColors.primaryColor,
                              ),
                              SizedBox(
                                width: screenWidth * 0.018,
                              ),

                              SvgPicture.asset(
                                IconPath.arrowDown,
                                width: screenWidth * 0.018,
                                fit: BoxFit.fitWidth,
                              ),
                              SizedBox(
                                width: screenWidth * 0.006,
                              ),


                              Container(
                                height:  screenWidth * 0.050,
                                width:  screenWidth * 0.050,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular( screenWidth * 0.025),
                                ),
                                child: GestureDetector(
                                  onTap: (){
                                    Get.toNamed(Routes.PROFILE_SCREEN);
                                  },
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(screenWidth * 0.020),
                                      child: Image.asset(
                                        IconPath.googleImg,
                                        height:  screenWidth * 0.050,
                                        width:  screenWidth * 0.050,
                                      )),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.006,
                              ),
                              SizedBox(
                                height:  screenWidth * 0.060,

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
                                            color: ApkColors.primaryColor,
                                            fontSize:  screenWidth * 0.010),
                                      ),
                                      Text(
                                        "Graphic Designer",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            color: ApkColors.textEditColor,
                                            fontSize: screenWidth * 0.008),
                                      )
                                    ],
                                  ),
                                ),

                                // child:
                              ),
                            ],
                          ),
                        ),

                        // _buildProfile(data: controller.getProfil()),




                      ],
                    ),
                  ),
                  SizedBox(
                    height:screenWidth * 0.010,
                  ),
                ],
              ),
            ),
          ),
        ),


        body: controller.onClickJob
            ? JobWebScreenView()
            : SingleChildScrollView(
          child:  controller.onClickViewAll
              ? Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height:screenHeight * 0.060),

              //// jobs data...............................
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  SizedBox(width:screenHeight * 0.240),
                  Flexible(
                    child: Container(
                      height:  screenWidth * 0.070,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal:  screenWidth * 0.010),

                      decoration: BoxDecoration(
                        color: ApkColors.backgroundColor,
                        borderRadius: BorderRadius.circular( screenWidth * 0.012),
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
                              height:screenWidth * 0.032,
                              width:screenWidth * 0.032,
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
                                      fontSize:  screenWidth * 0.020,),
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
                                      fontSize:  screenWidth * 0.016,),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(width:screenHeight * 0.030),
                  Flexible(
                    child: Container(
                      height:  screenWidth * 0.070,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal:  screenWidth * 0.010),

                      decoration: BoxDecoration(
                        color: ApkColors.backgroundColor,
                        borderRadius: BorderRadius.circular( screenWidth * 0.012),
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
                              height:screenWidth * 0.032,
                              width:screenWidth * 0.032,
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
                                      fontSize:  screenWidth * 0.020,),
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
                                      fontSize:  screenWidth * 0.016,),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(width:screenHeight * 0.030),
                  Flexible(
                    child: Container(
                      height:  screenWidth * 0.070,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal:  screenWidth * 0.010),

                      decoration: BoxDecoration(
                        color: ApkColors.backgroundColor,
                        borderRadius: BorderRadius.circular( screenWidth * 0.012),
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
                              height:screenWidth * 0.032,
                              width:screenWidth * 0.032,
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
                                      fontSize:  screenWidth * 0.020,),
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
                                      fontSize:  screenWidth * 0.016,),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(width:screenHeight * 0.240),

                ],
              ),
              SizedBox(height:screenHeight * 0.060),

              //// divider...............................
              Container(
                width: screenWidth * 0.954,
                height: screenWidth * 0.0005,
                color: ApkColors.primaryColor,
                margin: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.120
                ),),
              SizedBox(height:screenHeight * 0.042),


              //// category...............................
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal:screenWidth * 0.067 ),
                child:Text(
                  "Categories",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight:
                    FontWeight.w600,
                    color: ApkColors
                        .primaryColor,
                    fontSize:  screenWidth * 0.024,),
                ),
              ),
              SizedBox(height:screenHeight * 0.024),


              //// category items...............................
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  SizedBox(width:screenWidth * 0.067),
                  Flexible(
                    child: GestureDetector(
                                    child: Container(
                                    height: screenWidth * 0.144,
                                    width: screenWidth * 0.185,
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.symmetric(horizontal:screenWidth * 0.020 ),


                                      // padding: EdgeInsets.only(bottom: 18.px,left: 15.px,right: 15.px),

                                      decoration: BoxDecoration(
                    color:
                         ApkColors.orangeColor,

                    borderRadius:
                    BorderRadius.circular(screenWidth * 0.012),
                                      ),
                                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: screenWidth * 0.018,
                      ),
                      SizedBox(
                        height: screenWidth * 0.048,
                        width:  screenWidth * 0.048,
                        child: SvgPicture.asset(
                           IconPath.doctorIcon,
                          height:  screenWidth * 0.32,
                          width:  screenWidth * 0.032,
                          //color: ApkColors.backgroundColor,
                        ),
                      ),
                      SizedBox(
                        height:  screenWidth * 0.008,
                      ),
                      Text(
                        "Doctors",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color:  ApkColors.backgroundColor,

                            fontSize: screenWidth * 0.020),
                      ),
                      SizedBox(
                        height: screenWidth * 0.005,
                      ),
                      Text(
                        "More than 100 jobs",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: ApkColors.backgroundColor980p,
                            fontSize: screenWidth * 0.010),
                      ),
                      SizedBox(
                        height: screenWidth * 0.015,
                      ),
                    ],
                                      ),
                                    ),
                                  ),
                  ),
                  SizedBox(width:screenHeight * 0.060),
                  Flexible(
                    child: GestureDetector(
                      child: Container(
                        height: screenWidth * 0.144,
                        width: screenWidth * 0.185,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal:screenWidth * 0.020 ),


                        // padding: EdgeInsets.only(bottom: 18.px,left: 15.px,right: 15.px),

                        decoration: BoxDecoration(
                          color:
                          ApkColors.orangeColor,

                          borderRadius:
                          BorderRadius.circular(screenWidth * 0.012),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: screenWidth * 0.018,
                            ),
                            SizedBox(
                              height: screenWidth * 0.048,
                              width:  screenWidth * 0.048,
                              child: SvgPicture.asset(
                                IconPath.doctorIcon,
                                height:  screenWidth * 0.32,
                                width:  screenWidth * 0.032,
                                //color: ApkColors.backgroundColor,
                              ),
                            ),
                            SizedBox(
                              height:  screenWidth * 0.008,
                            ),
                            Text(
                              "Doctors",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  color:  ApkColors.backgroundColor,

                                  fontSize: screenWidth * 0.020),
                            ),
                            SizedBox(
                              height: screenWidth * 0.010,
                            ),
                            Text(
                              "More than 100 jobs",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  color: ApkColors.backgroundColor980p,
                                  fontSize: screenWidth * 0.010),
                            ),
                            SizedBox(
                              height: screenWidth * 0.015,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width:screenHeight * 0.060),
                  Flexible(
                    child: GestureDetector(
                      child: Container(
                        height: screenWidth * 0.144,
                        width: screenWidth * 0.185,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal:screenWidth * 0.020 ),


                        // padding: EdgeInsets.only(bottom: 18.px,left: 15.px,right: 15.px),

                        decoration: BoxDecoration(
                          color:
                          ApkColors.orangeColor,

                          borderRadius:
                          BorderRadius.circular(screenWidth * 0.012),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: screenWidth * 0.018,
                            ),
                            SizedBox(
                              height: screenWidth * 0.048,
                              width:  screenWidth * 0.048,
                              child: SvgPicture.asset(
                                IconPath.doctorIcon,
                                height:  screenWidth * 0.32,
                                width:  screenWidth * 0.032,
                                //color: ApkColors.backgroundColor,
                              ),
                            ),
                            SizedBox(
                              height:  screenWidth * 0.008,
                            ),
                            Text(
                              "Doctors",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  color:  ApkColors.backgroundColor,

                                  fontSize: screenWidth * 0.020),
                            ),
                            SizedBox(
                              height: screenWidth * 0.005,
                            ),
                            Text(
                              "More than 100 jobs",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  color: ApkColors.backgroundColor980p,
                                  fontSize: screenWidth * 0.010),
                            ),
                            SizedBox(
                              height: screenWidth * 0.010,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width:screenHeight * 0.060),
                  Flexible(
                    child: GestureDetector(
                      child: Container(
                        height: screenWidth * 0.144,
                        width: screenWidth * 0.185,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal:screenWidth * 0.020 ),


                        // padding: EdgeInsets.only(bottom: 18.px,left: 15.px,right: 15.px),

                        decoration: BoxDecoration(
                          color:
                          ApkColors.orangeColor,

                          borderRadius:
                          BorderRadius.circular(screenWidth * 0.012),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: screenWidth * 0.018,
                            ),
                            SizedBox(
                              height: screenWidth * 0.048,
                              width:  screenWidth * 0.048,
                              child: SvgPicture.asset(
                                IconPath.doctorIcon,
                                height:  screenWidth * 0.32,
                                width:  screenWidth * 0.032,
                                //color: ApkColors.backgroundColor,
                              ),
                            ),
                            SizedBox(
                              height:  screenWidth * 0.008,
                            ),
                            Text(
                              "Doctors",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  color:  ApkColors.backgroundColor,

                                  fontSize: screenWidth * 0.020),
                            ),
                            SizedBox(
                              height: screenWidth * 0.005,
                            ),
                            Text(
                              "More than 100 jobs",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  color: ApkColors.backgroundColor980p,
                                  fontSize: screenWidth * 0.010),
                            ),
                            SizedBox(
                              height: screenWidth * 0.015,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width:screenHeight * 0.060),
                  Flexible(
                    child: GestureDetector(
                      child: Container(
                        height: screenWidth * 0.144,
                        width: screenWidth * 0.185,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal:screenWidth * 0.020 ),


                        // padding: EdgeInsets.only(bottom: 18.px,left: 15.px,right: 15.px),

                        decoration: BoxDecoration(
                          color:
                          ApkColors.orangeColor,

                          borderRadius:
                          BorderRadius.circular(screenWidth * 0.012),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: screenWidth * 0.018,
                            ),
                            SizedBox(
                              height: screenWidth * 0.048,
                              width:  screenWidth * 0.048,
                              child: SvgPicture.asset(
                                IconPath.doctorIcon,
                                height:  screenWidth * 0.32,
                                width:  screenWidth * 0.032,
                                //color: ApkColors.backgroundColor,
                              ),
                            ),
                            SizedBox(
                              height:  screenWidth * 0.008,
                            ),
                            Text(
                              "Doctors",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  color:  ApkColors.backgroundColor,

                                  fontSize: screenWidth * 0.020),
                            ),
                            SizedBox(
                              height: screenWidth * 0.005,
                            ),
                            Text(
                              "More than 100 jobs",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  color: ApkColors.backgroundColor980p,
                                  fontSize: screenWidth * 0.010),
                            ),
                            SizedBox(
                              height: screenWidth * 0.015,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width:screenWidth * 0.067),


                ],
              ),


              SizedBox(height:screenHeight * 0.060),


              //// user...............................
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal:screenWidth * 0.067 ),
                child:Text(
                  "User Status",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight:
                    FontWeight.w600,
                    color: ApkColors
                        .primaryColor,
                    fontSize:  screenWidth * 0.028,),
                ),
              ),
              SizedBox(height:screenHeight * 0.030),

              //// user table ...............................
              Container(
            padding: EdgeInsets.symmetric(horizontal:screenWidth * 0.088 ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: ApkColors.primaryColor,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(screenWidth * 0.012),
                  topLeft: Radius.circular(screenWidth * 0.012)

              ),

            ),
            child: DataTable(
              columns: [
                DataColumn(label: Text(
                    'ID',
                    style:  TextStyle(
              fontFamily: 'Poppins',
              fontWeight:
              FontWeight.w600,
              color: ApkColors
                  .backgroundColor,
              fontSize:  screenWidth * 0.020,)
                )),
                DataColumn(label: Text(
                    'Name',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight:
                      FontWeight.w600,
                      color: ApkColors
                          .backgroundColor,
                      fontSize:  screenWidth * 0.020,)
                )),
                DataColumn(label: Text(
                    'Status',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight:
                      FontWeight.w600,
                      color: ApkColors
                          .backgroundColor,
                      fontSize:  screenWidth * 0.020,)
                )),
                DataColumn(label: Text(
                    'Profession',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight:
                      FontWeight.w600,
                      color: ApkColors
                          .backgroundColor,
                      fontSize:  screenWidth * 0.020,)
                )),
              ], rows: [],
            ),




          ),



              //// user table data ...............................
              SizedBox(
                height: screenWidth * 0.200,
                child: ListView(children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal:screenWidth * 0.067 ),

                    decoration: BoxDecoration(
                      color: ApkColors.textEditColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(screenWidth * 0.012),
                          topLeft: Radius.circular(screenWidth * 0.012)
                      ),

                    ),

                    child: DataTable(
                      columns: [
                        DataColumn(label: Text(
                            '',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                        )),
                        DataColumn(label: Text(
                            '',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                        )),
                        DataColumn(label: Text(
                            '',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                        )),
                        DataColumn(label: Text(
                            '',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                        )),
                      ],
                      rows: [
                        DataRow(cells: [

                          DataCell(

                              Row(
                                children: [
                                  Container(
                                    height:  screenWidth * 0.050,
                                    width:  screenWidth * 0.050,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular( screenWidth * 0.025),
                                    ),
                                    child: GestureDetector(
                                      onTap: (){
                                        Get.toNamed(Routes.PROFILE_SCREEN);
                                      },
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(screenWidth * 0.020),
                                          child: Image.asset(
                                            IconPath.googleImg,
                                            height:  screenWidth * 0.050,
                                            width:  screenWidth * 0.050,
                                          )),
                                    ),
                                  ),
                                  Text('5',
                                    style:
                                    TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight:
                                    FontWeight.w600,
                                    color: ApkColors
                                        .primaryColor,
                                    fontSize:  screenWidth * 0.015,))

                                ],
                              )

                          ),
                          DataCell(Text('Stephen',
                              style:
                              TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight:
                                FontWeight.w600,
                                color: ApkColors
                                    .primaryColor,
                                fontSize:  screenWidth * 0.015,)


                          )),
                          DataCell(

                              Row(
                                children: [
                                  Icon(Icons.circle,color: ApkColors.underReviewColor,
                                  size: 12.px,),
                                  SizedBox(width: 10.px,),
                                  Text('Under Review'
                                      ,
                                      style:
                                      TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight:
                                        FontWeight.w600,
                                        color: ApkColors
                                            .primaryColor,
                                        fontSize:  screenWidth * 0.015,))

                                ],
                              )

                          ),
                          DataCell(Text('Actor'
                              ,
                              style:
                              TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight:
                                FontWeight.w600,
                                color: ApkColors
                                    .primaryColor,
                                fontSize:  screenWidth * 0.015,))),
                        ]),
                        DataRow(cells: [
                          DataCell(

                              Row(
                                children: [
                                  Container(
                                    height:  screenWidth * 0.050,
                                    width:  screenWidth * 0.050,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular( screenWidth * 0.025),
                                    ),
                                    child: GestureDetector(
                                      onTap: (){
                                        Get.toNamed(Routes.PROFILE_SCREEN);
                                      },
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(screenWidth * 0.020),
                                          child: Image.asset(
                                            IconPath.googleImg,
                                            height:  screenWidth * 0.050,
                                            width:  screenWidth * 0.050,
                                          )),
                                    ),
                                  ),
                                  Text('5'
                                      ,
                                      style:
                                      TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight:
                                        FontWeight.w600,
                                        color: ApkColors
                                            .primaryColor,
                                        fontSize:  screenWidth * 0.015,))

                                ],
                              )

                          ),
                          DataCell(Text('John'
                              ,
                              style:
                              TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight:
                                FontWeight.w600,
                                color: ApkColors
                                    .primaryColor,
                                fontSize:  screenWidth * 0.015,))),
                          DataCell(

                              Row(
                                children: [
                                  Icon(Icons.circle,color: ApkColors.underReviewColor,
                                    size: 12.px,),
                                  SizedBox(width: 10.px,),
                                  Text('Under Review'
                                      ,
                                      style:
                                      TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight:
                                        FontWeight.w600,
                                        color: ApkColors
                                            .primaryColor,
                                        fontSize:  screenWidth * 0.015,))

                                ],
                              )

                          ),
                          DataCell(Text('Student'
                            ,
                            style:
                            TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight:
                            FontWeight.w600,
                            color: ApkColors
                                .primaryColor,
                            fontSize:  screenWidth * 0.015,))),
                        ]),
                        DataRow(cells: [
                          DataCell(

                              Row(
                                children: [
                                  Container(
                                    height:  screenWidth * 0.050,
                                    width:  screenWidth * 0.050,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular( screenWidth * 0.025),
                                    ),
                                    child: GestureDetector(
                                      onTap: (){
                                        Get.toNamed(Routes.PROFILE_SCREEN);
                                      },
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(screenWidth * 0.020),
                                          child: Image.asset(
                                            IconPath.googleImg,
                                            height:  screenWidth * 0.050,
                                            width:  screenWidth * 0.050,
                                          )),
                                    ),
                                  ),
                                  Text('5'
                                      ,
                                      style:
                                      TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight:
                                        FontWeight.w600,
                                        color: ApkColors
                                            .primaryColor,
                                        fontSize:  screenWidth * 0.015,))

                                ],
                              )

                          ),
                          DataCell(Text('Harry'
                              ,
                              style:
                              TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight:
                                FontWeight.w600,
                                color: ApkColors
                                    .primaryColor,
                                fontSize:  screenWidth * 0.015,))),
                          DataCell(

                              Row(
                                children: [
                                  Icon(Icons.circle,color: ApkColors.underReviewColor,
                                    size: 12.px,),
                                  SizedBox(width: 10.px,),
                                  Text('Under Review'
                                      ,
                                      style:
                                      TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight:
                                        FontWeight.w600,
                                        color: ApkColors
                                            .primaryColor,
                                        fontSize:  screenWidth * 0.015,))

                                ],
                              )

                          ),
                          DataCell(Text('Leader'
                              ,
                              style:
                              TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight:
                                FontWeight.w600,
                                color: ApkColors
                                    .primaryColor,
                                fontSize:  screenWidth * 0.015,))),
                        ]),
                        DataRow(cells: [
                          DataCell(

                              Row(
                                children: [
                                  Container(
                                    height:  screenWidth * 0.050,
                                    width:  screenWidth * 0.050,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular( screenWidth * 0.025),
                                    ),
                                    child: GestureDetector(
                                      onTap: (){
                                        Get.toNamed(Routes.PROFILE_SCREEN);
                                      },
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(screenWidth * 0.020),
                                          child: Image.asset(
                                            IconPath.googleImg,
                                            height:  screenWidth * 0.050,
                                            width:  screenWidth * 0.050,
                                          )),
                                    ),
                                  ),
                                  Text('5'
                                      ,
                                      style:
                                      TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight:
                                        FontWeight.w600,
                                        color: ApkColors
                                            .primaryColor,
                                        fontSize:  screenWidth * 0.015,))

                                ],
                              )

                          ),
                          DataCell(Text('Peter'
                              ,
                              style:
                              TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight:
                                FontWeight.w600,
                                color: ApkColors
                                    .primaryColor,
                                fontSize:  screenWidth * 0.015,))),
                          DataCell(

                              Row(
                                children: [
                                  Icon(Icons.circle,color: ApkColors.underReviewColor,
                                    size: 12.px,),
                                  SizedBox(width: 10.px,),
                                  Text('Under Review'
                                      ,
                                      style:
                                      TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight:
                                        FontWeight.w600,
                                        color: ApkColors
                                            .primaryColor,
                                        fontSize:  screenWidth * 0.015,))

                                ],
                              )

                          ),
                          DataCell(Text('Scientist'
                              ,
                              style:
                              TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight:
                                FontWeight.w600,
                                color: ApkColors
                                    .primaryColor,
                                fontSize:  screenWidth * 0.015,))),
                        ]),
                      ],
                    ),
                  ),
                ]),
              ),
              SizedBox(height:screenHeight * 0.060),

              ////  View all button...............................
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: (){

                    controller.increment();
                    controller.onClickViewAll =
                    !controller.onClickViewAll;

                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: screenWidth * 0.190,
                    padding: EdgeInsets.symmetric(vertical:screenWidth * 0.008 ),
                    decoration: BoxDecoration(
                      color: ApkColors.orangeColor,
                      borderRadius: BorderRadius.circular( screenWidth * 0.025),
                    ),
                    child:Text(
                      "View All",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight:
                        FontWeight.w600,
                        color: ApkColors
                            .backgroundColor,
                        fontSize:  screenWidth * 0.024,),
                    ),
                  ),
                ),
              ),
              SizedBox(height:screenHeight * 0.060),







            ],
          )
              : Column(
            children: [

              Row(
                children: [
                  SizedBox(
                    width: screenWidth * 0.082,
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: (){

                        controller.increment();
                        controller.onClickViewAll =
                        !controller.onClickViewAll;

                      },
                      child: SizedBox(
                        height: screenWidth * 0.040,
                        width: screenWidth * 0.040,
                        child: SvgPicture.asset(
                          IconPath.arrowLeftIcon,
                          height: 32.px,
                          width: 32.px,
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
                      fontSize:  screenWidth * 0.024,),
                  ),
                ],
              ),

              SizedBox(height:screenHeight * 0.030),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal:screenWidth * 0.067 ),
                child:Text(
                  "User Status",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight:
                    FontWeight.w600,
                    color: ApkColors
                        .primaryColor,
                    fontSize:  screenWidth * 0.028,),
                ),
              ),
              SizedBox(height:screenHeight * 0.030),
              Container(
                padding: EdgeInsets.symmetric(horizontal:screenWidth * 0.088 ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ApkColors.primaryColor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(screenWidth * 0.012),
                      topLeft: Radius.circular(screenWidth * 0.012)

                  ),

                ),
                child: DataTable(
                  columns: [
                    DataColumn(label: Text(
                        'ID',
                        style:  TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight:
                          FontWeight.w600,
                          color: ApkColors
                              .backgroundColor,
                          fontSize:  screenWidth * 0.020,)
                    )),
                    DataColumn(label: Text(
                        'Name',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight:
                          FontWeight.w600,
                          color: ApkColors
                              .backgroundColor,
                          fontSize:  screenWidth * 0.020,)
                    )),
                    DataColumn(label: Text(
                        'Status',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight:
                          FontWeight.w600,
                          color: ApkColors
                              .backgroundColor,
                          fontSize:  screenWidth * 0.020,)
                    )),
                    DataColumn(label: Text(
                        'Profession',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight:
                          FontWeight.w600,
                          color: ApkColors
                              .backgroundColor,
                          fontSize:  screenWidth * 0.020,)
                    )),
                  ], rows: [],
                ),




              ),
              SizedBox(
                height: screenWidth * 0.180,
                child: ListView(children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal:screenWidth * 0.067 ),

                    decoration: BoxDecoration(
                      color: ApkColors.textEditColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(screenWidth * 0.012),
                          topLeft: Radius.circular(screenWidth * 0.012)
                      ),

                    ),

                    child: DataTable(
                      columns: [
                        DataColumn(label: Text(
                            '',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                        )),
                        DataColumn(label: Text(
                            '',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                        )),
                        DataColumn(label: Text(
                            '',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                        )),
                        DataColumn(label: Text(
                            '',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                        )),
                      ],
                      rows: [
                        DataRow(cells: [

                          DataCell(

                              Row(
                                children: [
                                  Container(
                                    height:  screenWidth * 0.050,
                                    width:  screenWidth * 0.050,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular( screenWidth * 0.025),
                                    ),
                                    child: GestureDetector(
                                      onTap: (){
                                        Get.toNamed(Routes.PROFILE_SCREEN);
                                      },
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(screenWidth * 0.020),
                                          child: Image.asset(
                                            IconPath.googleImg,
                                            height:  screenWidth * 0.050,
                                            width:  screenWidth * 0.050,
                                          )),
                                    ),
                                  ),
                                  Text('5',
                                      style:
                                      TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight:
                                        FontWeight.w600,
                                        color: ApkColors
                                            .primaryColor,
                                        fontSize:  screenWidth * 0.015,))

                                ],
                              )

                          ),
                          DataCell(Text('Stephen',
                              style:
                              TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight:
                                FontWeight.w600,
                                color: ApkColors
                                    .primaryColor,
                                fontSize:  screenWidth * 0.015,)


                          )),
                          DataCell(

                              Row(
                                children: [
                                  Icon(Icons.circle,color: ApkColors.underReviewColor,
                                    size: 12.px,),
                                  SizedBox(width: 10.px,),
                                  Text('Under Review'
                                      ,
                                      style:
                                      TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight:
                                        FontWeight.w600,
                                        color: ApkColors
                                            .primaryColor,
                                        fontSize:  screenWidth * 0.015,))

                                ],
                              )

                          ),
                          DataCell(Text('Actor'
                              ,
                              style:
                              TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight:
                                FontWeight.w600,
                                color: ApkColors
                                    .primaryColor,
                                fontSize:  screenWidth * 0.015,))),
                        ]),
                        DataRow(cells: [
                          DataCell(

                              Row(
                                children: [
                                  Container(
                                    height:  screenWidth * 0.050,
                                    width:  screenWidth * 0.050,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular( screenWidth * 0.025),
                                    ),
                                    child: GestureDetector(
                                      onTap: (){
                                        Get.toNamed(Routes.PROFILE_SCREEN);
                                      },
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(screenWidth * 0.020),
                                          child: Image.asset(
                                            IconPath.googleImg,
                                            height:  screenWidth * 0.050,
                                            width:  screenWidth * 0.050,
                                          )),
                                    ),
                                  ),
                                  Text('5'
                                      ,
                                      style:
                                      TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight:
                                        FontWeight.w600,
                                        color: ApkColors
                                            .primaryColor,
                                        fontSize:  screenWidth * 0.015,))

                                ],
                              )

                          ),
                          DataCell(Text('John'
                              ,
                              style:
                              TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight:
                                FontWeight.w600,
                                color: ApkColors
                                    .primaryColor,
                                fontSize:  screenWidth * 0.015,))),
                          DataCell(

                              Row(
                                children: [
                                  Icon(Icons.circle,color: ApkColors.underReviewColor,
                                    size: 12.px,),
                                  SizedBox(width: 10.px,),
                                  Text('Under Review'
                                      ,
                                      style:
                                      TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight:
                                        FontWeight.w600,
                                        color: ApkColors
                                            .primaryColor,
                                        fontSize:  screenWidth * 0.015,))

                                ],
                              )

                          ),
                          DataCell(Text('Student'
                              ,
                              style:
                              TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight:
                                FontWeight.w600,
                                color: ApkColors
                                    .primaryColor,
                                fontSize:  screenWidth * 0.015,))),
                        ]),
                        DataRow(cells: [
                          DataCell(

                              Row(
                                children: [
                                  Container(
                                    height:  screenWidth * 0.050,
                                    width:  screenWidth * 0.050,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular( screenWidth * 0.025),
                                    ),
                                    child: GestureDetector(
                                      onTap: (){
                                        Get.toNamed(Routes.PROFILE_SCREEN);
                                      },
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(screenWidth * 0.020),
                                          child: Image.asset(
                                            IconPath.googleImg,
                                            height:  screenWidth * 0.050,
                                            width:  screenWidth * 0.050,
                                          )),
                                    ),
                                  ),
                                  Text('5'
                                      ,
                                      style:
                                      TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight:
                                        FontWeight.w600,
                                        color: ApkColors
                                            .primaryColor,
                                        fontSize:  screenWidth * 0.015,))

                                ],
                              )

                          ),
                          DataCell(Text('Harry'
                              ,
                              style:
                              TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight:
                                FontWeight.w600,
                                color: ApkColors
                                    .primaryColor,
                                fontSize:  screenWidth * 0.015,))),
                          DataCell(

                              Row(
                                children: [
                                  Icon(Icons.circle,color: ApkColors.underReviewColor,
                                    size: 12.px,),
                                  SizedBox(width: 10.px,),
                                  Text('Under Review'
                                      ,
                                      style:
                                      TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight:
                                        FontWeight.w600,
                                        color: ApkColors
                                            .primaryColor,
                                        fontSize:  screenWidth * 0.015,))

                                ],
                              )

                          ),
                          DataCell(Text('Leader'
                              ,
                              style:
                              TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight:
                                FontWeight.w600,
                                color: ApkColors
                                    .primaryColor,
                                fontSize:  screenWidth * 0.015,))),
                        ]),
                        DataRow(cells: [
                          DataCell(

                              Row(
                                children: [
                                  Container(
                                    height:  screenWidth * 0.050,
                                    width:  screenWidth * 0.050,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular( screenWidth * 0.025),
                                    ),
                                    child: GestureDetector(
                                      onTap: (){
                                        Get.toNamed(Routes.PROFILE_SCREEN);
                                      },
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(screenWidth * 0.020),
                                          child: Image.asset(
                                            IconPath.googleImg,
                                            height:  screenWidth * 0.050,
                                            width:  screenWidth * 0.050,
                                          )),
                                    ),
                                  ),
                                  Text('5'
                                      ,
                                      style:
                                      TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight:
                                        FontWeight.w600,
                                        color: ApkColors
                                            .primaryColor,
                                        fontSize:  screenWidth * 0.015,))

                                ],
                              )

                          ),
                          DataCell(Text('Peter'
                              ,
                              style:
                              TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight:
                                FontWeight.w600,
                                color: ApkColors
                                    .primaryColor,
                                fontSize:  screenWidth * 0.015,))),
                          DataCell(

                              Row(
                                children: [
                                  Icon(Icons.circle,color: ApkColors.underReviewColor,
                                    size: 12.px,),
                                  SizedBox(width: 10.px,),
                                  Text('Under Review'
                                      ,
                                      style:
                                      TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight:
                                        FontWeight.w600,
                                        color: ApkColors
                                            .primaryColor,
                                        fontSize:  screenWidth * 0.015,))

                                ],
                              )

                          ),
                          DataCell(Text('Scientist'
                              ,
                              style:
                              TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight:
                                FontWeight.w600,
                                color: ApkColors
                                    .primaryColor,
                                fontSize:  screenWidth * 0.015,))),
                        ]),
                      ],
                    ),
                  ),
                ]),
              ),
              SizedBox(height:screenHeight * 0.030),
              Container(
                alignment: Alignment.center,
                 width: screenWidth * 0.200,
                padding: EdgeInsets.symmetric(vertical:screenWidth * 0.008 ),
                decoration: BoxDecoration(
                  color: ApkColors.orangeColor,
                  borderRadius: BorderRadius.circular( screenWidth * 0.025),
                ),
                child:   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    SizedBox(width:screenHeight * 0.010),

                    Icon(CupertinoIcons.chevron_left,color: ApkColors.backgroundColor,
                    size: screenWidth * 0.030,),
                    SizedBox(width:screenHeight * 0.010),
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
                        fontSize:  screenWidth * 0.020,),
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
                        fontSize:  screenWidth * 0.020,),
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
                        fontSize:  screenWidth * 0.020,),
                    ),
                    SizedBox(width:screenHeight * 0.010),
                    Container(
                      width: 2.px,
                      height: 30.px,
                      color: ApkColors.backgroundColor,
                    ),


                    Icon(CupertinoIcons.chevron_forward,color: ApkColors.backgroundColor,
                      size: screenWidth * 0.030,),
                    SizedBox(width:screenHeight * 0.010),
                  ],
                )




              )
            ],
          )

        ),
      );
    });



  }


  Widget _buildHeader({Function()? onPressedMenu}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacing),
      child: Row(
        children: [
          if (onPressedMenu != null)
            Padding(
              padding: const EdgeInsets.only(right: kSpacing),
              child: IconButton(
                onPressed: onPressedMenu,
                icon: const Icon(EvaIcons.bell),
                tooltip: "menu",
                color: ApkColors.orangeColor,
              ),
            ),
           Expanded(child: Row(
            children: [
              Container(
                color: ApkColors.primaryColor,
                height: 60.px,
                width: 500.px,
              )
            ],
          )),
        ],
      ),
    );
  }

  // AppBar(
  //   toolbarHeight: screenHeight * 0.08,
  //   backgroundColor: ApkColors.backgroundColor,
  //   surfaceTintColor: ApkColors.backgroundColor,
  //   scrolledUnderElevation: 0,
  //   // forceMaterialTransparency: true,
  //   elevation: 5,
  //   shadowColor: ApkColors.grey.withOpacity(0.5),
  //   leadingWidth: screenWidth * 0.2,
  //   title: Container(
  //     margin: const EdgeInsets.all(8),
  //     decoration: BoxDecoration(
  //       // color: Colors.cyan,
  //       borderRadius: BorderRadius.circular(5),
  //     ),
  //     child: Image.asset(
  //       IconPath.mammothOneSt,
  //       width: screenWidth * 0.15,
  //       fit: BoxFit.fitWidth,
  //     ),
  //   ),
  //   actions: List<Widget>.generate(
  //     4,
  //         (index) {
  //       if (index < 3) {
  //         return Padding(
  //           padding:
  //           const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
  //           child: InkWell(
  //             onHover: (isHover) {
  //
  //               if (isHover) {
  //                 hoveredHeaderIndex = index;
  //               } else {
  //                 hoveredHeaderIndex = -1;
  //               }
  //
  //               controller.increment();
  //
  //             },
  //             onTap: () async {
  //               // var url = Uri.parse(AppConstants.headersUrlList[index]);
  //               // await launchUrl(url);
  //             },
  //             child: Container(
  //               color: hoveredHeaderIndex == index
  //                   ? ApkColors.orangeColor
  //                   : Colors.transparent,
  //               padding:
  //               const EdgeInsets.symmetric(vertical: 1, horizontal: 10),
  //
  //               child: Text(
  //                 AppConstants.headersList[index],
  //                 style: TextStyle(
  //                   fontSize: screenWidth * 0.013,
  //                   fontWeight: FontWeight.w600,
  //                 ),
  //               ),
  //             ),
  //           ),
  //         );
  //       } else {
  //         return InkWell(
  //           onHover: (isHover) {
  //
  //             isCallbackHover = isHover;
  //
  //             controller.increment();
  //
  //           },
  //           onTap: () {},
  //           splashColor: Colors.transparent,
  //           splashFactory: NoSplash.splashFactory,
  //           overlayColor:
  //           const WidgetStatePropertyAll(Colors.transparent),
  //           child: Container(
  //             margin: EdgeInsets.fromLTRB(
  //                 screenWidth * 0.015,
  //                 screenWidth * 0.015,
  //                 screenWidth * 0.02,
  //                 screenWidth * 0.015),
  //             padding: EdgeInsets.symmetric(
  //                 horizontal: screenWidth * 0.02, vertical: 13),
  //             decoration: BoxDecoration(
  //               color: isCallbackHover ? ApkColors.orangeColor : ApkColors.primaryColor,
  //               borderRadius: BorderRadius.circular(10),
  //               border: Border.all(
  //                 color: isCallbackHover
  //                     ? ApkColors.black
  //                     : Colors.transparent,
  //                 width: 1.5,
  //               ),
  //             ),
  //             child: Text(
  //               "GET A CALLBACK",
  //               style: TextStyle(
  //                 color:
  //                 isCallbackHover ? ApkColors.black : ApkColors.backgroundColor,
  //                 fontSize: screenWidth * 0.013,
  //                 fontWeight: FontWeight.w600,
  //               ),
  //             ),
  //           ),
  //         );
  //       }
  //     },
  //   ),
  // ),

  Widget _buildProgress({Axis axis = Axis.horizontal}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacing),
      child: (axis == Axis.horizontal)
          ? Row(
        children: [
          Flexible(
            flex: 5,
            child:Container(
              color: ApkColors.orangeColor,
              height: 60.px,
              width: 100.px,
            ),
          ),
          const SizedBox(width: kSpacing / 2),
           Flexible(
            flex: 4,
            child:Container(
              color: ApkColors.orangeColor,
              height: 60.px,
              width: 100.px,
            ),
          ),
        ],
      )
          : Column(
        children: [
          Container(
            color: ApkColors.orangeColor,
            height: 60.px,
            width: 100.px,
          ),
          const SizedBox(height: kSpacing / 2),
        Container(
            color: ApkColors.orangeColor,
            height: 60.px,
            width: 100.px,
          ),
        ],
      ),
    );
  }

  Widget _buildTaskOverview({
    int crossAxisCount = 6,
    int crossAxisCellCount = 2,
    Axis headerAxis = Axis.horizontal,
  }) {
    return Container(
      color: ApkColors.orangeColor,
      height: 150.px,
      width: 200.px,
    );
  }

  Widget _buildActiveProject({
    //List<ProjectCardData> data,
    int crossAxisCount = 6,
    int crossAxisCellCount = 2,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacing),
      child: Container(
        color: ApkColors.orangeColor,
        height: 60.px,
        width: 100.px,
      )
      );
  }

  Widget _buildProfile({required Profile data}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacing),
      child: ProfilTile(
        data: data,
        onPressedNotification: () {},
      ),
    );
  }

  Widget _buildTeamMember({ String? data}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50.px,
            width: 100.px,
            color: ApkColors.primaryColor,
          ),
          const SizedBox(height: kSpacing / 2),
          Container(
            height: 50.px,
            width: 100.px,
            color: ApkColors.primaryColor,
          ),
        ],
      ),
    );
  }

  Widget _buildRecentMessages({
     //List<ChattingCardData> data
String? name
  }
      ) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: kSpacing),
        child: Container(
          height: 50.px,
          width: 100.px,
          color: ApkColors.primaryColor,
        ),
      ),
      const SizedBox(height: kSpacing / 2),
      Container(
        height: 50.px,
        width: 100.px,
        color: ApkColors.primaryColor,
      ),
    ]);
  }
}

class GetPremiumCard {
}
