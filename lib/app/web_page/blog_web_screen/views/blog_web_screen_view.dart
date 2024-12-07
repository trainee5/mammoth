import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:mammoth/app/Utils/icon_path.dart';
import 'package:mammoth/app/color/ApkColors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../CommonFile/CommonWidget.dart';
import '../../../Utils/StringConstants.dart';
import '../controllers/blog_web_screen_controller.dart';

class BlogWebScreenView extends GetView<BlogWebScreenController> {
  const BlogWebScreenView({super.key});

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    Get.put(BlogWebScreenController());
    Get.lazyPut<BlogWebScreenController>(
          () => BlogWebScreenController(),
    );

    return Obx((){
      controller.count.value;
      return Scaffold(
        backgroundColor: ApkColors.backgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.075),
            child: Column(
              children: [

                SizedBox(
                  height: screenWidth * 0.060,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(

                        width: screenWidth * 0.400,
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.046),
                        decoration: BoxDecoration(
                          color: ApkColors.backgroundColor,
                          borderRadius:
                          BorderRadius.circular(screenWidth * 0.024),
                          // border: Border.all(
                          //     width: 1.px, color: ApkColors.orangeColor),
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                            itemCount: 6,
                            physics: ClampingScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context,index){
                          return Container(
                            height: screenWidth * 0.200,
                            width: screenWidth * 0.400,
                            margin: EdgeInsets.only(bottom:screenWidth * 0.030),
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.046),
                            decoration: BoxDecoration(
                              color: ApkColors.textEditColor,
                              borderRadius:
                              BorderRadius.circular(screenWidth * 0.014),
                              border: Border.all(
                                  width: 0.5.px, color: ApkColors.orangeColor),
                            ),
                            child: Column(

                              children: [
                                Container(
                                  
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(screenWidth * 0.012),
                                  ),
                                  padding: EdgeInsets.all(screenWidth * 0.010),
                                  height: screenWidth * 0.100,
                                  child: Image.asset(IconPath.rectangleImg,
                                    fit: BoxFit.fill,

                                  ),
                                ),
                                SizedBox(
                                  height: screenWidth * 0.012,
                                ),
                                Flexible(
                                  child: Text(
                                    "New job? These 6 things you should consider",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      color: ApkColors.primaryColor,
                                      fontSize: screenWidth * 0.012,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: screenWidth * 0.012,
                                ),
                                Row(
                                children: [

                                  Flexible(
                                    child: Text(
                                      "You may be excited because you have been offered a \nnew job or this may be your first attempt at full-time \nemployment.",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        color: ApkColors.primaryColor,
                                        fontSize: screenWidth * 0.008,
                                      ),
                                      maxLines: 3,
                                    ),
                                  ),
                                  Container(
                                    height: screenWidth * 0.034,
                                    width: screenWidth * 0.034,
                                    padding: EdgeInsets.all(16.px),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ApkColors.orangeColor),
                                    child: SvgPicture.asset(
                                      IconPath.arrowUpRight,
                                      height: screenWidth * 0.010,
                                      width:screenWidth * 0.010,
                                    ),
                                  ),
                                ],
                                ),

                              ],
                            ),

                          );
                        }),


                      ),
                    ),
                    SizedBox(width: screenWidth * 0.030,),
                    Expanded(
                      child:

                      Container(
                        height: screenWidth * 0.800,
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
                        child: Container(
                            width: screenWidth * 0.400,
                            padding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.046),
                            decoration: BoxDecoration(
                              color: ApkColors.backgroundColor,
                              borderRadius:
                              BorderRadius.circular(screenWidth * 0.024),
                            ),
                            child: Column(
                              children: [

                                Container(
                                  margin:
                                  EdgeInsets.symmetric(horizontal: 24.px),
                                  padding: EdgeInsets.only(bottom: 8.px),
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  child: Text(
                                    'Post Blog',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        color: ApkColors.primaryColor,
                                        fontSize: 25.px),
                                  ),
                                ),
                                SizedBox(
                                  height:30.px,
                                ),
                                Container(
                                  //color: ApkColors.primaryColor,
                                  margin:
                                  EdgeInsets.symmetric(horizontal: 24.px),
                                  padding: EdgeInsets.only(bottom: 8.px),
                                  width: double.infinity,
                                  child: Text(
                                    "Heading",
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
                                      hintText: "How to avoid the six most common mistakes in job interviews",
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
                                  //color: ApkColors.primaryColor,

                                  margin:
                                  EdgeInsets.symmetric(horizontal: 24.px),
                                  padding: EdgeInsets.only(bottom: 8.px),
                                  width: double.infinity,
                                  child: Text(
                                    "Paragraph Text",
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
                                      hintText: "Go into the interview without fear: Dress formally and give clear, concise answers.",
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
                                  height: 100.px,
                                ),





                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () {

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

                      ),

                    )
                  ],
                )

              ],
            ),
          ),
        ),
      );
    });



  }
}
