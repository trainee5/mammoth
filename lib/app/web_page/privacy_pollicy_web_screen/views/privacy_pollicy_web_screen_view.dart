import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../Utils/icon_path.dart';
import '../../../color/ApkColors.dart';
import '../controllers/privacy_pollicy_web_screen_controller.dart';

class PrivacyPollicyWebScreenView
    extends GetView<PrivacyPollicyWebScreenController> {
  const PrivacyPollicyWebScreenView({super.key});
  @override
  Widget build(BuildContext context) {


    Get.put(PrivacyPollicyWebScreenController());
    Get.lazyPut<PrivacyPollicyWebScreenController>(
          () => PrivacyPollicyWebScreenController(),
    );

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;


    return Obx((){
      controller.count.value;
      return Scaffold(
        backgroundColor: ApkColors.webBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: screenWidth * 0.0495,
              ),
              Row(
                children: [
                  SizedBox(
                    width: screenWidth * 0.052,
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                        // controller.increment();
                        // controller.onClickViewAll =
                        // !controller.onClickViewAll;

                      },
                      child: SizedBox(
                        height: screenWidth * 0.028,
                        width: screenWidth * 0.028,
                        child: SvgPicture.asset(
                          IconPath.arrowLeftIcon,
                          height: 25.px,
                          width: 25.px,
                          color: ApkColors.primaryColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.018,
                  ),
                  Text(
                    "Privacy Policy",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight:
                      FontWeight.w600,
                      color: ApkColors
                          .primaryColor,
                      fontSize: screenWidth * 0.0166,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.021),
              Container(
                //alignment: Alignment.center,
                width: screenWidth * 0.747,
                margin: EdgeInsets.symmetric(vertical: 0.007,horizontal: screenWidth * 0.082),
                decoration: BoxDecoration(
                  color: ApkColors.backgroundColor,
                  borderRadius:
                  BorderRadius.circular(screenWidth * 0.007),
                  border: Border.all(
                      width: 1.px, color: ApkColors.orangeColor),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenWidth * 0.0236,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.033),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: screenWidth * 0.021,
                          ),
                          Text(
                            "Last Update : 11 September 2024",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.primaryColor,
                                fontSize: 20.px),
                          ),
                          SizedBox(
                            height: 24.px,
                          ),
                          Text(
                            "1st mammuth (“we,” “our,” “us”) is committed to protecting your privacy. This Privacy Policy outlines how we collect, use, disclose, and safeguard your personal information when you use our social networking and job platform designed for stu dents. By accessing or using 1st mammuth, you consent to the practices described in this Privacy Policy.",
                            maxLines: 10,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: ApkColors.primaryColor,
                                fontSize: 16.px),
                          ),
                          SizedBox(
                            height: 24.px,
                          ),
                          Text(
                            "1. Information We Collect",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.primaryColor,
                                fontSize: 20.px),
                          ),
                          SizedBox(
                            height: 8.px,
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(screenWidth * 0.0083),
                            decoration: BoxDecoration(
                                color: ApkColors.textEditColor,
                                borderRadius: BorderRadius.circular(screenWidth * 0.0083)
                            ),
                            child: Text(
                              "We collect information to provide a better experience on 1st mammuth, facilitate networking and job connections, and ensure the security of our platform.",
                              maxLines: 10,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  color: ApkColors.primaryColor,
                                  fontSize: 16.px),
                            ),
                          ),
                          SizedBox(
                            height: 24.px,
                          ),
                          Text(
                            "2. How We Use Your Information",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.primaryColor,
                                fontSize: 20.px),
                          ),
                          SizedBox(
                            height: 8.px,
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(screenWidth * 0.0083),
                            decoration: BoxDecoration(
                                color: ApkColors.textEditColor,
                                borderRadius: BorderRadius.circular(screenWidth * 0.0083)
                            ),
                            child: Text(
                              "We use your information to provide a seamless experience on TellWhom, including:",
                              maxLines: 10,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  color: ApkColors.primaryColor,
                                  fontSize: 16.px),
                            ),
                          ),
                          SizedBox(
                            height: 12.px,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: ApkColors.textEditColor,
                                borderRadius: BorderRadius.circular(screenWidth * 0.0083)
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 0.0118,vertical: screenWidth * 0.0097),
                            height: 250.px,
                            child: ListView(
                              physics: NeverScrollableScrollPhysics(),
                              children: [
                                ListTile(
                                  title: Text(
                                    "Creating and managing your user profile and enabling interactions between students, businesses, and employers.",
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        color: ApkColors.primaryColor,
                                        fontSize: 16.px),
                                  ),
                                  leading: Icon(
                                    Icons.circle,
                                    color: ApkColors.primaryColor,
                                    size: 10,
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    "Facilitating job applications, part-time work matching, and networking opportunities.",
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        color: ApkColors.primaryColor,
                                        fontSize: 16.px),
                                  ),
                                  leading: Icon(
                                    Icons.circle,
                                    color: ApkColors.primaryColor,
                                    size: 10,
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    "Personalizing content and job suggestions based on your profile, preferences, and location.",
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        color: ApkColors.primaryColor,
                                        fontSize: 16.px),
                                  ),
                                  leading: Icon(
                                    Icons.circle,
                                    color: ApkColors.primaryColor,
                                    size: 10,
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    "Improving platform functionality, performance, and security.",
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        color: ApkColors.primaryColor,
                                        fontSize: 16.px),
                                  ),
                                  leading: Icon(
                                    Icons.circle,
                                    color: ApkColors.primaryColor,
                                    size: 10,
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    "Sending relevant communications, including updates, job recommendations, offers, promotions, and platform changes.",
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        color: ApkColors.primaryColor,
                                        fontSize: 16.px),
                                  ),
                                  leading: Icon(
                                    Icons.circle,
                                    color: ApkColors.primaryColor,
                                    size: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30.px,
                          ),
                          Text(
                            "3. Sharing Your Information",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.primaryColor,
                                fontSize: 20.px),
                          ),
                          SizedBox(
                            height: 8.px,
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(screenWidth * 0.0083),
                            decoration: BoxDecoration(
                                color: ApkColors.textEditColor,
                                borderRadius: BorderRadius.circular(screenWidth * 0.0083)
                            ),
                            child: Text(
                              "We may share your information in the following circumstances:",
                              maxLines: 10,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  color: ApkColors.primaryColor,
                                  fontSize: 16.px),
                            ),
                          ),
                          SizedBox(
                            height: 12.px,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: ApkColors.textEditColor,
                                borderRadius: BorderRadius.circular(screenWidth * 0.0083)
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 0.0118,vertical: screenWidth * 0.0097),
                            height: 250.px,
                            child: ListView(
                              physics: NeverScrollableScrollPhysics(),
                              children: [
                                ListTile(
                                  title: Text(
                                    "With Employers and Businesses: Your profile, including personal and educational information, may be shared with employers and businesses when you apply for a job, respond to a promotion, or participate in an internship or project.",
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        color: ApkColors.primaryColor,
                                        fontSize: 16.px),
                                  ),
                                  leading: Icon(
                                    Icons.circle,
                                    color: ApkColors.primaryColor,
                                    size: 10,
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    "With Service Providers: We may share data with trusted third-party service providers who assist in operating the platform, conducting analytics, processing payments, or marketing services.",
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        color: ApkColors.primaryColor,
                                        fontSize: 16.px),
                                  ),
                                  leading: Icon(
                                    Icons.circle,
                                    color: ApkColors.primaryColor,
                                    size: 10,
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    "Legal Compliance and Protection: We may disclose your information to comply with legal obligations or protect our rights, users, or the public.",
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        color: ApkColors.primaryColor,
                                        fontSize: 16.px),
                                  ),
                                  leading: Icon(
                                    Icons.circle,
                                    color: ApkColors.primaryColor,
                                    size: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30.px,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 40.px,
                                width: 140.px,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: ApkColors.orangeColor,
                                    borderRadius: BorderRadius.circular(screenWidth * 0.030)
                                ),
                                child:  Text(
                                  "Save",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      color: ApkColors.backgroundColor,
                                      fontSize: 20.px),
                                ),

                              ),
                              SizedBox(width: 48.px),
                              Container(
                                height: 40.px,
                                width: 140.px,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: ApkColors.backgroundColor,
                                    borderRadius: BorderRadius.circular(screenWidth * 0.012),
                                    border: Border.all(
                                        width: 1.px,
                                        color: ApkColors.orangeColor
                                    )
                                ),
                                child:  Text(
                                  "Discard",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      color: ApkColors.orangeColor,
                                      fontSize: 20.px),
                                ),

                              )

                            ],
                          ),
                          SizedBox(
                            height: 30.px,
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: screenWidth * 0.0495,
              ),
            ],
          ),
        ),
      );
    });

  }
}
