import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:mammoth/app/color/ApkColors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../Utils/StringConstants.dart';
import '../../../Utils/icon_path.dart';
import '../controllers/faq_screen_controller.dart';

class FaqScreenView extends GetView<FaqScreenController> {
  const FaqScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: ApkColors.backgroundColor,
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
                        StringConstants.fAQ,
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
                  itemCount: 6,
                  padding:
                      EdgeInsets.symmetric(vertical: screenHeight * 0.0258),
                  itemBuilder: (context, index) {
                    //final item = SampleModel.cateItem[index];
                    return GestureDetector(
                        onTap: () {
                          controller.increment();
                          controller.clickOnItems[index] =
                              (!controller.clickOnItems[index]);

                          // Get.toNamed(Routes.);
                        },
                        child: Column(
                          children: [
                            Container(
                              height: screenHeight * 0.0526,
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenHeight * 0.0258),
                              margin: controller.clickOnItems[index] ? EdgeInsets.only(
                                  left: screenHeight * 0.0258,
                                  right: screenHeight * 0.0258,

                              ) :EdgeInsets.only(
                                  left: screenHeight * 0.0258,
                                  right: screenHeight * 0.0258,
                                  bottom: screenHeight * 0.0194
                              ),
                              decoration: BoxDecoration(
                                color: ApkColors.backgroundColor,
                                borderRadius: BorderRadius.circular(
                                    screenHeight * 0.0129),
                                border: Border.all(
                                    width: 1.px, color: ApkColors.orangeColor),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "How do I create an account?",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        color: ApkColors.primaryColor,
                                        fontSize: screenHeight * 0.0172),
                                  ),
                                  Spacer(),
                                  controller.clickOnItems[index]
                                      ? SvgPicture.asset(
                                          IconPath.arrowUP,
                                          height: screenHeight * 0.0237,
                                          width: screenHeight * 0.0237,
                                        )
                                      : SvgPicture.asset(
                                          IconPath.arrowDown,
                                          height: screenHeight * 0.0237,
                                          width: screenHeight * 0.0237,
                                        )
                                ],
                              ),
                            ),
                            controller.clickOnItems[index]
                                ? Container(
                                    margin: EdgeInsets.only(
                                        left: screenHeight * 0.0100,
                                        right: screenHeight * 0.0100,
                                        bottom: screenHeight * 0.0194),
                                    child: ListTile(
                                      title: Container(
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.all(
                                            screenHeight * 0.010),
                                        decoration: BoxDecoration(
                                          color: ApkColors.textEditColor,
                                          borderRadius: BorderRadius.circular(
                                              screenHeight * 0.0129),
                                        ),
                                        child: Text(
                                          "You can track your job applications under the My Applications tab in your dashboard. You’ll see the status of each application, such as Under Review or Shortlisted,",
                                          textAlign: TextAlign.start,
                                          maxLines: 5,
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              color: ApkColors.primaryColor,
                                              fontSize: screenHeight * 0.0172),
                                        ),
                                      ),
                                    ),
                                  )
                                : SizedBox()
                          ],
                        )



                        );
                  },
                ),
                SizedBox(
                  height: screenHeight * 0.0,
                )
              ],
            ),
          );
        }));
  }
}
