import 'package:carded/carded.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../Utils/StringConstants.dart';
import '../../../Utils/icon_path.dart';
import '../../../color/ApkColors.dart';
import '../../../routes/app_pages.dart';
import '../controllers/application_sent_screen_controller.dart';

class ApplicationSentScreenView
    extends GetView<ApplicationSentScreenController> {
  const ApplicationSentScreenView({super.key});

  @override
  Widget build(BuildContext context) {


    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;


    return Scaffold(
      backgroundColor: ApkColors.backgroundColor,
      appBar:PreferredSize(
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
      body: Column(
        children: [
          SizedBox(height: screenHeight * 0.0687,),
          CardyContainer(
            blurRadius: 20.px,
            height: screenHeight * 0.4444,
            width: double.infinity,
            color: ApkColors.backgroundColor,
            padding: EdgeInsets.all(screenHeight * 0.0258),
            margin: EdgeInsets.symmetric(horizontal: screenHeight * 0.0344),
            borderRadius: BorderRadius.circular(screenHeight * 0.0344),
            blurStyle: BlurStyle.outer,
            shadowColor: ApkColors.blackShadow,
            shadowOffset: Offset(
              0.px,4.px
            ),
            child:Column(
              children: [
                Text(
                  "Application Sent",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: ApkColors.primaryColor,
                      fontSize: screenHeight * 0.0279),
                ),
                SizedBox(height: screenHeight * 0.0258,),
                Text(
                  "Thank you for applying. We’re rooting for your success!",
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: ApkColors.primaryColor,
                      fontSize: screenHeight * 0.0215),
                ),
                SizedBox(height:screenHeight * 0.0741,),
                Image.asset(IconPath.submitImg,
                  height: screenHeight * 0.175,
                  width: screenHeight * 0.175,
                )
              ],

            ),
          ),
          SizedBox(
            height:screenHeight * 0.0687,
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.APPLICATION_STATUS_SCREEN);
            },
            child: Container(
              height: screenHeight * 0.0687,
              margin: EdgeInsets.symmetric(horizontal: screenHeight * 0.0511),

              alignment: Alignment.center,
              // margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 24.px),
              decoration: BoxDecoration(
                  color:
                  ApkColors.orangeColor,
                  borderRadius:
                  BorderRadius.all(
                      Radius.circular(
                          screenHeight * 0.0344))),
              child: Text(
                "Submit",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight:
                    FontWeight.w600,
                    color: ApkColors
                        .backgroundColor,
                    fontSize: screenHeight * 0.0194),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
