import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../Utils/StringConstants.dart';
import '../../../Utils/icon_path.dart';
import '../../../color/ApkColors.dart';
import '../../../routes/app_pages.dart';
import '../controllers/all_job_category_controller.dart';

class AllJobCategoryView extends GetView<AllJobCategoryController> {
  const AllJobCategoryView({super.key});
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Obx((){
      controller.count.value;
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
                        StringConstants.allJobs,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: ApkColors.backgroundColor,
                            fontSize: screenHeight * 0.028),
                      ),
                      Spacer(),
                      IconButton(
                        icon: SvgPicture.asset(
                          IconPath.preferenceIcon,
                          height: screenHeight * 0.0322,
                          width: screenHeight * 0.0322,
                        ),
                        onPressed: () {
                          //Get.back();
                        },
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
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.0258),
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.025,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Job by preference",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: ApkColors.primaryColor,
                        fontSize: screenHeight * 0.0215),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.0365,
                ),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    // final item = SampleModel.cateItem[index];
                    return Padding(
                      padding: EdgeInsets.only(bottom: screenHeight * 0.0194),
                      child: GestureDetector(
                        onTap: (){
                          Get.toNamed(Routes.JOB_TAB_SCREEN);
                        },
                        child: Container(
                          height: screenHeight * 0.120,
                          alignment: Alignment.center,

                          decoration: BoxDecoration(
                            color: (index == 0) ? ApkColors.orangeColor :  ApkColors.textEditColor,
                            borderRadius:
                            BorderRadius.circular(screenHeight * 0.0194),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: screenHeight * 0.0258,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: screenHeight * 0.0258,
                                  ),
                                  Container(
                                    height: screenHeight * 0.0559,
                                    width: screenHeight * 0.0559,
                                    padding: EdgeInsets.all(screenHeight * 0.005),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(screenHeight * 0.007),
                                      color:(index == 0) ? ApkColors.backgroundColor :  ApkColors.orangeColor,
                                    ),
                                    child: GestureDetector(
                                      child: Image.asset(
                                        IconPath.blackBox,
                                        height: screenHeight * 0.0344,
                                        width: screenHeight * 0.0344,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenHeight * 0.0086,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        index == 0 ? "UI/UX Designer" : "Graphic Designer",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight:
                                            FontWeight.w500,
                                            color: (index == 0) ? ApkColors.backgroundColor :  ApkColors.primaryColor,
                                            fontSize: screenHeight * 0.0215),
                                      ),
                                      Text(
                                        "1st mammuth",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight:
                                            FontWeight.w500,
                                            color: (index == 0) ? ApkColors.backgroundColor90p :  ApkColors.primaryColor70p,
                                            fontSize: screenHeight * 0.0172),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenHeight * 0.0258,
                              ),

                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: screenHeight * 0.0537,
                )

              ],
            ),
          ),
        ),
      );
    });


  }
}
