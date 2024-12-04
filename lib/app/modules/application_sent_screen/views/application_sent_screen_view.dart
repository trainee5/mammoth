import 'package:carded/carded.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../Utils/icon_path.dart';
import '../../../color/ApkColors.dart';
import '../../../routes/app_pages.dart';
import '../controllers/application_sent_screen_controller.dart';

class ApplicationSentScreenView
    extends GetView<ApplicationSentScreenController> {
  const ApplicationSentScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ApkColors.backgroundColor,
      appBar:PreferredSize(
        //preferredSize:  Size.fromHeight(80.0)
        preferredSize:  Size.fromHeight(126.px),
        child: Container(
          decoration: BoxDecoration(
              color: ApkColors.primaryColor
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 60.px,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.px),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: SvgPicture.asset(
                        IconPath.arrowLeftIcon,
                        height: 32.px,
                        width: 32.px,
                      ),
                      onPressed: () {
                       Get.back();
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
      body: Column(
        children: [
          SizedBox(
            height: 64.px,
          ),
          CardyContainer(
            blurRadius: 20.px,
            height: 414.px,
            width: double.infinity,
            color: ApkColors.backgroundColor,
            padding: EdgeInsets.all(24.px),
            margin: EdgeInsets.symmetric(horizontal: 32.px),
            borderRadius: BorderRadius.circular(32.px),
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
                      fontSize: 26.px),
                ),
                SizedBox(height: 24.px,),
                Text(
                  "Thank you for applying. We’re rooting for your success!",
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: ApkColors.primaryColor,
                      fontSize: 20.px),
                ),
                SizedBox(height: 69.px,),
                Image.asset(IconPath.submitImg,
                  height: 163.px,
                  width: 163.px,
                )
              ],

            ),
          ),
          SizedBox(
            height: 64.px,
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.APPLICATION_STATUS_SCREEN);
            },
            child: Container(
              height: 64.px,
              margin: EdgeInsets.symmetric(horizontal: 47.px),

              alignment: Alignment.center,
              // margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 24.px),
              decoration: BoxDecoration(
                  color:
                  ApkColors.orangeColor,
                  borderRadius:
                  BorderRadius.all(
                      Radius.circular(
                          32.px))),
              child: Text(
                "Submit",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight:
                    FontWeight.w600,
                    color: ApkColors
                        .backgroundColor,
                    fontSize: 18.px),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
