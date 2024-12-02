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
    return Scaffold(
      backgroundColor: ApkColors.backgroundColor,
      appBar:PreferredSize(
        //preferredSize:  Size.fromHeight(80.0)
        preferredSize:  Size.fromHeight(136.px),
        child: Container(
          decoration: BoxDecoration(
              color: ApkColors.primaryColor
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 70.px,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: SvgPicture.asset(
                        IconPath.arrowLeftIcon,
                        height: 32.px,
                        width: 32.px,
                        color: ApkColors.backgroundColor,
                      ),
                      onPressed: () {
                        // controller.openDrawer();
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
      Image.asset(IconPath.frameImage2),
          SizedBox(
            height: 64.px,
          ),
          GestureDetector(
            onTap: () {

             // Get.toNamed(Routes.APPLICATION_SENT_SCREEN);
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
