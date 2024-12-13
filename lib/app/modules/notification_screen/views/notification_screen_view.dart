import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:mammoth/app/color/ApkColors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../Utils/StringConstants.dart';
import '../../../Utils/icon_path.dart';
import '../controllers/notification_screen_controller.dart';

class NotificationScreenView extends GetView<NotificationScreenController> {
  const NotificationScreenView({super.key});

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
                padding:
                EdgeInsets.symmetric(horizontal: screenHeight * 0.0215),
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
                      StringConstants.notification,
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
      body: Obx(() {
        controller.count.value;
        return SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  //final item = SampleModel.cateItem[index];
                  return GestureDetector(
                    onTap: (){
                      // Get.toNamed(Routes.);
                    },
                    child: Container(
                      height: screenHeight * 0.135,
                      alignment: Alignment.center,

                      decoration: BoxDecoration(
                        color: ApkColors.backgroundColor,
                      ),
                      child: Column(
                        children: [


                          SizedBox(
                            height:  screenHeight * 0.02467,
                          ),

                          Row(
                            children: [
                              SizedBox(
                                width:  screenHeight * 0.0258,
                              ),
                              Container(
                                height: screenHeight * 0.0644,
                                width: screenHeight * 0.0644,
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(
                                    screenHeight * 0.0322),
                                  color: ApkColors.textEditColor,
                                ),
                                child: Image.asset(
                                  'assets/images/googlepng.png',
                                  height: screenHeight * 0.0237,
                                  width: screenHeight * 0.0237,
                                ),
                              ),
                              SizedBox(
                                width:  screenHeight * 0.0129,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          "Google",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight:
                                              FontWeight.w500,
                                              color: ApkColors
                                                  .primaryColor,
                                              fontSize:  screenHeight * 0.0215),
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "2 Min ago",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight:
                                            FontWeight.w400,
                                            color: ApkColors
                                                .primaryColor,
                                            fontSize: screenHeight * 0.0111),
                                      ),

                                    ],
                                    ),
                                    SizedBox(
                                      child: Text(
                                        "Congratulation🎉!! Your application for Graphic Designer has been shortlisted.",
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: true,
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight:
                                            FontWeight.w200,
                                            color: ApkColors
                                                .primaryColor80p,
                                            fontSize: screenHeight * 0.0135),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width:  screenHeight * 0.0258,
                              ),


                            ],
                          ),
                          SizedBox(
                            height:  screenHeight * 0.0258,
                          ),
                          Divider(
                            color: ApkColors.primaryColor,
                            height: 1.px,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),

            ],
          ),
        );
      },)
    );
  }
}
