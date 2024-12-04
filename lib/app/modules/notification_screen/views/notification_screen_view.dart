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
    return Scaffold(
      backgroundColor: ApkColors.backgroundColor,
      appBar: PreferredSize(
        //preferredSize:  Size.fromHeight(80.0)
        preferredSize: Size.fromHeight(136.px),
        child: Container(
          decoration: BoxDecoration(color: ApkColors.primaryColor),
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

                      ),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    SizedBox(
                      width: 12.px,
                    ),
                    Text(
                      StringConstants.notification,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: ApkColors.backgroundColor,
                          fontSize: 26.px),
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
                //padding: EdgeInsets.symmetric(vertical: 34.px),
                itemBuilder: (context, index) {
                  //final item = SampleModel.cateItem[index];
                  return GestureDetector(
                    onTap: (){
                      // Get.toNamed(Routes.);
                    },
                    child: Container(
                      height: 120.px,
                      alignment: Alignment.center,

                      decoration: BoxDecoration(
                        color: ApkColors.backgroundColor,
                      ),
                      child: Column(
                        children: [


                          SizedBox(
                            height: 20.px,
                          ),

                          Row(
                            children: [
                              SizedBox(
                                width: 24.px,
                              ),
                              Container(
                                height: 60.px,
                                width: 60.px,
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(
                                      30.px),
                                  color: ApkColors.textEditColor,
                                ),
                                child: Image.asset(
                                  'assets/images/googlepng.png',
                                  height: 22.px,
                                  width: 22.px,
                                ),
                              ),
                              SizedBox(
                                width: 12.px,
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
                                              fontSize: 20.px),
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "2 Min ago",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight:
                                            FontWeight.w500,
                                            color: ApkColors
                                                .primaryColor,
                                            fontSize: 10.px),
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
                                            fontSize: 14.px),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20.px,
                              ),


                            ],
                          ),
                          SizedBox(
                            height: 24.px,
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
