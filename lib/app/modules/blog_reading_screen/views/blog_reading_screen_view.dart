import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../../../Utils/StringConstants.dart';
import '../../../Utils/icon_path.dart';
import '../../../color/ApkColors.dart';
import '../controllers/blog_reading_screen_controller.dart';

class BlogReadingScreenView extends GetView<BlogReadingScreenController> {
  const BlogReadingScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Obx((){
      controller.count.value;
      return Scaffold(
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
                          StringConstants.blog,
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
          body:SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: screenHeight * 0.0258),
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.0258,
                  ),

                  Image.asset(
                      IconPath.frameImage,
                        fit: BoxFit.fill,
                        height: screenHeight * 0.2061,
                    ),
                  SizedBox(
                    height: screenHeight * 0.0194,
                  ),
                  Text(
                    "New job? These 6 things you should consider",
                    maxLines: 2,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w500,
                        color: ApkColors.primaryColor,
                        fontSize: screenHeight * 0.0215),
                  ),
                  SizedBox(
                    height: screenHeight * 0.0086,
                  ),

                  Text(
                    "You may be excited because you've been Hold back on announcing on any of your social media channels until plans are definitive. You shouldn't leave any indicators ahead of time that you are planning to leave your job or have found a new position."
                     " Let me let you on a little secret: people love to talk."
                      "If news slips to the wrong person that you are switching positions or leaving a company,"
                      "the word can get to your boss quickly."
                      "It only takes one person."
                      " Job changes are a big deal,"
                    "so you want your network to know! Our first tip is to change all your profiles at once and make sure everything is up to date."
                    "  A great way to check your LinkedIn profile is to download Teal’s Free Chrome Extension which includes an automated LinkedIn Profile Review."
                    "  Once you install the extension just go to your profile page and click on the Teal logo."
                      " You’ll see a list of recommendations on how best to optimize your profile and can make updates before you announce your job change.",


                    style: TextStyle(
                        fontFamily: 'Poppins',
                       //  overflow:
                       // // TextOverflow.ellipsis,
                        fontWeight: FontWeight.w400,
                        color:
                        ApkColors.primaryColor,
                        fontSize: screenHeight * 0.0172),
                  ),
                  SizedBox(
                    height: screenHeight * 0.0537,
                  )


                ],
              ),
            ),
          )
      );
    });


  }
}
