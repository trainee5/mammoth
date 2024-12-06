import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mammoth/app/color/ApkColors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../CommonFile/CommonWidget.dart';
import '../../../Utils/StringConstants.dart';
import '../../../Utils/icon_path.dart';
import '../controllers/job_web_screen_controller.dart';

class JobWebScreenView extends GetView<JobWebScreenController> {
  const JobWebScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;



    final List<Exercise> exercises = [
      Exercise(
        name: '1',
        calories: 100,
        minutes: 10,
        isCompleted: true,
      ),
      Exercise(
        name: '2',
        calories: 80,
        minutes: 5,
        isCompleted:false,
      ),
      Exercise(
        name: '3',
        calories: 120,
        minutes: 15,
        isCompleted: false,
      ),
    ];

    Get.put(JobWebScreenController());
    Get.lazyPut<JobWebScreenController>(
      () => JobWebScreenController(),
    );

    return Obx(() {
      controller.count.value;
      return Scaffold(
          backgroundColor: ApkColors.backgroundColor,
          body: SingleChildScrollView(
              child: controller.onClickPostJob
                  ? SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [



                          SizedBox(height: screenWidth * 0.030),

                          /////     EDIT BOX TIME LINE ...........................//////////////////////////////////////////////////////////////////////////////////////////////////


                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(width: screenWidth * 0.075),
                              IconButton(
                                icon: SvgPicture.asset(
                                  IconPath.arrowLeftIcon,
                                  height: screenWidth * 0.020,
                                  width: screenWidth * 0.020,
                                  color: ApkColors.primaryColor,
                                ),
                                onPressed: () {
                                  controller.increment();
                                  clickOnItems[1] = false;
                                  clickOnItems[2] = false;
                                  clickOnItems[0] = true;
                                },
                              ),
                              Text(
                                "Post Job",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: ApkColors.primaryColor,
                                  fontSize: screenWidth * 0.015,
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.130),
                              Row(
                                children: [
                                  Container(
                                    width: screenWidth * 0.400,
                                    //color: ApkColors.primaryColor60p,
                                    alignment: Alignment.center,
                                    height: screenWidth * 0.050,
                                    child: ListView.builder(
                                      itemCount: exercises.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return TimelineTile(
                                          axis: TimelineAxis.horizontal,
                                          isFirst:  index == 0,
                                          isLast: index == exercises.length - 1,
                                          startChild: Container(
                                            // color: Colors.green,
                                            constraints: const BoxConstraints(
                                              minWidth: 250,
                                            ),
                                          ),
                                          endChild: Container(
                                            // color: ApkColors.orangeColor,
                                            constraints: const BoxConstraints(
                                              minWidth: 250,
                                            ),
                                          ),
                                          alignment: TimelineAlign.center,
                                          indicatorStyle: IndicatorStyle(
                                              width: 30,
                                              height: 30,
                                              color: clickOnItems[index]
                                                  ? ApkColors.orangeColor
                                                  : ApkColors.primaryColor,
                                              indicator: Container(
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: clickOnItems[index]
                                                        ? ApkColors.orangeColor
                                                        : ApkColors.primaryColor,
                                                  ),
                                                  child: Center(
                                                      child: Text(
                                                        "${index + 1}",
                                                        style: TextStyle(
                                                            fontFamily: 'Poppins',
                                                            fontWeight: FontWeight.w500,
                                                            color: ApkColors.backgroundColor,
                                                            fontSize: 20),
                                                      )))),
                                          afterLineStyle: LineStyle(
                                            thickness: 1,
                                            color:  clickOnItems[index]
                                                ? ApkColors.orangeColor
                                                : ApkColors.primaryColor,
                                          ),
                                          beforeLineStyle: LineStyle(
                                            thickness: 1,
                                            color:  clickOnItems[index]
                                                ? ApkColors.orangeColor
                                                : ApkColors.primaryColor,
                                          ),
                                        );


                                      },
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(width: screenWidth * 0.075),
                            ],
                          ),
                          SizedBox(height: screenWidth * 0.030),

                          /////     EDIT BOX ...........................//////////////////////////////////////////////////////////////////////////////////////////////////


                          Container(
                            width: screenWidth * 0.400,
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.046),
                            decoration: BoxDecoration(
                              color: ApkColors.backgroundColor,
                              borderRadius:
                                  BorderRadius.circular(screenWidth * 0.024),
                              border: Border.all(
                                  width: 1.px, color: ApkColors.orangeColor),
                            ),
                            child:  (clickOnItems[1] == true )
                                ?
                            (clickOnItems[2] == true )
                            ? Column(
                              children: [

                                SizedBox(
                                  height: 36.px,
                                ),
                                Container(
                                  //color: ApkColors.primaryColor,
                                  margin:
                                  EdgeInsets.symmetric(horizontal: 24.px),
                                  padding: EdgeInsets.only(bottom: 8.px),
                                  width: double.infinity,
                                  child: Text(
                                    "Your Contact Person",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        color: ApkColors.primaryColor,
                                        fontSize: 18.px),
                                  ),
                                ),
                                Obx(() {
                                  controller.count.value;
                                  return Container(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 24.px),
                                    height: 88.px,
                                    child: CommonWidget.commonTextField(
                                      // validator: controller.firstNameValidator,
                                      hintText: "Name",
                                      autofocus: false,
                                      filled: true,
                                      fillColor: ApkColors.textEditColor,
                                      enableBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color:
                                              ApkColors.primaryColorLite),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      keyboardType: TextInputType.emailAddress,
                                      //  controller: controller.firstNameController
                                    ),
                                  );
                                }),
                                SizedBox(
                                  height: 8.px,
                                ),
                                Container(
                                  margin:
                                  EdgeInsets.symmetric(horizontal: 24.px),
                                  padding: EdgeInsets.only(bottom: 8.px),
                                  width: double.infinity,
                                  child: Text(
                                    'Mob. Number',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        color: ApkColors.primaryColor,
                                        fontSize: 18.px),
                                  ),
                                ),
                                Obx(() {
                                  controller.count.value;
                                  return Container(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 24.px),
                                    height: 88.px,
                                    child: CommonWidget.commonTextField(
                                      //validator: controller.emailValidator,
                                      // labelText: StringConstants.enterHint,
                                      hintText: "9874563210",
                                      autofocus: false,
                                      filled: true,

                                      wntsuffixIcon: true,
                                      suffixIcon:  Padding(padding: EdgeInsets.all(10),
                                        child: SvgPicture.asset(
                                          IconPath.arrowDown,
                                          height: 32.px,
                                          width: 32.px,
                                        ),
                                      ),
                                      fillColor: ApkColors.textEditColor,
                                      enableBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color:
                                              ApkColors.primaryColorLite),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      keyboardType: TextInputType.emailAddress,
                                      // controller: controller.emailAddressController
                                    ),
                                  );
                                }),
                                SizedBox(
                                  height: 300.px,
                                ),



                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (ctx) => PlaceholderDialog(

                                          icon: Column(
                                            children: [
                                              Text(
                                                " Post a job \n Successfully",
                                                textAlign: TextAlign.center,
                                                maxLines: 2,
                                                style: TextStyle(

                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    color: ApkColors.primaryColor,
                                                    fontSize: 18.px),
                                              ),
                                              SizedBox(height: 50.px,),
                                              Image.asset(IconPath.submitImg,
                                                height: 150,
                                                  width: 150,
                                                fit: BoxFit.fill,
                                              )
                                            ],
                                          ),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.of(ctx).pop(),
                                              child: Text(''),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                    child: Container(
                                      height: 64.px,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 47.px),

                                      alignment: Alignment.center,
                                      // margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 24.px),
                                      decoration: BoxDecoration(
                                          color: ApkColors.orangeColor,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(32.px))),
                                      child: Text(
                                        StringConstants.next,
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            color: ApkColors.backgroundColor,
                                            fontSize: 18.px),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 40.px,
                                ),
                              ],
                            )
                            : Column(
                              children: [

                                SizedBox(
                                  height: 36.px,
                                ),
                                Container(
                                  //color: ApkColors.primaryColor,

                                  margin:
                                  EdgeInsets.symmetric(horizontal: 24.px),
                                  padding: EdgeInsets.only(bottom: 8.px),
                                  width: double.infinity,
                                  child: Text(
                                    "About the Jobs",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        color: ApkColors.primaryColor,
                                        fontSize: 18.px),
                                  ),
                                ),
                                Obx(() {
                                  controller.count.value;
                                  return Container(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 24.px),
                                    height:screenWidth * 0.100,
                                    child: CommonWidget.commonTextField(
                                      // validator: controller.firstNameValidator,
                                      hintText: "Describe the role, responsibilities, etc",
                                      autofocus: false,
                                      filled: true,
                                      maxLines: 20,
                                      fillColor: ApkColors.textEditColor,
                                      enableBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color:
                                              ApkColors.primaryColorLite),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      keyboardType: TextInputType.emailAddress,
                                      //  controller: controller.firstNameController
                                    ),
                                  );
                                }),
                                SizedBox(
                                  height: 8.px,
                                ),
                                Container(
                                  margin:
                                  EdgeInsets.symmetric(horizontal: 24.px),
                                  padding: EdgeInsets.only(bottom: 8.px),
                                  width: double.infinity,
                                  child: Text(
                                    'Your Task',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        color: ApkColors.primaryColor,
                                        fontSize: 18.px),
                                  ),
                                ),
                                Obx(() {
                                  controller.count.value;
                                  return Container(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 24.px),
                                    height:screenWidth * 0.100,
                                    child: CommonWidget.commonTextField(
                                      //validator: controller.emailValidator,
                                      // labelText: StringConstants.enterHint,
                                      hintText: "equest for tender documents"
                                          "Creating/entering/importing tender documents for tender processing",
                                      maxLines: 20,
                                      autofocus: false,
                                      filled: true,

                                      fillColor: ApkColors.textEditColor,
                                      enableBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color:
                                              ApkColors.primaryColorLite),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      keyboardType: TextInputType.emailAddress,
                                      // controller: controller.emailAddressController
                                    ),
                                  );
                                }),
                                SizedBox(
                                  height: 8.px,
                                ),
                                Container(
                                  //color: ApkColors.primaryColor,
                                  margin:
                                  EdgeInsets.symmetric(horizontal: 24.px),
                                  padding: EdgeInsets.only(bottom: 8.px),
                                  width: double.infinity,
                                  child: Text(
                                    "Requirements",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        color: ApkColors.primaryColor,
                                        fontSize: 18.px),
                                  ),
                                ),
                                Obx(() {
                                  controller.count.value;
                                  return Container(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 24.px),
                                    height:screenWidth * 0.100,
                                    child: CommonWidget.commonTextField(
                                      // validator: controller.mobilValidator,
                                      hintText: "Completed commercial training e.g. as an industrial clerk (m/f/d) or comparable"
                                          "Confident use of MS Office",
                                      autofocus: false,
                                      maxLines: 20,
                                      filled: true,
                                      fillColor: ApkColors.textEditColor,
                                      enableBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color:
                                              ApkColors.primaryColorLite),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      keyboardType: TextInputType.emailAddress,
                                      // controller: controller.phoneNumberController
                                    ),
                                  );
                                }),
                                SizedBox(
                                  height: 8.px,
                                ),



                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () {
                                      controller.increment();
                                      clickOnItems[0] =
                                      true;
                                      clickOnItems[1] =
                                      true;
                                      clickOnItems[2] =
                                      true;
                                    },
                                    child: Container(
                                      height: 64.px,
                                      margin:
                                      EdgeInsets.symmetric(horizontal: 47.px),

                                      alignment: Alignment.center,
                                      // margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 24.px),
                                      decoration: BoxDecoration(
                                          color: ApkColors.orangeColor,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(32.px))),
                                      child: Text(
                                        StringConstants.next,
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            color: ApkColors.backgroundColor,
                                            fontSize: 18.px),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 40.px,
                                ),
                              ],
                            )



                                : Column(
                              children: [
                                SizedBox(
                                  height: 36.px,
                                ),
                                Container(
                                  //color: ApkColors.primaryColor,
                                  margin:
                                  EdgeInsets.symmetric(horizontal: 24.px),
                                  padding: EdgeInsets.only(bottom: 8.px),
                                  width: double.infinity,
                                  child: Text(
                                    "Company Link",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        color: ApkColors.primaryColor,
                                        fontSize: 18.px),
                                  ),
                                ),
                                Obx(() {
                                  controller.count.value;
                                  return Container(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 24.px),
                                    height: 88.px,
                                    child: CommonWidget.commonTextField(
                                      // validator: controller.firstNameValidator,
                                      hintText: "Ex. www.1stmammuth.com",
                                      autofocus: false,
                                      filled: true,
                                      fillColor: ApkColors.textEditColor,
                                      enableBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color:
                                              ApkColors.primaryColorLite),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      keyboardType: TextInputType.emailAddress,
                                      //  controller: controller.firstNameController
                                    ),
                                  );
                                }),
                                SizedBox(
                                  height: 8.px,
                                ),
                                Container(
                                  margin:
                                  EdgeInsets.symmetric(horizontal: 24.px),
                                  padding: EdgeInsets.only(bottom: 8.px),
                                  width: double.infinity,
                                  child: Text(
                                    'Category',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        color: ApkColors.primaryColor,
                                        fontSize: 18.px),
                                  ),
                                ),
                                Obx(() {
                                  controller.count.value;
                                  return Container(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 24.px),
                                    height: 88.px,
                                    child: CommonWidget.commonTextField(
                                      //validator: controller.emailValidator,
                                      // labelText: StringConstants.enterHint,
                                      hintText: "Select Category",
                                      autofocus: false,
                                      filled: true,

                                      wntsuffixIcon: true,
                                      suffixIcon:  Padding(padding: EdgeInsets.all(10),
                                        child: SvgPicture.asset(
                                          IconPath.arrowDown,
                                          height: 32.px,
                                          width: 32.px,
                                        ),
                                      ),
                                      fillColor: ApkColors.textEditColor,
                                      enableBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color:
                                              ApkColors.primaryColorLite),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      keyboardType: TextInputType.emailAddress,
                                      // controller: controller.emailAddressController
                                    ),
                                  );
                                }),
                                SizedBox(
                                  height: 8.px,
                                ),
                                Container(
                                  //color: ApkColors.primaryColor,
                                  margin:
                                  EdgeInsets.symmetric(horizontal: 24.px),
                                  padding: EdgeInsets.only(bottom: 8.px),
                                  width: double.infinity,
                                  child: Text(
                                    "Title",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        color: ApkColors.primaryColor,
                                        fontSize: 18.px),
                                  ),
                                ),
                                Obx(() {
                                  controller.count.value;
                                  return Container(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 24.px),
                                    height: 88.px,
                                    child: CommonWidget.commonTextField(
                                      // validator: controller.mobilValidator,
                                      hintText: "EX. Web Designer",
                                      autofocus: false,
                                      filled: true,
                                      fillColor: ApkColors.textEditColor,
                                      enableBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color:
                                              ApkColors.primaryColorLite),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      keyboardType: TextInputType.emailAddress,
                                      // controller: controller.phoneNumberController
                                    ),
                                  );
                                }),
                                SizedBox(
                                  height: 8.px,
                                ),
                                Container(
                                  //color: ApkColors.primaryColor,
                                  margin:
                                  EdgeInsets.symmetric(horizontal: 24.px),
                                  padding: EdgeInsets.only(bottom: 8.px),
                                  width: double.infinity,
                                  child: Text(
                                    "Job Type",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        color: ApkColors.primaryColor,
                                        fontSize: 18.px),
                                  ),
                                ),
                                Obx(() {
                                  controller.count.value;
                                  return Container(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 24.px),
                                    height: 88.px,
                                    child: CommonWidget.commonTextField(
                                      hintText: "Select type",
                                      autofocus: false,
                                      wntsuffixIcon: true,
                                      suffixIcon:  Padding(padding: EdgeInsets.all(10),
                                        child: SvgPicture.asset(
                                          IconPath.arrowDown,
                                          height: 32.px,
                                          width: 32.px,
                                        ),
                                      ),
                                      filled: true,
                                      readOnly: true,
                                      fillColor: ApkColors.textEditColor,
                                      enableBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color:
                                              ApkColors.primaryColorLite),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      keyboardType: TextInputType.emailAddress,
                                    ),
                                  );
                                }),
                                SizedBox(
                                  height: 8.px,
                                ),
                                Container(
                                  //color: ApkColors.primaryColor,
                                  margin:
                                  EdgeInsets.symmetric(horizontal: 24.px),
                                  padding: EdgeInsets.only(bottom: 8.px),
                                  width: double.infinity,
                                  child: Text(
                                    "Location",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        color: ApkColors.primaryColor,
                                        fontSize: 18.px),
                                  ),
                                ),
                                Obx(() {
                                  controller.count.value;
                                  return Container(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 24.px),
                                    height: 88.px,
                                    child: CommonWidget.commonTextField(
                                      hintText: "Select",
                                      autofocus: false,
                                      filled: true,
                                      wntsuffixIcon: true,
                                      suffixIcon:  Padding(padding: EdgeInsets.all(10),
                                        child: SvgPicture.asset(
                                          IconPath.arrowDown,
                                          height: 32.px,
                                          width: 32.px,
                                        ),
                                      ),
                                      readOnly: true,
                                      fillColor: ApkColors.textEditColor,
                                      enableBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color:
                                              ApkColors.primaryColorLite),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      keyboardType: TextInputType.emailAddress,
                                    ),
                                  );
                                }),
                                SizedBox(
                                  height: 8.px,
                                ),
                                Container(
                                  //color: ApkColors.primaryColor,
                                  margin:
                                  EdgeInsets.symmetric(horizontal: 24.px),
                                  padding: EdgeInsets.only(bottom: 8.px),
                                  width: double.infinity,
                                  child: Text(
                                    "Salary Range",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        color: ApkColors.primaryColor,
                                        fontSize: 18.px),
                                  ),
                                ),
                                Obx(() {
                                  controller.count.value;
                                  return Container(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 24.px),
                                    height: 88.px,
                                    child: CommonWidget.commonTextField(
                                      hintText: "Ex. \$25k-35k/months",
                                      autofocus: false,
                                      filled: true,

                                      readOnly: true,
                                      fillColor: ApkColors.textEditColor,
                                      enableBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color:
                                              ApkColors.primaryColorLite),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      keyboardType: TextInputType.emailAddress,
                                    ),
                                  );
                                }),
                                SizedBox(
                                  height: 40.px,
                                ),



                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () {

                                      controller.increment();
                                      clickOnItems[0] =
                                      true;
                                      clickOnItems[1] =
                                      true;
                                    },
                                    child: Container(
                                      height: 64.px,
                                      margin:
                                      EdgeInsets.symmetric(horizontal: 47.px),

                                      alignment: Alignment.center,
                                      // margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 24.px),
                                      decoration: BoxDecoration(
                                          color: ApkColors.orangeColor,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(32.px))),
                                      child: Text(
                                        StringConstants.next,
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            color: ApkColors.backgroundColor,
                                            fontSize: 18.px),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 40.px,
                                ),
                              ],
                            )
                          ),
                          SizedBox(height: screenWidth * 0.030),
                        ],
                      ),
                    )


              /////     Post a Jobs ...........................//////////////////////////////////////////////////////////////////////////////////////////////////
                  : controller.onClickCategory
                      ? Column(
                          children: [
                            SizedBox(height: screenWidth * 0.030),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.067),
                              child: Text(
                                "Post a Jobs",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: ApkColors.primaryColor,
                                  fontSize: screenWidth * 0.028,
                                ),
                              ),
                            ),
                            SizedBox(height: screenWidth * 0.030),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.075),
                              child: GridView.builder(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemCount: 8,
                                physics: NeverScrollableScrollPhysics(),
                                padding: EdgeInsets.symmetric(
                                    vertical: 24.px, horizontal: 24.px),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
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
                                      child: Stack(
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

              /////     Post Job ...........................//////////////////////////////////////////////////////////////////////////////////////////////////


                      : Column(
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
                        )));
    });
  }
}


  List<bool> clickOnItems = List.filled(3,false);

class PlaceholderDialog extends StatelessWidget {
  const PlaceholderDialog({
    this.icon,
    this.actions = const [],
    super.key,
  });

  final Widget? icon;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      icon: icon,
      actionsAlignment: MainAxisAlignment.center,
      actionsOverflowButtonSpacing: 8.0,
      actions: actions,
    );
  }
}


