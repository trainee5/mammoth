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
                      StringConstants.fAQ,
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
      body:Obx((){
        controller.count.value;
        return SingleChildScrollView(

          child: Column(
            children: [
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
                      controller.increment();
                    controller.clickOnItems[index] =
                    (!controller.clickOnItems[index]);

                      // Get.toNamed(Routes.);
                    },
                    child: Column(

                      children: [
                        Container(
                          height: 48.px,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.symmetric(horizontal: 24.px),
                          margin: EdgeInsets.only(left: 24.px,right: 24.px,bottom: 18.px),

                          decoration: BoxDecoration(
                            color: ApkColors.backgroundColor,
                            borderRadius: BorderRadius.circular(12.px),
                            border: Border.all(
                                width: 1.px,
                                color: ApkColors.orangeColor
                            ),

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
                              controller.clickOnItems[index]
                                  ? SvgPicture.asset(
                                IconPath.arrowUP,
                                height: 32.px,
                                width: 32.px,
                              )
                                  : SvgPicture.asset(
                                IconPath.arrowDown,
                                height: 32.px,
                                width: 32.px,
                              )
                            ],
                          ),
                        ),
                        controller.clickOnItems[index]
                            ? ListTile(
                          title:  Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.symmetric(horizontal: 24.px),
                            margin: EdgeInsets.only(bottom: 10.px),

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
                          ),)
                            : SizedBox()
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
                height: 50.px,
              )
          
            ],
          ),
        );
      }));
  }
}
