import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:mammoth/app/routes/app_pages.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../CommonFile/CommonWidget.dart';
import '../../../Utils/StringConstants.dart';
import '../../../Utils/icon_path.dart';
import '../../../color/ApkColors.dart';
import '../controllers/details_screen_controller.dart';

class DetailsScreenView extends GetView<DetailsScreenController> {
  const DetailsScreenView({super.key});

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
                        StringConstants.details,
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
        body:  Obx(() {
          controller.count.value;
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: screenHeight * 0.258,
                  alignment: Alignment.center,

                  decoration: BoxDecoration(
                     color: ApkColors.backgroundColor
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenHeight * 0.0194,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: screenHeight * 0.0258,
                          ),
                          Container(
                            height: screenHeight * 0.0516,
                            width: screenHeight * 0.0516,
                            padding: EdgeInsets.all(screenHeight * 0.005),
                            decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(screenHeight * 0.007),
                              color: ApkColors.orangeColor,
                            ),
                            child: GestureDetector(
                              child: ClipRRect(
                                  borderRadius:
                                  BorderRadius.circular(
                                      screenHeight * 0.0258),
                                  child: Image.asset(
                                    IconPath.blackBox,
                                    height: screenHeight * 0.0237,
                                    width: screenHeight * 0.0237,
                                  )),
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
                                "Graphic Designer",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight:
                                    FontWeight.w500,
                                    color:  ApkColors.primaryColor ,
                                    fontSize: screenHeight * 0.0215),
                              ),
                              Text(
                                "1st mammuth",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight:
                                    FontWeight.w500,
                                    color: ApkColors.primaryColor ,
                                    fontSize: screenHeight * 0.0172),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.0247,
                      ),
                      Row(

                        children: [
                          SizedBox(
                            width:screenHeight * 0.0290,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: screenHeight * 0.041,
                              alignment: Alignment.center,
                              // margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 24.px),
                              decoration: BoxDecoration(
                                  color:
                                   ApkColors.textEditColor ,
                                  borderRadius:
                                  BorderRadius.all(
                                      Radius.circular(
                                          screenHeight * 0.0066))),
                              child: Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: screenHeight * 0.0129,
                                  ),
                                  SizedBox(
                                    child: SvgPicture.asset(
                                      IconPath.locationIcon,
                                      height: screenHeight * 0.024,
                                      width: screenHeight * 0.02,
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenHeight * 0.0086,
                                  ),
                                  Text(
                                    "Full-time",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        color:   ApkColors.primaryColor,
                                        fontSize: screenHeight * 0.0172),
                                  ),
                                  SizedBox(
                                    width: screenHeight * 0.0129,
                                  ),

                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: screenHeight * 0.0086,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: screenHeight * 0.041,
                              alignment: Alignment.center,
                              // margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 24.px),
                              decoration: BoxDecoration(
                                  color:
                                  ApkColors.textEditColor ,
                                  borderRadius:
                                  BorderRadius.all(
                                      Radius.circular(
                                          screenHeight * 0.0066))),
                              child: Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: screenHeight * 0.0129,
                                  ),
                                  SizedBox(
                                    child: SvgPicture.asset(
                                      IconPath.walletIcon,
                                      height: screenHeight * 0.024,
                                      width: screenHeight * 0.02,
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenHeight * 0.0086,
                                  ),
                                  Text(
                                    "\$40.00 /month",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        color:   ApkColors.primaryColor,
                                        fontSize: screenHeight * 0.0172),
                                  ),
                                  SizedBox(
                                    width: screenHeight * 0.0129,
                                  ),

                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: screenHeight * 0.0086,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.0086,
                      ),
                      Row(

                        children: [
                          SizedBox(
                            width: screenHeight * 0.029,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: screenHeight * 0.041,
                              alignment: Alignment.center,
                              // margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 24.px),
                              decoration: BoxDecoration(
                                  color:
                                  ApkColors.textEditColor ,
                                  borderRadius:
                                  BorderRadius.all(
                                      Radius.circular(
                                          screenHeight * 0.0066))),
                              child: Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: screenHeight * 0.0129,
                                  ),
                                  SizedBox(
                                    child: SvgPicture.asset(
                                      IconPath.briefcaseIcon,
                                      height: screenHeight * 0.024,
                                      width: screenHeight * 0.02,
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenHeight * 0.0086,
                                  ),
                                  Text(
                                    "Work From Home",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        color:   ApkColors.primaryColor,
                                        fontSize: screenHeight * 0.0172),
                                  ),
                                  SizedBox(
                                    width: screenHeight * 0.0129,
                                  ),

                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: screenHeight * 0.0086,
                          ),

                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.0258,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: screenHeight * 0.0258,
                          ),
                          SizedBox(
                            child: SvgPicture.asset(
                              IconPath.locationIcon,
                              height: screenHeight * 0.0237,
                              width: screenHeight * 0.0237,
                              color:  ApkColors.primaryColor,
                            ),
                          ),
                          SizedBox(
                            width: screenHeight * 0.0086,
                          ),
                          Text(
                            "Indore, India",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color:  ApkColors.primaryColor,
                                fontSize: screenHeight * 0.0172),
                          ),
                          Spacer(),
                          SizedBox(
                            child: SvgPicture.asset(
                              IconPath.time,
                              height: screenHeight * 0.0237,
                              width: screenHeight * 0.0237,
                              color: ApkColors.backgroundColor ,
                            ),
                          ),
                          SizedBox(
                            width: screenHeight * 0.0086,
                          ),
                          Text(
                            "3 days left",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: ApkColors.primaryColor,
                                fontSize: screenHeight * 0.0172),
                          ),
                          SizedBox(
                            width: screenHeight * 0.0258,
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.0258,
                ),

                Divider(
                  height: 0.5.px,
                  color: ApkColors.primaryColor60p,

                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.0258),
                  alignment: Alignment.topLeft,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: screenHeight * 0.0365,
                      ),
                      Text(
                        StringConstants.aboutTheJob,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: ApkColors.primaryColor,
                            fontSize: screenHeight * 0.0258),
                      ),
                      SizedBox(
                        height: screenHeight * 0.0086,
                      ),
                      Text(
                        "We are looking for a Junior Graphic Designer  to support  our creative team.",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: ApkColors.primaryColor,
                            fontSize: screenHeight * 0.0172),
                      ),
                      SizedBox(
                        height: screenHeight * 0.0344,
                      ),
                      Text(
                        StringConstants.yourTasks,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: ApkColors.primaryColor,
                            fontSize: screenHeight * 0.0258),
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
                              "Design logos, color schemes,typography, and brand guidelines.",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  color: ApkColors.primaryColor,
                                  fontSize: screenHeight * 0.0172),
                            ),
                            leading: Icon(Icons.circle,
                              color: ApkColors.primaryColor,
                              size: screenHeight * 0.0108),
                          ),
                          ListTile(
                            minVerticalPadding: screenHeight * 0.0010,
                            horizontalTitleGap:screenHeight * 0.0010 ,
                            titleAlignment: ListTileTitleAlignment.titleHeight,


                            title: Text(
                              "Create visuals to aid storytelling and navigation.",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  color: ApkColors.primaryColor,
                                  fontSize: screenHeight * 0.0172),
                            ),
                            leading: Icon(Icons.circle,
                              color: ApkColors.primaryColor,
                              size:  screenHeight * 0.0108,),
                          ),
                          ListTile(
                            minVerticalPadding: screenHeight * 0.0010,
                            horizontalTitleGap:screenHeight * 0.0010 ,
                            titleAlignment: ListTileTitleAlignment.titleHeight,

                            title: Text(
                              "Create visuals to aid storytelling and navigation.",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  color: ApkColors.primaryColor,
                                  fontSize: screenHeight * 0.0172),
                            ),
                            leading: Icon(Icons.circle,
                              color: ApkColors.primaryColor,
                              size: screenHeight * 0.0108,),
                          ),
                          ListTile(
                            minVerticalPadding: screenHeight * 0.0010,
                            horizontalTitleGap:screenHeight * 0.0010 ,
                            titleAlignment: ListTileTitleAlignment.titleHeight,

                            title: Text(
                              "Support visually appealing, user-friendly interfaces.",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  color: ApkColors.primaryColor,
                                  fontSize: screenHeight * 0.0172),
                            ),
                            leading: Icon(Icons.circle,
                              color: ApkColors.primaryColor,
                              size: screenHeight * 0.0108,),
                          ),
                          ListTile(
                            minVerticalPadding: screenHeight * 0.0010,
                            horizontalTitleGap:screenHeight * 0.0010 ,
                            titleAlignment: ListTileTitleAlignment.titleHeight,

                            title: Text(
                              "Create mockups for client/stakeholder presentations.",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  color: ApkColors.primaryColor,
                                  fontSize: screenHeight * 0.0172),
                            ),
                            leading: Icon(Icons.circle,
                              color: ApkColors.primaryColor,
                              size: screenHeight * 0.0108,),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: screenHeight * 0.0322,
                      ),
                      Text(
                        StringConstants.requirements,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: ApkColors.primaryColor,
                            fontSize: screenHeight * 0.0258),
                      ),
                      SizedBox(
                        height: screenHeight * 0.0086,
                      ),

                      ListView(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: [
                          ListTile(
                            minVerticalPadding: screenHeight * 0.0010,
                            horizontalTitleGap:screenHeight * 0.0010 ,
                            titleAlignment: ListTileTitleAlignment.titleHeight,

                            title: Text(
                              "Studies or training in the field of interface design, information design, communication design, communication sciences or similar.",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  color: ApkColors.primaryColor,
                                  fontSize: screenHeight * 0.0172),
                            ),
                            leading: Icon(Icons.circle,
                              color: ApkColors.primaryColor,
                              size: screenHeight * 0.0108,),
                          ),
                          ListTile(
                            minVerticalPadding: screenHeight * 0.0010,
                            horizontalTitleGap:screenHeight * 0.0010 ,
                            titleAlignment: ListTileTitleAlignment.titleHeight,

                            title: Text(
                              "First practical experience in the design and conception of user interfaces"
                                  "Basic knowledge of design thinking methods and UX methods",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  color: ApkColors.primaryColor,
                                  fontSize: screenHeight * 0.0172),
                            ),
                            leading: Icon(Icons.circle,
                              color: ApkColors.primaryColor,
                              size: screenHeight * 0.0108,),
                          ),
                          ListTile(
                            minVerticalPadding: screenHeight * 0.0010,
                            horizontalTitleGap:screenHeight * 0.0010 ,
                            titleAlignment: ListTileTitleAlignment.titleHeight,

                            title: Text(
                              "Enjoy working in a team and have a good sense of design and interest in current UX trends",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  color: ApkColors.primaryColor,
                                  fontSize: screenHeight * 0.0172),
                            ),
                            leading: Icon(Icons.circle,
                              color: ApkColors.primaryColor,
                              size: screenHeight * 0.0108,),
                          ),
                          ListTile(
                            minVerticalPadding: screenHeight * 0.0010,
                            horizontalTitleGap:screenHeight * 0.0010 ,
                            titleAlignment: ListTileTitleAlignment.titleHeight,

                            title: Text(
                              "Very good knowledge of German and good knowledge of English.",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  color: ApkColors.primaryColor,
                                  fontSize: screenHeight * 0.0172),
                            ),
                            leading: Icon(Icons.circle,
                              color: ApkColors.primaryColor,
                              size: screenHeight * 0.0108,),
                          ),
                          ListTile(
                            minVerticalPadding: screenHeight * 0.0010,
                            horizontalTitleGap:screenHeight * 0.0010 ,
                            titleAlignment: ListTileTitleAlignment.titleHeight,

                            title: Text(
                              "Basic knowledge of design thinking methods and UX methods",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  color: ApkColors.primaryColor,
                                  fontSize: screenHeight * 0.0172),
                            ),
                            leading: Icon(Icons.circle,
                              color: ApkColors.primaryColor,
                              size: screenHeight * 0.0108,),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: screenHeight * 0.0322,
                      ),
                      Text(
                        StringConstants.yourContactPerson,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: ApkColors.primaryColor,
                            fontSize: screenHeight * 0.0258),
                      ),
                      SizedBox(
                        height: screenHeight * 0.0172,
                      ),
                      Row(children: [
                         Container(
                           height: screenHeight * 0.0322,
                           width: screenHeight * 0.0322,
                           padding: EdgeInsets.all(screenHeight * 0.0076),

                           decoration: BoxDecoration(
                             color: ApkColors.orangeColor,
                             borderRadius: BorderRadius.circular(screenHeight * 0.0172)
                           ),

                           child: SvgPicture.asset(
                             IconPath.userWhite,
                             height: screenHeight * 0.0237,
                             width:screenHeight * 0.0237,
                             color: ApkColors.backgroundColor,

                           ),
                         ),
                        SizedBox(width: screenHeight * 0.0086,),
                        Text(
                          "Mr. Guido Latz",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: ApkColors.primaryColor,
                              fontSize: screenHeight * 0.0215),
                        ),

                      ],),
                      SizedBox(
                        height: screenHeight * 0.0131,
                      ),
                      Row(children: [
                         Container(
                           height: screenHeight * 0.0322,
                           width: screenHeight * 0.0322,
                           padding: EdgeInsets.all(screenHeight * 0.0076),

                           decoration: BoxDecoration(
                             color: ApkColors.orangeColor,
                             borderRadius: BorderRadius.circular(screenHeight * 0.0172)
                           ),

                           child: SvgPicture.asset(
                             IconPath.callSvg,
                             height: screenHeight * 0.0237,
                             width: screenHeight * 0.0237,
                             color: ApkColors.backgroundColor,
                           ),
                         ),
                        SizedBox(width: screenHeight * 0.0086,),
                        Text(
                          "+34 971 771 783",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: ApkColors.primaryColor,
                              fontSize: screenHeight * 0.0215),
                        ),


                      ],),
                      SizedBox(height: screenHeight * 0.0687,),

                      Obx(() {
                        controller.count.value;
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: screenHeight * 0.0258),
                          child: CommonWidget.commonButton(
                              height: screenHeight * 0.069,
                              text: StringConstants.applyNow,

                              onPressed: () {

                                Get.toNamed(Routes.APPLICTION_FORM_SCREEN);
                                // controller.createNewPassword();
                                //
                                // controller.formKey.currentState!.validate();

                                //  controller.formKey.currentState!.validate();
                                //  controller.animatedBtnLoad();
                              }
                          ),
                        );
                      }),

                      SizedBox(height: screenHeight * 0.0494,),

                    ],

                  ),
                ),

                SizedBox(
                  height: screenHeight * 0.0494,
                )

              ],
            ),
          );
        }
        )
    );
  }
}
