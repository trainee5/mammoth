import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../Utils/icon_path.dart';
import '../../../color/ApkColors.dart';
import '../controllers/faq_web_screen_controller.dart';

class FaqWebScreenView extends GetView<FaqWebScreenController> {
  const FaqWebScreenView({super.key});
  @override
  Widget build(BuildContext context) {

    Get.put(FaqWebScreenController());
    Get.lazyPut<FaqWebScreenController>(
          () => FaqWebScreenController(),
    );

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    void showSettingMenu(Offset offset) async {
      showMenu(
        color: Colors.transparent,
        constraints: BoxConstraints(
            maxHeight:145.px,
            maxWidth: 147.px
        ),
        context: context,
        shadowColor: ApkColors.blackShadow60p,
        menuPadding: EdgeInsets.symmetric(horizontal: 1.px,vertical: 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
        position: RelativeRect.fromLTRB(
          offset.dx - 20,
          offset.dy,
          MediaQuery.of(context).size.width - offset.dx ,
          MediaQuery.of(context).size.height - offset.dy,
        ),
        items: [
          PopupMenuItem(
            value: 1,
            child: Container(
              height:145.px,
              width: 147.px,
              decoration: BoxDecoration(
                  color: ApkColors.backgroundColor,
                  borderRadius: BorderRadius.circular(12.px)
              ),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      controller.increment();
                      controller.onClickOnEdit =
                      !controller.onClickOnEdit;

                    },
                    child: SizedBox(
                      height: 47.px,
                      child: Row(
                        children: [
                          SizedBox(width: 13.px,),
                          SvgPicture.asset(
                              IconPath.editSvg,
                              width: 16.px,
                              height: 16.px
                          ),
                          SizedBox(width: 7.54.px,),
                          Text(
                            "Edit",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: ApkColors.primaryColor,
                                fontSize:  13.29.px),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 0.83.px,
                    color: ApkColors.blackShadow60p,
                  ),
                  GestureDetector(
                    onTap: (){
                     // controller.selectedPage = 5;
                      controller.increment();
                    },
                    child: SizedBox(
                      height: 47.px,

                      child: Row(
                        children: [
                          SizedBox(width: 13.px,),
                          SvgPicture.asset(
                              IconPath.deleteSvg,
                              width: 16.px,
                              height: 16.px
                          ),
                          SizedBox(width: 7.54.px,),
                          Text(
                            "Delete",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: ApkColors.primaryColor,
                                fontSize:  13.29.px),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 0.83.px,
                    color: ApkColors.blackShadow60p,
                  ),
                  SizedBox(
                    height: 47.px,
                    child: Row(
                      children: [
                        SizedBox(width: 13.px,),
                        SvgPicture.asset(
                            IconPath.addSvg,
                            width: 16.px,
                            height: 16.px
                        ),
                        SizedBox(width: 7.54.px,),
                        Text(
                          "Add",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              color: ApkColors.primaryColor,
                              fontSize:  13.29.px),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
        elevation: 8.0,
      ).then((value) {
        if (value != null) print(value);
      });
    }


    return Obx((){
      controller.count.value;
      return Scaffold(
        backgroundColor: ApkColors.backgroundColor,
        body: SingleChildScrollView(
          child: controller.onClickOnEdit
              ? Column(
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
                        //Get.back();
                        controller.increment();
                        controller.onClickOnEdit =
                        !controller.onClickOnEdit;

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
                    "FAQ Edit",
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
                      margin: EdgeInsets.only(left: 24.px,right: 24.px,),
                      padding: EdgeInsets.symmetric(horizontal: 24.px),
                      child: Column(

                        children: [
                          Container(
                            height: 48.px,
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.symmetric(horizontal: 24.px),
                            margin: EdgeInsets.only(left: 24.px,right: 24.px,),

                            decoration: BoxDecoration(
                              color: ApkColors.textEditColor,
                              borderRadius: BorderRadius.circular(12.px),

                            ),
                            child: Row(
                              children: [
                                Text(
                                  "How do I create an account?",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight:
                                      FontWeight.w500,
                                      color: ApkColors
                                          .primaryColor,
                                      fontSize: 16.px),
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTapDown: (details) {
                                    final offset = details.globalPosition;
                                    showSettingMenu(offset);

                                  },
                                  child: Padding(
                                    padding: EdgeInsets.all(
                                        screenWidth * 0.005),
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
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 18.px,),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.symmetric(horizontal: 24.px),
                            margin: EdgeInsets.only(left: 24.px,right: 24.px,),


                            decoration: BoxDecoration(
                              color: ApkColors.textEditColor,
                              borderRadius: BorderRadius.circular(12.px),

                            ),
                            child: Text(
                              "You can track your job applications under the My Applications tab in your dashboard. You’ll see the status of each application, such as Under Review or Shortlisted,",
                              textAlign: TextAlign.start,
                              maxLines: 5,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight:
                                  FontWeight.w500,
                                  color: ApkColors
                                      .primaryColor,
                                  fontSize: 16.px),
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
                        SizedBox(width: 70.px,),
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

                        ),
                        SizedBox(width: 48.px,),

                      ],
                    ),
                    SizedBox(
                      height: 30.px,
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: screenWidth * 0.0495,
              ),
            ],
          )
              : Column(
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
                    "FAQ",
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
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemCount: 6,
                      padding: EdgeInsets.symmetric(vertical: 24.px),
                      itemBuilder: (context, index) {
                        //final item = SampleModel.cateItem[index];
                        return GestureDetector(
                            onTap: (){
                              // controller.increment();
                              // controller.clickOnItems[index] =
                              // (!controller.clickOnItems[index]);

                              // Get.toNamed(Routes.);
                            },
                            child: Column(

                              children: [
                                Container(
                                  height: 48.px,
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.symmetric(horizontal: 24.px),
                                  margin: EdgeInsets.only(left: 24.px,right: 24.px,),

                                  decoration: BoxDecoration(
                                    color: ApkColors.textEditColor,
                                    borderRadius: BorderRadius.circular(12.px),

                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "How do I create an account?",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight:
                                            FontWeight.w500,
                                            color: ApkColors
                                                .primaryColor,
                                            fontSize: 16.px),
                                      ),
                                      Spacer(),
                                      GestureDetector(
                                        onTapDown: (details) {
                                          final offset = details.globalPosition;
                                          showSettingMenu(offset);

                                        },
                                        child: Padding(
                                          padding: EdgeInsets.all(
                                              screenWidth * 0.005),
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
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 18.px,),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.symmetric(horizontal: 24.px),
                                  margin: EdgeInsets.only(left: 24.px,right: 24.px,bottom: 30.px),


                                  decoration: BoxDecoration(
                                    color: ApkColors.textEditColor,
                                    borderRadius: BorderRadius.circular(12.px),

                                  ),
                                  child: Text(
                                    "You can track your job applications under the My Applications tab in your dashboard. You’ll see the status of each application, such as Under Review or Shortlisted,",
                                    textAlign: TextAlign.start,
                                    maxLines: 5,
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight:
                                        FontWeight.w500,
                                        color: ApkColors
                                            .primaryColor,
                                        fontSize: 16.px),
                                  ),
                                ),
                              ],

                            )

                          // ExpansionTile(
                          //   enabled: true,
                          //   enableFeedback: false,
                          //   childrenPadding: EdgeInsets.only(bottom: 18.px),
                          //   minTileHeight: 48.px,
                          //   showTrailingIcon: true,
                          //   title:  Container(
                          //     height: 48.px,
                          //     alignment: Alignment.centerLeft,
                          //     padding: EdgeInsets.symmetric(horizontal: 14.px),
                          //
                          //     decoration: BoxDecoration(
                          //       color: ApkColors.backgroundColor,
                          //       borderRadius: BorderRadius.circular(12.px),
                          //       border: Border.all(
                          //           width: 1.px,
                          //           color: ApkColors.orangeColor
                          //       ),
                          //
                          //     ),
                          //     child: Row(
                          //       children: [
                          //         Text(
                          //           "How do I create an account?",
                          //           textAlign: TextAlign.start,
                          //           style: TextStyle(
                          //               fontFamily: 'Poppins',
                          //               fontWeight:
                          //               FontWeight.w500,
                          //               color: ApkColors
                          //                   .primaryColor,
                          //               fontSize: 16.px),
                          //         ),
                          //         Spacer(),
                          //         controller.onClick
                          //             ? SvgPicture.asset(
                          //           IconPath.arrowUP,
                          //           height: 32.px,
                          //           width: 32.px,
                          //         )
                          //             : SvgPicture.asset(
                          //     IconPath.arrowDown,
                          //     height: 32.px,
                          //     width: 32.px,
                          //   )
                          //       ],
                          //     ),
                          //   ),
                          //   children: <Widget>[
                          //     ListTile(
                          //         title:  Container(
                          //           alignment: Alignment.centerLeft,
                          //           padding: EdgeInsets.symmetric(horizontal: 14.px),
                          //
                          //           decoration: BoxDecoration(
                          //             color: ApkColors.textEditColor,
                          //             borderRadius: BorderRadius.circular(12.px),
                          //
                          //           ),
                          //           child: Text(
                          //             "You can track your job applications under the My Applications tab in your dashboard. You’ll see the status of each application, such as Under Review or Shortlisted,",
                          //             textAlign: TextAlign.start,
                          //             maxLines: 5,
                          //             style: TextStyle(
                          //                 fontFamily: 'Poppins',
                          //                 fontWeight:
                          //                 FontWeight.w500,
                          //                 color: ApkColors
                          //                     .primaryColor,
                          //                 fontSize: 16.px),
                          //           ),
                          //         ),),
                          //   ],
                          // ),





                        );
                      },
                    ),
                    SizedBox(
                      height: screenWidth * 0.0236,
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: screenWidth * 0.0495,
              ),
            ],
          )
        ),
      );
    });


  }
}
