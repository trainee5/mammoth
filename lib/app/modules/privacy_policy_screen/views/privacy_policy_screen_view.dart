import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../Utils/StringConstants.dart';
import '../../../Utils/icon_path.dart';
import '../../../color/ApkColors.dart';
import '../controllers/privacy_policy_screen_controller.dart';

class PrivacyPolicyScreenView extends GetView<PrivacyPolicyScreenController> {
  const PrivacyPolicyScreenView({super.key});

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
                        StringConstants.privacyPolicy,
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
                Container(
                  padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.0258),
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: screenHeight * 0.0344,
                      ),
                      Text(
                        "Last Update : 11 September 2024",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: ApkColors.primaryColor,
                            fontSize: screenHeight * 0.0215),
                      ),
                      SizedBox(
                        height:screenHeight * 0.0258,
                      ),
                      Text(
                        "1st mammuth (“we,” “our,” “us”) is committed to protecting your privacy. This Privacy Policy outlines how we collect, use, disclose, and safeguard your personal information when you use our social networking and job platform designed for stu dents. By accessing or using 1st mammuth, you consent to the practices described in this Privacy Policy.",
                        maxLines: 10,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: ApkColors.primaryColor,
                            fontSize: screenHeight * 0.0172),
                      ),
                      SizedBox(
                        height: screenHeight * 0.0258,
                      ),
                      Text(
                        "1. Information We Collect",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: ApkColors.primaryColor,
                            fontSize: screenHeight * 0.0215),
                      ),
                      SizedBox(
                        height: screenHeight * 0.0086,
                      ),
                      Text(
                        "We collect information to provide a better experience on 1st mammuth, facilitate networking and job connections, and ensure the security of our platform.",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: ApkColors.primaryColor,
                            fontSize: screenHeight * 0.0172),
                      ),
                      SizedBox(
                        height: screenHeight * 0.0258,
                      ),
                      Text(
                        "2. How We Use Your Information",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: ApkColors.primaryColor,
                            fontSize: screenHeight * 0.0215),
                      ),
                      SizedBox(
                        height: screenHeight * 0.0086,
                      ),
                      Text(
                        "We use your information to provide a seamless experience on TellWhom, including:",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: ApkColors.primaryColor,
                            fontSize: screenHeight * 0.0172),
                      ),

                      SizedBox(
                        height:screenHeight * 0.0129,
                      ),









                      ListView(
                        shrinkWrap: true,

                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          ListTile(
                            titleAlignment: ListTileTitleAlignment.titleHeight,
                            minVerticalPadding: screenHeight * 0.0010,
                            horizontalTitleGap:screenHeight * 0.0010 ,
                            title: Text(

                              "Creating and managing your user profile and enabling interactions between students, businesses, and employers.",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  color: ApkColors.primaryColor,
                                  fontSize: screenHeight * 0.0172),
                            ),
                            leading: Icon(
                              Icons.circle,
                              color: ApkColors.primaryColor,
                              size: screenHeight * 0.0108,
                            ),
                          ),
                          ListTile(
                            minVerticalPadding: screenHeight * 0.0010,
                            horizontalTitleGap:screenHeight * 0.0010 ,
                            titleAlignment: ListTileTitleAlignment.titleHeight,
                            title: Text(
                              "Facilitating job applications, part-time work matching, and networking opportunities.",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  color: ApkColors.primaryColor,
                                  fontSize: screenHeight * 0.0172),
                            ),
                            leading: Icon(
                              Icons.circle,
                              color: ApkColors.primaryColor,
                              size: screenHeight * 0.0108,
                            ),
                          ),
                          ListTile(
                            minVerticalPadding: screenHeight * 0.0010,
                            horizontalTitleGap:screenHeight * 0.0010 ,
                            titleAlignment: ListTileTitleAlignment.titleHeight,
                            title: Text(
                              "Personalizing content and job suggestions based on your profile, preferences, and location.",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  color: ApkColors.primaryColor,
                                  fontSize: screenHeight * 0.0172),
                            ),
                            leading: Icon(
                              Icons.circle,
                              color: ApkColors.primaryColor,
                              size: screenHeight * 0.0108,
                            ),
                          ),
                          ListTile(
                            minVerticalPadding: screenHeight * 0.0010,
                            horizontalTitleGap:screenHeight * 0.0010 ,
                            titleAlignment: ListTileTitleAlignment.titleHeight,
                            title: Text(
                              "Improving platform functionality, performance, and security.",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  color: ApkColors.primaryColor,
                                  fontSize: screenHeight * 0.0172),
                            ),
                            leading: Icon(
                              Icons.circle,
                              color: ApkColors.primaryColor,
                              size: screenHeight * 0.0108,
                            ),
                          ),
                          ListTile(
                            minVerticalPadding: screenHeight * 0.0010,
                            horizontalTitleGap:screenHeight * 0.0010 ,
                            titleAlignment: ListTileTitleAlignment.titleHeight,
                            title: Text(
                              "Sending relevant communications, including updates, job recommendations, offers, promotions, and platform changes.",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  color: ApkColors.primaryColor,
                                  fontSize: screenHeight * 0.0172),
                            ),
                            leading: Icon(
                              Icons.circle,
                              color: ApkColors.primaryColor,
                              size: screenHeight * 0.0108,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.0322,
                      ),
                      Text(
                        "3. Sharing Your Information",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: ApkColors.primaryColor,
                            fontSize: screenHeight * 0.0215),
                      ),
                      SizedBox(
                        height: screenHeight * 0.0086,
                      ),

                      ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          ListTile(
                            minVerticalPadding: screenHeight * 0.0010,
                            horizontalTitleGap:screenHeight * 0.0010 ,
                              titleAlignment: ListTileTitleAlignment.titleHeight,
                            title: Text(
                              "With Employers and Businesses: Your profile, including personal and educational information, may be shared with employers and businesses when you apply for a job, respond to a promotion, or participate in an internship or project.",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  color: ApkColors.primaryColor,
                                  fontSize: screenHeight * 0.0172),
                            ),
                            leading: Column(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: ApkColors.primaryColor,
                                  size: screenHeight * 0.0108,
                                ),
                              ],
                            )


                          ),

                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.0258,
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
