import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mammoth/app/color/ApkColors.dart';
import 'package:mammoth/app/web_page/post_job_category_page/views/post_job_category_page_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../CommonFile/CommonWidget.dart';
import '../../../Utils/StringConstants.dart';
import '../../../Utils/icon_path.dart';
import '../../post_job_web_scren/views/post_job_web_scren_view.dart';
import '../controllers/job_web_screen_controller.dart';

class JobWebScreenView extends GetView<JobWebScreenController> {
  const JobWebScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;


    Get.put(JobWebScreenController());
    Get.lazyPut<JobWebScreenController>(
      () => JobWebScreenController(),
    );

    return Obx(() {
      controller.count.value;
      return Scaffold(
          backgroundColor: ApkColors.backgroundColor,
          body: SingleChildScrollView(
              child:  controller.onClickCategory

                  ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: screenWidth * 0.0416),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.067),
                              child: Text(
                                "Post a Jobs",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: ApkColors.primaryColor,
                                  fontSize: screenWidth * 0.0195,
                                ),
                              ),
                            ),
                            SizedBox(height: screenWidth * 0.0208),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.052),
                              child: GridView.builder(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemCount: 8,
                                physics: NeverScrollableScrollPhysics(),
                                padding: EdgeInsets.symmetric(
                                    vertical: 24.px, horizontal: 24.px),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  mainAxisSpacing: screenWidth * 0.030,
                                  crossAxisSpacing: screenWidth * 0.030,
                                  mainAxisExtent: screenWidth * 0.153,
                                ),
                                itemBuilder: (context, index) {
                                  //final item = SampleModel.cateItem[index];
                                  return MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () {
                                        //
                                        controller.increment();
                                        controller.onClickCategory =
                                        !controller.onClickCategory;


                                      },
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: screenWidth * 0.153,
                                            width: screenWidth * 0.208,
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.symmetric(
                                                horizontal:
                                                    screenWidth * 0.020),

                                            // padding: EdgeInsets.only(bottom: 18.px,left: 15.px,right: 15.px),

                                            decoration: BoxDecoration(
                                              color: (index == 0)
                                                  ? ApkColors.orangeColor
                                                  : ApkColors.textEditColor,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      screenWidth * 0.0084),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  height: screenWidth * 0.018,
                                                ),
                                                SizedBox(
                                                  height: screenWidth * 0.042,
                                                  width: screenWidth * 0.042,
                                                  child: SvgPicture.asset(
                                                    (index == 0)
                                                        ? IconPath.doctorIcon
                                                        : IconPath
                                                            .assistantIcon,
                                                    height: screenWidth * 0.23,
                                                    width: screenWidth * 0.023,
                                                    //color: ApkColors.backgroundColor,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: screenWidth * 0.008,
                                                ),
                                                Text(
                                                  "Doctors",
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: (index == 0)
                                                          ? ApkColors
                                                              .backgroundColor
                                                          : ApkColors
                                                              .primaryColor,
                                                      fontSize:
                                                          screenWidth * 0.014),
                                                ),
                                                SizedBox(
                                                  height: screenWidth * 0.005,
                                                ),
                                                Text(
                                                  "More than 100 jobs",
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: (index == 0)
                                                          ? ApkColors
                                                              .backgroundColor980p
                                                          : ApkColors
                                                              .primaryColor80p,
                                                      fontSize:
                                                          screenWidth * 0.011),
                                                ),
                                                SizedBox(
                                                  height: screenWidth * 0.015,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                              padding: EdgeInsets.all(
                                                  screenWidth * 0.010),
                                              child: Card(
                                                elevation: 10,
                                                child: Container(
                                                  height: screenWidth * 0.014,
                                                  width: screenWidth * 0.014,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: ApkColors
                                                        .backgroundColor,
                                                  ),
                                                  child: Icon(
                                                    Icons.more_vert_sharp,
                                                    color:
                                                        ApkColors.primaryColor,
                                                    size: screenWidth * 0.014,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.060),
                          ],
                        )
                  : SizedBox(
                  height: screenHeight,
                  width:screenWidth,
                  child:  PostJobCategoryPageView()// Your Widget
              )


             ));
    });
  }
}


  List<bool> clickOnItems = List.filled(3,false);

class PlaceholderDialog extends StatelessWidget {
  const PlaceholderDialog({
    this.icon,
    this.actions = const [],
    super.key,
  });

  final Widget? icon;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      icon: icon,
      actionsAlignment: MainAxisAlignment.center,
      actionsOverflowButtonSpacing: 8.0,
      actions: actions,
    );
  }
}


