import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:mammoth/app/Utils/icon_path.dart';
import 'package:mammoth/app/color/ApkColors.dart';
import 'package:mammoth/app/routes/app_pages.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../CommonFile/CommonWidget.dart';
import '../../../Utils/StringConstants.dart';
import '../../blog_view_page_web_screen/views/blog_view_page_web_screen_view.dart';
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
        body:  controller.onClickPost
            ? SingleChildScrollView(
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
                        width: screenWidth * 0.630,

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
                          return MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: (){
                                controller.increment();
                                controller.onClickPost =
                                !controller.onClickPost;
                              },
                              child: Container(

                                height: screenWidth * 0.380,
                                margin: EdgeInsets.only(bottom:screenWidth * 0.030),
                                // padding: EdgeInsets.symmetric(
                                //     horizontal: screenWidth * 0.046),
                                decoration: BoxDecoration(
                                  color: ApkColors.textEditColor,
                                  borderRadius:
                                  BorderRadius.circular(screenWidth * 0.014),
                                  border: Border.all(
                                      width: 0.5.px, color: ApkColors.orangeColor),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Container(
                                      width: screenWidth * 0.400,
                                      height: screenWidth * 0.132,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(screenWidth * 0.012),
                                        //color: ApkColors.primaryColor
                                      ),
                                      padding: EdgeInsets.all(screenWidth * 0.010),

                                      child: Image.asset(IconPath.rectangleImg,
                                        fit: BoxFit.fill,


                                      ),
                                    ),
                                    SizedBox(
                                      height: screenWidth * 0.012,
                                    ),
                                    Flexible(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.010),
                                        child: Text(
                                          "New job? These 6 things you should consider",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            color: ApkColors.primaryColor,
                                            fontSize: screenWidth * 0.024,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: screenWidth * 0.012,
                                    ),
                                    SizedBox(
                                     // color: Colors.black,
                                      height: screenWidth * 0.150,
                                      child: Stack(
                                      children: [

                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.010),
                                          child: Text(
                                            "You may be excited because you have been offered a \nnew job or this may be your first attempt at full-time \nemployment.",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black,
                                              fontSize: screenWidth * 0.020,
                                            ),
                                            maxLines: 3,
                                          ),

                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                            height: screenWidth * 0.060,
                                            width: screenWidth * 0.060,
                                            padding: EdgeInsets.all(16.px),
                                            margin: EdgeInsets.all(16.px),
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: ApkColors.orangeColor),
                                            child: SvgPicture.asset(
                                              IconPath.arrowUpRight,
                                              height: screenWidth * 0.030,
                                              width:screenWidth * 0.030,
                                              color: ApkColors.backgroundColor,
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
                          );
                        }),


                      ),
                    ),
                    SizedBox(width: screenWidth * 0.030,),
                    Expanded(
                      child:

                      Container(
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
                                horizontal: screenWidth * 0.020),
                            decoration: BoxDecoration(
                              color: ApkColors.backgroundColor,
                              borderRadius:
                              BorderRadius.circular(screenWidth * 0.024),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: screenWidth * 0.035,
                                ),

                                Container(
                                  margin:
                                  EdgeInsets.symmetric(horizontal:  screenWidth * 0.024),
                                  padding: EdgeInsets.only(bottom:  screenWidth * 0.008),
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
                                  height: screenWidth * 0.010,
                                ),
                                Container(
                                  //color: ApkColors.primaryColor,
                                  margin:
                                  EdgeInsets.symmetric(horizontal:  screenWidth * 0.024),
                                  padding: EdgeInsets.only(bottom:  screenWidth * 0.008),
                                  width: double.infinity,
                                  child: Text(
                                    "Heading",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        color: ApkColors.primaryColor,
                                        fontSize:  screenWidth * 0.018),
                                  ),
                                ),
                                Obx(() {
                                  controller.count.value;
                                  return Container(
                                    padding:
                                    EdgeInsets.symmetric(horizontal:  screenWidth * 0.024),
                                    height:  screenWidth * 0.100,
                                    child: CommonWidget.commonTextField(
                                      // validator: controller.firstNameValidator,
                                      hintText: "How to avoid the six most common mistakes in job interviews",
                                      autofocus: false,
                                      filled: true,
                                      fillColor: ApkColors.textEditColor,
                                      enableBorder:  OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color:
                                              ApkColors.primaryColorLite),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular( screenWidth * 0.012))),
                                      keyboardType: TextInputType.emailAddress,
                                      //  controller: controller.firstNameController
                                    ),
                                  );
                                }),
                                SizedBox(
                                  height: screenWidth * 0.010,
                                ),

                                Container(
                                  //color: ApkColors.primaryColor,

                                  margin:
                                  EdgeInsets.symmetric(horizontal:  screenWidth * 0.024),
                                  padding: EdgeInsets.only(bottom:  screenWidth * 0.008),
                                  width: double.infinity,
                                  child: Text(
                                    "Paragraph Text",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        color: ApkColors.primaryColor,
                                        fontSize:  screenWidth * 0.018),
                                  ),
                                ),
                                Obx(() {
                                  controller.count.value;
                                  return Container(
                                    padding:
                                    EdgeInsets.symmetric(horizontal:  screenWidth * 0.024),
                                    height:screenWidth * 0.100,
                                    child: CommonWidget.commonTextField(
                                      // validator: controller.firstNameValidator,
                                      hintText: "Go into the interview without fear: Dress formally and give clear, concise answers.",
                                      autofocus: false,
                                      filled: true,
                                      maxLines: 20,
                                      fillColor: ApkColors.textEditColor,
                                      enableBorder:  OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color:
                                              ApkColors.primaryColorLite),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular( screenWidth * 0.012))),
                                      keyboardType: TextInputType.emailAddress,
                                      //  controller: controller.firstNameController
                                    ),
                                  );
                                }),

                                SizedBox(
                                  height: screenWidth * 0.010,
                                ),




                                Container(
                                  margin:
                                  EdgeInsets.symmetric(horizontal:  screenWidth * 0.024),
                                  padding: EdgeInsets.only(bottom:  screenWidth * 0.008),
                                  width: double.infinity,
                                  child: Text(
                                    'Upload Photo',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        color: ApkColors.primaryColor,
                                        fontSize:  screenWidth * 0.018),
                                  ),
                                ),
                                Obx(() {
                                  controller.count.value;
                                  return Container(
                                    margin:
                                    EdgeInsets.symmetric(horizontal:  screenWidth * 0.024),
                                    height:  screenWidth * 0.100,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: ApkColors.textEditColor,
                                      borderRadius:
                                      BorderRadius.circular(screenWidth * 0.012),
                                      border: Border.all(
                                          width: 1.px, color: ApkColors.primaryColorLite),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          IconPath.cameraAdd,
                                          height: screenWidth * 0.028,
                                          width: screenWidth * 0.028,
                                          color: ApkColors.primaryColor,
                                        ),
                                        SizedBox(
                                          height: screenWidth * 0.008,
                                        ),
                                        Text(
                                          'Browse',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              color: ApkColors.primaryColor,
                                              fontSize:  screenWidth * 0.008),
                                        ),
                                      ],
                                    ),
                                  );
                                }),


                                SizedBox(
                                  height: screenWidth * 0.020,
                                ),


                                Container(
                                  margin:
                                  EdgeInsets.symmetric(horizontal:  screenWidth * 0.024),
                                  padding: EdgeInsets.only(bottom:  screenWidth * 0.008),
                                  width: double.infinity,
                                  child: Text(
                                    'Add',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        color: ApkColors.primaryColor,
                                        fontSize:  screenWidth * 0.018),
                                  ),
                                ),
                                Obx(() {
                                  controller.count.value;
                                  return Container(
                                    margin:
                                    EdgeInsets.symmetric(horizontal:  screenWidth * 0.024),
                                    height:  screenWidth * 0.044,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: ApkColors.textEditColor,
                                      borderRadius:
                                      BorderRadius.circular(screenWidth * 0.012),
                                      border: Border.all(
                                          width: 1.px, color: ApkColors.primaryColorLite),
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(width: screenWidth * 0.030,),
                                        Text(
                                          'Browse',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              color: ApkColors.hintColor,
                                              fontSize:  screenWidth * 0.012),
                                        ),

                                        Spacer(),

                                        Container(
                                          height: screenWidth * 0.064,
                                          width: screenWidth * 0.066,
                                          decoration: BoxDecoration(
                                            color: ApkColors.orangeColor,
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(screenWidth * 0.012),
                                              bottomRight: Radius.circular(screenWidth * 0.012),
                                            )
                                          ),
                                          child: Padding(


                                            padding: EdgeInsets.all(screenWidth * 0.010),
                                            child: SvgPicture.asset(
                                              IconPath.arrowDown,
                                              height: screenWidth * 0.028,
                                              width: screenWidth * 0.028,
                                              color: ApkColors.backgroundColor,
                                            ),

                                          ),
                                        ),




                                      ],
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

                                      controller.increment();
                                      controller.onClickPost =
                                      !controller.onClickPost;

                                     // Get.toNamed(Routes.BLOG_VIEW_PAGE_WEB_SCREEN);

                                    },
                                    child: Container(
                                      height: screenWidth * 0.044,
                                      margin:
                                      EdgeInsets.symmetric(horizontal:  screenWidth * 0.024),

                                      alignment: Alignment.center,
                                      // margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 24.px),
                                      decoration: BoxDecoration(
                                          color: ApkColors.orangeColor,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular( screenWidth * 0.032))),
                                      child: Text(
                                        "Post",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            color: ApkColors.backgroundColor,
                                            fontSize:  screenWidth * 0.018),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height:  screenWidth * 0.040,
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
          )



        )
            : SizedBox(
            height: screenHeight,
            width:screenWidth,
            child:   BlogViewPageWebScreenView()
        ),
      );
    });



  }
}
