import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:mammoth/app/routes/app_pages.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
                        ),
                        onPressed: () {
                          Get.back();
                        },
                      ),
                      SizedBox(width: 12.px,),
                      Text(
                        StringConstants.details,
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
        body:  Obx(() {
          controller.count.value;
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 233.px,
                  alignment: Alignment.center,

                  decoration: BoxDecoration(
                     color: ApkColors.backgroundColor
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 18.px,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: screenHeight * 0.0258,
                          ),
                          Container(
                            height: screenHeight * 0.0516,
                            width: screenHeight * 0.0516,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(
                                  screenHeight * 0.0108),
                              color: ApkColors.orangeColor,
                            ),
                            child: GestureDetector(
                              child: ClipRRect(
                                  borderRadius:
                                  BorderRadius.circular(
                                      screenHeight * 0.0258),
                                  child: Image.asset(
                                    'assets/images/googlepng.png',
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
                                "Emma Phillips",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight:
                                    FontWeight.w500,
                                    color:  ApkColors.primaryColor ,
                                    fontSize: screenHeight * 0.0215),
                              ),
                              Text(
                                "Graphic Designer",
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
                        height: 23.px,
                      ),
                      Row(

                        children: [
                          SizedBox(
                            width: 27.px,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 38.px,
                              alignment: Alignment.center,
                              // margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 24.px),
                              decoration: BoxDecoration(
                                  color:
                                  ApkColors.textEditColor,
                                  borderRadius:
                                  BorderRadius.all(
                                      Radius.circular(
                                          6.px))),
                              child: Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 12.px,
                                  ),
                                  SizedBox(
                                    child: SvgPicture.asset(
                                      IconPath.locationIcon,
                                      height: 22.px,
                                      width: 22.px,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.px,
                                  ),
                                  Text(
                                    "Full-time",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        color: ApkColors
                                            .primaryColor80p,
                                        fontSize: 15.px),
                                  ),
                                  SizedBox(
                                    width: 12.px,
                                  ),

                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.px,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 38.px,
                              alignment: Alignment.center,
                              // margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 24.px),
                              decoration: BoxDecoration(
                                  color:
                                  ApkColors.textEditColor,
                                  borderRadius:
                                  BorderRadius.all(
                                      Radius.circular(
                                          6.px))),
                              child: Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 12.px,
                                  ),
                                  SizedBox(
                                    child: SvgPicture.asset(
                                      IconPath.walletIcon,
                                      height: 22.px,
                                      width: 22.px,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.px,
                                  ),
                                  Text(
                                    "\$40.00 /month",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        color: ApkColors
                                            .primaryColor80p,
                                        fontSize: 15.px),
                                  ),
                                  SizedBox(
                                    width: 8.px,
                                  ),

                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.px,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.px,
                      ),
                      Row(

                        children: [
                          SizedBox(
                            width: 27.px,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 38.px,
                              alignment: Alignment.center,
                              // margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 24.px),
                              decoration: BoxDecoration(
                                  color:
                                  ApkColors.textEditColor,
                                  borderRadius:
                                  BorderRadius.all(
                                      Radius.circular(
                                          6.px))),
                              child: Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 12.px,
                                  ),
                                  SizedBox(
                                    child: SvgPicture.asset(
                                      IconPath.briefcaseIcon,
                                      height: 22.px,
                                      width: 22.px,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.px,
                                  ),
                                  Text(
                                    "Work from home",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        color: ApkColors
                                            .primaryColor80p,
                                        fontSize: 15.px),
                                  ),
                                  SizedBox(
                                    width: 12.px,
                                  ),

                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.px,
                          ),

                        ],
                      ),
                      SizedBox(
                        height: 24.px,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 24.px,
                          ),
                          SizedBox(
                            child: SvgPicture.asset(
                              IconPath.locationIcon,
                              height: 22.px,
                              width: 22.px,
                            ),
                          ),
                          SizedBox(
                            width: 8.px,
                          ),
                          Text(
                            "Indore, India",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: ApkColors
                                    .primaryColor,
                                fontSize: 16.px),
                          ),
                          Spacer(),
                          SizedBox(
                            child: SvgPicture.asset(
                              IconPath.time,
                              height: 22.px,
                              width: 22.px,
                            ),
                          ),
                          SizedBox(
                            width: 8.px,
                          ),
                          Text(
                            "3 days left",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: ApkColors
                                    .primaryColor,
                                fontSize: 16.px),
                          ),
                          SizedBox(
                            width: 24.px,
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.px,
                ),

                Divider(
                  height: 0.5.px,
                  color: ApkColors.primaryColor60p,

                ),

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
                        StringConstants.aboutTheJob,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: ApkColors.primaryColor,
                            fontSize: 24.px),
                      ),
                      SizedBox(
                        height: 8.px,
                      ),
                      Text(
                        "We are looking for a Junior Graphic Designer  to support  our creative team.",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            color: ApkColors.primaryColor,
                            fontSize: 16.px),
                      ),
                      SizedBox(
                        height: 32.px,
                      ),
                      Text(
                        StringConstants.yourTasks,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: ApkColors.primaryColor,
                            fontSize: 24.px),
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
                                "Design logos, color schemes,typography, and brand guidelines.",
                                maxLines: 2,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    color: ApkColors.primaryColor,
                                    fontSize: 16.px),
                              ),
                              leading: Icon(Icons.circle,
                                color: ApkColors.primaryColor,
                                size: 10,),
                            ),
                            ListTile(

                              title: Text(
                                "Create visuals to aid storytelling and navigation.",
                                maxLines: 2,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    color: ApkColors.primaryColor,
                                    fontSize: 16.px),
                              ),
                              leading: Icon(Icons.circle,
                                color: ApkColors.primaryColor,
                                size: 10,),
                            ),
                            ListTile(

                              title: Text(
                                "Create visuals to aid storytelling and navigation.",
                                maxLines: 2,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    color: ApkColors.primaryColor,
                                    fontSize: 16.px),
                              ),
                              leading: Icon(Icons.circle,
                                color: ApkColors.primaryColor,
                                size: 10,),
                            ),
                            ListTile(

                              title: Text(
                                "Support visually appealing, user-friendly interfaces.",
                                maxLines: 2,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    color: ApkColors.primaryColor,
                                    fontSize: 16.px),
                              ),
                              leading: Icon(Icons.circle,
                                color: ApkColors.primaryColor,
                                size: 10,),
                            ),
                            ListTile(

                              title: Text(
                                "Create mockups for client/stakeholder presentations.",
                                maxLines: 2,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    color: ApkColors.primaryColor,
                                    fontSize: 16.px),
                              ),
                              leading: Icon(Icons.circle,
                                color: ApkColors.primaryColor,
                                size: 10,),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 30.px,
                      ),
                      Text(
                        StringConstants.requirements,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: ApkColors.primaryColor,
                            fontSize: 24.px),
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
                                "Studies or training in the field of interface design, information design, communication design, communication sciences or similar.",
                                maxLines: 3,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    color: ApkColors.primaryColor,
                                    fontSize: 16.px),
                              ),
                              leading: Icon(Icons.circle,
                                color: ApkColors.primaryColor,
                                size: 10,),
                            ),
                            ListTile(

                              title: Text(
                                "First practical experience in the design and conception of user interfaces"
                                    "Basic knowledge of design thinking methods and UX methods",
                                maxLines: 3,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    color: ApkColors.primaryColor,
                                    fontSize: 16.px),
                              ),
                              leading: Icon(Icons.circle,
                                color: ApkColors.primaryColor,
                                size: 10,),
                            ),
                            ListTile(

                              title: Text(
                                "Enjoy working in a team and have a good sense of design and interest in current UX trends",
                                maxLines: 3,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    color: ApkColors.primaryColor,
                                    fontSize: 16.px),
                              ),
                              leading: Icon(Icons.circle,
                                color: ApkColors.primaryColor,
                                size: 10,),
                            ),
                            ListTile(

                              title: Text(
                                "Very good knowledge of German and good knowledge of English.",
                                maxLines: 3,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    color: ApkColors.primaryColor,
                                    fontSize: 16.px),
                              ),
                              leading: Icon(Icons.circle,
                                color: ApkColors.primaryColor,
                                size: 10,),
                            ),
                            ListTile(

                              title: Text(
                                "Basic knowledge of design thinking methods and UX methods",
                                maxLines: 3,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    color: ApkColors.primaryColor,
                                    fontSize: 16.px),
                              ),
                              leading: Icon(Icons.circle,
                                color: ApkColors.primaryColor,
                                size: 10,),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 32.px,
                      ),
                      Text(
                        StringConstants.yourContactPerson,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: ApkColors.primaryColor,
                            fontSize: 24.px),
                      ),
                      SizedBox(
                        height: 16.px,
                      ),
                      Row(children: [
                         Container(
                           height: 32.px,
                           width: 32.px,
                           padding: EdgeInsets.all(7.px),

                           decoration: BoxDecoration(
                             color: ApkColors.orangeColor,
                             borderRadius: BorderRadius.circular(16.px)
                           ),

                           child: SvgPicture.asset(
                             IconPath.walletIcon,
                             height: 22.px,
                             width: 22.px,
                             color: ApkColors.backgroundColor,

                           ),
                         ),
                        SizedBox(width: 8.px,),
                        Text(
                          "Mr. Guido Latz",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: ApkColors.primaryColor,
                              fontSize: 20.px),
                        ),

                      ],),
                      SizedBox(
                        height: 12.px,
                      ),
                      Row(children: [
                         Container(
                           height: 32.px,
                           width: 32.px,
                           padding: EdgeInsets.all(7.px),

                           decoration: BoxDecoration(
                             color: ApkColors.orangeColor,
                             borderRadius: BorderRadius.circular(16.px)
                           ),

                           child: SvgPicture.asset(
                             IconPath.locationIcon,
                             height: 22.px,
                             width: 22.px,
                             color: ApkColors.backgroundColor,
                           ),
                         ),
                        SizedBox(width: 8.px,),
                        Text(
                          "+34 971 771 783",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: ApkColors.primaryColor,
                              fontSize: 20.px),
                        ),


                      ],),
                      SizedBox(height: 64.px,),

                      GestureDetector(
                        onTap: () {

                          Get.toNamed(Routes.APPLICTION_FORM_SCREEN);
                        },
                        child: Container(
                          height: 64.px,

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
                            StringConstants.applyNow,
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

                      SizedBox(height: 46.px,),

                    ],

                  ),
                ),

                SizedBox(
                  height: 50.px,
                )

              ],
            ),
          );
        }
        )
    );
  }
}
