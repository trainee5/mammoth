import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:mammoth/app/color/ApkColors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../Utils/StringConstants.dart';
import '../../../Utils/icon_path.dart';
import '../controllers/term_condition_screen_controller.dart';

class TermConditionScreenView extends GetView<TermConditionScreenController> {
  const TermConditionScreenView({super.key});

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
                        color: ApkColors.backgroundColor,
                      ),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    SizedBox(
                      width: 12.px,
                    ),
                    Text(
                      StringConstants.termConditions,
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
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24.px),
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 34.px,
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
                    Text(
                      "We collect information to provide a better experience on 1st mammuth, facilitate networking and job connections, and ensure the security of our platform.",
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
                    Text(
                      "We use your information to provide a seamless experience on TellWhom, including:",
                      maxLines: 10,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: ApkColors.primaryColor,
                          fontSize: 16.px),
                    ),

                    SizedBox(
                      height: 12.px,
                    ),









                    SizedBox(
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

                    SizedBox(
                      height: 250.px,
                      child: ListView(
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          ListTile(
                            title: Text(
                              "With Employers and Businesses: Your profile, including personal and educational information, may be shared with employers and businesses when you apply for a job, respond to a promotion, or participate in an internship or project.",
                              maxLines: 6,
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
                      height: 24.px,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }));

  }
}
