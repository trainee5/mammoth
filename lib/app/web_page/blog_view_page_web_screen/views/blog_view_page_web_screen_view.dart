import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:mammoth/app/color/ApkColors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../Utils/icon_path.dart';
import '../controllers/blog_view_page_web_screen_controller.dart';

class BlogViewPageWebScreenView
    extends GetView<BlogViewPageWebScreenController> {
  const BlogViewPageWebScreenView({super.key});


  @override
  Widget build(BuildContext context) {

      Get.put(BlogViewPageWebScreenController());
      Get.lazyPut<BlogViewPageWebScreenController>(
            () => BlogViewPageWebScreenController(),
      );

      final screenHeight = MediaQuery.of(context).size.height;
      final screenWidth = MediaQuery.of(context).size.width;


    return

      Obx((){
        controller.count.value;
        return Scaffold(
          backgroundColor: ApkColors.backgroundColor,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(
                  height: screenWidth * 0.030,
                ),

                Row(
                  children: [
                    SizedBox(
                      width: screenWidth * 0.075,
                    ),
                    IconButton(
                      icon: SvgPicture.asset(
                        IconPath.arrowLeftIcon,
                        height: screenWidth * 0.040,
                        width: screenWidth * 0.040,
                        color: ApkColors.primaryColor,
                      ),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    Text(
                      "Post Job",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: ApkColors.primaryColor,
                        fontSize: screenWidth * 0.024,
                      ),
                    ),

                  ],
                ),

                SizedBox(
                  height: screenWidth * 0.036,
                ),


                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.220),
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
                SizedBox(
                  height: screenWidth * 0.008,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.220),
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
                SizedBox(
                  height: screenWidth * 0.012,
                ),
                Container(
                  width: double.infinity,
                  height: screenWidth * 0.200,
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(screenWidth * 0.012),
                    //color: ApkColors.primaryColor
                  ),
                  margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.220),

                  child: Image.asset(IconPath.rectangleImg,
                    fit: BoxFit.fill,


                  ),
                ),
                SizedBox(
                  height: screenWidth * 0.012,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.220),
                  child: Text(
                    "Go into the interview with confidence",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: ApkColors.primaryColor,
                      fontSize: screenWidth * 0.024,
                    ),
                  ),
                ),
                SizedBox(
                  height: screenWidth * 0.012,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.220),
                  child: Text(
                    "Whether your last boss was a bullying dictator or you're full of post-graduate anxiety, expect the best. When faced with the challenge of talking about past employment, be prepared to frame even the most reasonable complaints in a positive way. Speaking of which, maintain your integrity and never lie. Trust in your coworkers is crucial ,and getting caught out in an interview can mean an instant rejection.",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: screenWidth * 0.020,
                    ),
                    maxLines: 4,
                  ),

                ),
                SizedBox(
                  height: screenWidth * 0.012,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.220),
                  child: Text(
                    "Go into the interview with confidence",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: ApkColors.primaryColor,
                      fontSize: screenWidth * 0.024,
                    ),
                  ),
                ),
                SizedBox(
                  height: screenWidth * 0.060,
                ),




              ],
            ),
          ),
        );
      });
  }
}
