import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../CommonFile/CommonWidget.dart';
import '../../../Utils/StringConstants.dart';
import '../../../Utils/icon_path.dart';
import '../../../color/ApkColors.dart';
import '../../job_web_screen/views/job_web_screen_view.dart';
import '../controllers/post_job_web_scren_controller.dart';

class PostJobWebScreenView extends GetView<PostJobWebScrenController> {
  const PostJobWebScreenView({super.key});



  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    List<bool> clickOnItems = List.filled(3,false);

    Get.put(PostJobWebScrenController());
    Get.lazyPut<PostJobWebScrenController>(
          () => PostJobWebScrenController(),
    );


    final List<Exercise> exercises = [
      Exercise(
        name: '1',
        calories: 100,
        minutes: 10,
        isCompleted: true,
      ),
      Exercise(
        name: '2',
        calories: 80,
        minutes: 5,
        isCompleted:false,
      ),
      Exercise(
        name: '3',
        calories: 120,
        minutes: 15,
        isCompleted: false,
      ),
    ];


    Get.put(PostJobWebScrenController());
    Get.lazyPut<PostJobWebScrenController>(
          () => PostJobWebScrenController(),
    );


    return Obx((){
      controller.count.value;
      return Scaffold(
        backgroundColor: ApkColors.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center  ,
            children: [



              SizedBox(height: screenWidth * 0.030),

              /////     EDIT BOX TIME LINE ...........................//////////////////////////////////////////////////////////////////////////////////////////////////


              Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Row(
                    children: [
                      IconButton(
                        icon: SvgPicture.asset(
                          IconPath.arrowLeftIcon,
                          height: screenWidth * 0.028,
                          width: screenWidth * 0.028,
                          color: ApkColors.primaryColor,
                        ),
                        onPressed: () {
                          controller.increment();
                          clickOnItems[1] = false;
                          clickOnItems[2] = false;
                          clickOnItems[0] = true;
                        },
                      ),
                      Text(
                        "Post Job",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: ApkColors.primaryColor,
                          fontSize: screenWidth * 0.0167,
                        ),
                      ),
                    ],
                  ),


                  Container(
                   // color: ApkColors.primaryColor60p,
                    alignment: Alignment.centerRight,
                    height: screenWidth * 0.050,
                    child: Row(
                      children: [
                        TimelineTile(
                          axis: TimelineAxis.horizontal,
                          isFirst:  true,
                          isLast: false,
                          endChild: Container(
                            width: screenWidth * 0.102,
                            //color: ApkColors.orangeColor,
                          ),
                          alignment: TimelineAlign.center,
                          indicatorStyle: IndicatorStyle(
                              width: screenWidth * 0.028,
                              height: screenWidth * 0.028,
                              color: clickOnItems[0]
                                  ? ApkColors.orangeColor
                                  : ApkColors.orangeColor,
                              indicator: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: clickOnItems[0]
                                        ? ApkColors.orangeColor
                                        : ApkColors.orangeColor,
                                  ),
                                  child: Center(
                                      child: Text(
                                        "${0 + 1}",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            color: ApkColors.backgroundColor,
                                            fontSize: screenWidth * 0.014),
                                      )))),
                          afterLineStyle: LineStyle(
                            thickness: 1,
                            color:  clickOnItems[0]
                                ? ApkColors.orangeColor
                                : ApkColors.primaryColor,
                          ),
                          beforeLineStyle: LineStyle(
                            thickness: 1,
                            color:  clickOnItems[0]
                                ? ApkColors.orangeColor
                                : ApkColors.primaryColor,
                          ),
                        ),

                        TimelineTile(
                          axis: TimelineAxis.horizontal,
                          isFirst:  false,
                          isLast: false,
                          endChild: Container(
                            width: screenWidth * 0.292,
                           // color: ApkColors.primaryColor,
                          ),
                          alignment: TimelineAlign.center,
                          indicatorStyle: IndicatorStyle(
                              width: screenWidth * 0.028,
                              height: screenWidth * 0.028,
                              color: clickOnItems[0]
                                  ? ApkColors.orangeColor
                                  : ApkColors.primaryColor,
                              indicator: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: clickOnItems[0]
                                        ? ApkColors.orangeColor
                                        : ApkColors.primaryColor,
                                  ),
                                  child: Center(
                                      child: Text(
                                        "${0 + 2}",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            color: ApkColors.backgroundColor,
                                            fontSize: screenWidth * 0.014),
                                      )))),
                          afterLineStyle: LineStyle(
                            thickness: 1,
                            color:  clickOnItems[0]
                                ? ApkColors.orangeColor
                                : ApkColors.primaryColor,
                          ),
                          beforeLineStyle: LineStyle(
                            thickness: 1,
                            color:  clickOnItems[0]
                                ? ApkColors.orangeColor
                                : ApkColors.primaryColor,
                          ),
                        ),
                        TimelineTile(
                          axis: TimelineAxis.horizontal,
                          isFirst:  false,
                          isLast: true,
                          alignment: TimelineAlign.center,
                          endChild: Container(
                            width: screenWidth * 0.102,
                           // color: ApkColors.orangeColor,
                          ),

                          indicatorStyle: IndicatorStyle(
                              width: screenWidth * 0.028,
                              height: screenWidth * 0.028,
                              color: clickOnItems[0]
                                  ? ApkColors.orangeColor
                                  : ApkColors.primaryColor,
                              indicator: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: clickOnItems[0]
                                        ? ApkColors.orangeColor
                                        : ApkColors.primaryColor,
                                  ),
                                  child: Center(
                                      child: Text(
                                        "${0 + 3}",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            color: ApkColors.backgroundColor,
                                            fontSize: screenWidth * 0.014),
                                      )))),
                          afterLineStyle: LineStyle(
                            thickness: 1,
                            color:  clickOnItems[0]
                                ? ApkColors.orangeColor
                                : ApkColors.primaryColor,
                          ),
                          beforeLineStyle: LineStyle(
                            thickness: 1,
                            color:  clickOnItems[0]
                                ? ApkColors.orangeColor
                                : ApkColors.primaryColor,
                          ),
                        ),

                      ],
                    )

                    // ListView.builder(
                    //   itemCount: exercises.length,
                    //   scrollDirection: Axis.horizontal,
                    //   physics: NeverScrollableScrollPhysics(),
                    //   itemBuilder: (context, index) {
                    //     return TimelineTile(
                    //       axis: TimelineAxis.horizontal,
                    //       isFirst:  index == 0,
                    //       endChild: Container(
                    //         width: screenWidth * 0.203,
                    //       ),
                    //       isLast: index == exercises.length - 1,
                    //       alignment: TimelineAlign.start,
                    //       indicatorStyle: IndicatorStyle(
                    //           width: screenWidth * 0.028,
                    //           height: screenWidth * 0.028,
                    //           color: clickOnItems[index]
                    //               ? ApkColors.orangeColor
                    //               : ApkColors.primaryColor,
                    //           indicator: Container(
                    //               decoration: BoxDecoration(
                    //                 shape: BoxShape.circle,
                    //                 color: clickOnItems[index]
                    //                     ? ApkColors.orangeColor
                    //                     : ApkColors.primaryColor,
                    //               ),
                    //               child: Center(
                    //                   child: Text(
                    //                     "${index + 1}",
                    //                     style: TextStyle(
                    //                         fontFamily: 'Poppins',
                    //                         fontWeight: FontWeight.w500,
                    //                         color: ApkColors.backgroundColor,
                    //                         fontSize: screenWidth * 0.014),
                    //                   )))),
                    //       afterLineStyle: LineStyle(
                    //         thickness: 1,
                    //         color:  clickOnItems[index]
                    //             ? ApkColors.orangeColor
                    //             : ApkColors.primaryColor,
                    //       ),
                    //       beforeLineStyle: LineStyle(
                    //         thickness: 1,
                    //         color:  clickOnItems[index]
                    //             ? ApkColors.orangeColor
                    //             : ApkColors.primaryColor,
                    //       ),
                    //     );
                    //
                    //
                    //   },
                    // ),
                  ),
                 SizedBox(
                   width: screenWidth * 0.051,
                 )
                ],
              ),
              SizedBox(height: screenWidth * 0.030),






              Container(

                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.046),
                  margin: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.2201),

                  decoration: BoxDecoration(
                    color: ApkColors.backgroundColor,
                    borderRadius:
                    BorderRadius.circular(screenWidth * 0.024),
                    border: Border.all(
                        width: 1.px, color: ApkColors.orangeColor),
                  ),
                  child:  (clickOnItems[1] == true )
                      ?
                  (clickOnItems[2] == true )
                      ? Column(
                    children: [

                      SizedBox(
                        height: screenWidth * 0.036.px,
                      ),
                      Container(
                        //color: ApkColors.primaryColor,
                        margin:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.024.px),
                        padding: EdgeInsets.only(bottom: screenWidth * 0.008.px),
                        width: double.infinity,
                        child: Text(
                          "Your Contact Person",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: ApkColors.primaryColor,
                              fontSize: screenWidth * 0.014.px),
                        ),
                      ),
                      Obx(() {
                        controller.count.value;
                        return Container(
                          padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.024.px),
                          height: screenWidth * 0.088.px,
                          child: CommonWidget.commonTextField(
                            // validator: controller.firstNameValidator,
                            hintText: "Name",
                            autofocus: false,
                            hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.hintColor,
                                fontSize: screenWidth * 0.011.px),
                            style:TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.primaryColor,
                                fontSize: screenWidth * 0.011.px),
                            filled: true,
                            fillColor: ApkColors.textEditColor,
                            enableBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                    ApkColors.primaryColorLite),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(screenWidth * 0.012.px))),
                            keyboardType: TextInputType.emailAddress,
                            //  controller: controller.firstNameController
                          ),
                        );
                      }),
                      SizedBox(
                        height: screenWidth * 0.008.px,
                      ),
                      Container(
                        margin:
                        EdgeInsets.symmetric(horizontal:screenWidth * 0.024.px),
                        padding: EdgeInsets.only(bottom: screenWidth * 0.008.px),
                        width: double.infinity,
                        child: Text(
                          'Mob. Number',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: ApkColors.primaryColor,
                              fontSize: screenWidth * 0.014.px),
                        ),
                      ),
                      Obx(() {
                        controller.count.value;
                        return Container(
                          padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.024.px),
                          height: screenWidth * 0.088.px,
                          child: CommonWidget.commonTextField(
                            //validator: controller.emailValidator,
                            // labelText: StringConstants.enterHint,
                            hintText: "9874563210",
                            autofocus: false,
                            filled: true,
                            hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.hintColor,
                                fontSize: screenWidth * 0.011.px),
                            style:TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.primaryColor,
                                fontSize: screenWidth * 0.011.px),

                            wntsuffixIcon: true,
                            suffixIcon:  Padding(padding: EdgeInsets.all(screenWidth * 0.010.px),
                              child: SvgPicture.asset(
                                IconPath.arrowDown,
                                height: screenWidth * 0.023.px,
                                width: screenWidth * 0.023.px,
                              ),
                            ),
                            fillColor: ApkColors.textEditColor,
                            enableBorder:  OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                    ApkColors.primaryColorLite),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(screenWidth * 0.012.px))),
                            keyboardType: TextInputType.emailAddress,
                            // controller: controller.emailAddressController
                          ),
                        );
                      }),
                      SizedBox(
                        height: screenWidth * 0.300.px,
                      ),



                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (ctx) => PlaceholderDialog(

                                icon: Column(
                                  children: [
                                    Text(
                                      " Post a job \n Successfully",
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      style: TextStyle(

                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          color: ApkColors.primaryColor,
                                          fontSize: screenWidth * 0.014.px),
                                    ),
                                    SizedBox(height:screenWidth * 0.050.px,),
                                    Image.asset(IconPath.success,
                                      height: screenWidth * 0.0791.px,
                                      width:screenWidth * 0.0791.px,
                                      fit: BoxFit.fill,
                                    )
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.of(ctx).pop(),
                                    child: Text(''),
                                  ),
                                ],
                              ),
                            );
                          },
                          child: Container(
                            height: 64.px,
                            margin:
                            EdgeInsets.symmetric(horizontal: screenWidth * 0.047.px),

                            alignment: Alignment.center,
                            // margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 24.px),
                            decoration: BoxDecoration(
                                color: ApkColors.orangeColor,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(screenWidth * 0.0221.px))),
                            child: Text(
                              StringConstants.next,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: ApkColors.backgroundColor,
                                  fontSize: screenWidth * 0.014.px),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenWidth * 0.021.px,
                      ),
                    ],
                  )
                      : Column(
                    children: [

                        SizedBox(
                        height: screenWidth * 0.036.px,
                        ),
                         Container(
                        //color: ApkColors.primaryColor,

                         margin:
                         EdgeInsets.symmetric(horizontal: screenWidth * 0.024.px),
                         padding: EdgeInsets.only(bottom: screenWidth * 0.008.px),
                         width: double.infinity,
                         child: Text(
                          "About the Jobs",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: ApkColors.primaryColor,
                              fontSize: screenWidth * 0.014.px),
                        ),
                      ),
                      Obx(() {
                        controller.count.value;
                        return Container(
                          padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.024.px),
                          height:screenWidth * 0.100.px,
                          child: CommonWidget.commonTextField(
                            // validator: controller.firstNameValidator,
                            hintText: "Describe the role, responsibilities, etc",
                            autofocus: false,
                            filled: true,
                            maxLines: 20,
                            hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.hintColor,
                                fontSize: screenWidth * 0.011.px),
                            style:TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.primaryColor,
                                fontSize: screenWidth * 0.011.px),
                            fillColor: ApkColors.textEditColor,
                            enableBorder:  OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                    ApkColors.primaryColorLite),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(screenWidth * 0.012.px))),
                            keyboardType: TextInputType.emailAddress,
                            //  controller: controller.firstNameController
                          ),
                        );
                      }),
                      SizedBox(
                        height: screenWidth * 0.008.px,
                      ),
                      Container(
                        margin:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.024.px),
                        padding: EdgeInsets.only(bottom: screenWidth * 0.008.px),
                        width: double.infinity,
                        child: Text(
                          'Your Task',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: ApkColors.primaryColor,
                              fontSize:screenWidth * 0.014.px),
                        ),
                      ),
                      Obx(() {
                        controller.count.value;
                        return Container(
                          padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.024.px),
                          height:screenWidth * 0.100.px,
                          child: CommonWidget.commonTextField(
                            //validator: controller.emailValidator,
                            // labelText: StringConstants.enterHint,
                            hintText: "equest for tender documents"
                                "Creating/entering/importing tender documents for tender processing",
                            maxLines: 20,
                            hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.hintColor,
                                fontSize: screenWidth * 0.011.px),
                            style:TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.primaryColor,
                                fontSize: screenWidth * 0.011.px),
                            autofocus: false,
                            filled: true,

                            fillColor: ApkColors.textEditColor,
                            enableBorder:  OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                    ApkColors.primaryColorLite),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(screenWidth * 0.012.px))),
                            keyboardType: TextInputType.emailAddress,
                            // controller: controller.emailAddressController
                          ),
                        );
                      }),
                      SizedBox(
                        height: screenWidth * 0.008.px,
                      ),
                      Container(
                        //color: ApkColors.primaryColor,
                        margin:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.024.px),
                        padding: EdgeInsets.only(bottom: screenWidth * 0.008.px),
                        width: double.infinity,
                        child: Text(
                          "Requirements",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: ApkColors.primaryColor,
                              fontSize: screenWidth * 0.014.px),
                        ),
                      ),
                      Obx(() {
                        controller.count.value;
                        return Container(
                          padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.024.px),
                          height:screenWidth * 0.100.px,
                          child: CommonWidget.commonTextField(
                            // validator: controller.mobilValidator,
                            hintText: "Completed commercial training e.g. as an industrial clerk (m/f/d) or comparable"
                                "Confident use of MS Office",
                            autofocus: false,
                            hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.hintColor,
                                fontSize: screenWidth * 0.011.px),
                            style:TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.primaryColor,
                                fontSize: screenWidth * 0.011.px),
                            maxLines: 20,
                            filled: true,
                            fillColor: ApkColors.textEditColor,
                            enableBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                    ApkColors.primaryColorLite),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10))),
                            keyboardType: TextInputType.emailAddress,
                            // controller: controller.phoneNumberController
                          ),
                        );
                      }),
                      SizedBox(
                        height: screenWidth * 0.008.px,
                      ),



                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            controller.increment();
                            clickOnItems[0] =
                            true;
                            clickOnItems[1] =
                            true;
                            clickOnItems[2] =
                            true;
                          },
                          child: Container(
                            height: 64.px,
                            margin:
                            EdgeInsets.symmetric(horizontal: screenWidth * 0.047.px),

                            alignment: Alignment.center,
                            // margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 24.px),
                            decoration: BoxDecoration(
                                color: ApkColors.orangeColor,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(screenWidth * 0.0221.px))),
                            child: Text(
                              StringConstants.next,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: ApkColors.backgroundColor,
                                  fontSize: screenWidth * 0.014.px),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenWidth * 0.040.px,
                      ),
                    ],
                  )
                      : Column(
                                          children: [
                      SizedBox(
                        height: screenWidth * 0.036,
                      ),
                      Container(
                        //color: ApkColors.primaryColor,
                        margin:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.024.px),
                        padding: EdgeInsets.only(bottom: screenWidth * 0.008.px),
                        width: double.infinity,
                        child: Text(
                          "Company Link",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: ApkColors.primaryColor,
                              fontSize: screenWidth * 0.014.px),
                        ),
                      ),
                      Obx(() {
                        controller.count.value;
                        return Container(
                          padding:
                          EdgeInsets.symmetric(horizontal:screenWidth * 0.024.px),
                          height: screenWidth * 0.061.px,
                          child: CommonWidget.commonTextField(
                            // validator: controller.firstNameValidator,
                            hintText: "Ex. www.1stmammuth.com",
                            hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.hintColor,
                                fontSize: screenWidth * 0.011.px),
                            style:TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.primaryColor,
                                fontSize: screenWidth * 0.011.px),
                            autofocus: false,
                            filled: true,
                            fillColor: ApkColors.textEditColor,
                            enableBorder:  OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                    ApkColors.primaryColorLite),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(screenWidth * 0.012.px))),
                            keyboardType: TextInputType.emailAddress,
                            //  controller: controller.firstNameController
                          ),
                        );
                      }),
                      SizedBox(
                        height: screenWidth * 0.008.px,
                      ),
                      Container(
                        margin:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.024.px),
                        padding: EdgeInsets.only(bottom: screenWidth * 0.008.px),
                        width: double.infinity,
                        child: Text(
                          'Category',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: ApkColors.primaryColor,
                              fontSize: screenWidth * 0.014.px),
                        ),
                      ),
                      Obx(() {
                        controller.count.value;
                        return Container(
                          padding:
                          EdgeInsets.symmetric(horizontal:screenWidth * 0.024.px),
                          height: screenWidth * 0.061.px,
                          child: CommonWidget.commonTextField(
                            //validator: controller.emailValidator,
                            // labelText: StringConstants.enterHint,
                            hintText: "Select Category",
                            hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.hintColor,
                                fontSize: screenWidth * 0.011.px),
                            style:TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.primaryColor,
                                fontSize: screenWidth * 0.011.px),
                            autofocus: false,
                            filled: true,
                      
                            wntsuffixIcon: true,
                            suffixIcon:  Padding(padding: EdgeInsets.all(10),
                              child: SvgPicture.asset(
                                IconPath.arrowDown,
                                height: screenWidth * 0.023.px,
                                width: screenWidth * 0.023.px,
                              ),
                            ),
                            fillColor: ApkColors.textEditColor,
                            enableBorder:  OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                    ApkColors.primaryColorLite),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(screenWidth * 0.010.px))),
                            keyboardType: TextInputType.emailAddress,
                            // controller: controller.emailAddressController
                          ),
                        );
                      }),
                      SizedBox(
                        height: screenWidth * 0.008.px,
                      ),
                      Container(
                        //color: ApkColors.primaryColor,
                        margin:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.024.px),
                        padding: EdgeInsets.only(bottom: screenWidth * 0.008.px),
                        width: double.infinity,
                        child: Text(
                          "Title",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: ApkColors.primaryColor,
                              fontSize:screenWidth * 0.014.px),
                        ),
                      ),
                      Obx(() {
                        controller.count.value;
                        return Container(
                          padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.024.px),
                          height:screenWidth * 0.061.px,
                          child: CommonWidget.commonTextField(
                            // validator: controller.mobilValidator,
                            hintText: "EX. Web Designer",
                            hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.hintColor,
                                fontSize: screenWidth * 0.011.px),
                            style:TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.primaryColor,
                                fontSize: screenWidth * 0.011.px),
                            autofocus: false,
                            filled: true,
                            fillColor: ApkColors.textEditColor,
                            enableBorder:  OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                    ApkColors.primaryColorLite),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(screenWidth * 0.010.px))),
                            keyboardType: TextInputType.emailAddress,
                            // controller: controller.phoneNumberController
                          ),
                        );
                      }),
                      SizedBox(
                        height: screenWidth * 0.008.px,
                      ),
                      Container(
                        //color: ApkColors.primaryColor,
                        margin:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.024.px),
                        padding: EdgeInsets.only(bottom: screenWidth * 0.008.px),
                        width: double.infinity,
                        child: Text(
                          "Job Type",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: ApkColors.primaryColor,
                              fontSize:screenWidth * 0.014.px),
                        ),
                      ),
                      Obx(() {
                        controller.count.value;
                        return Container(
                          padding:
                          EdgeInsets.symmetric(horizontal:screenWidth * 0.024.px),
                          height: screenWidth * 0.061.px,
                          child: CommonWidget.commonTextField(
                            hintText: "Select type",
                            hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.hintColor,
                                fontSize: screenWidth * 0.011.px),
                            style:TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.primaryColor,
                                fontSize: screenWidth * 0.011.px),
                            autofocus: false,
                            wntsuffixIcon: true,
                            suffixIcon:  Padding(padding: EdgeInsets.all(10),
                              child: SvgPicture.asset(
                                IconPath.arrowDown,
                                height: screenWidth * 0.023.px,
                                width: screenWidth * 0.023.px,
                              ),
                            ),
                            filled: true,
                            readOnly: true,
                            fillColor: ApkColors.textEditColor,
                            enableBorder:  OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                    ApkColors.primaryColorLite),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(screenWidth * 0.010.px))),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        );
                      }),
                      SizedBox(
                        height: screenWidth * 0.008.px,
                      ),
                      Container(
                        //color: ApkColors.primaryColor,
                        margin:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.024.px),
                        padding: EdgeInsets.only(bottom:screenWidth * 0.008.px),
                        width: double.infinity,
                        child: Text(
                          "Location",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: ApkColors.primaryColor,
                              fontSize: screenWidth * 0.014.px),
                        ),
                      ),
                      Obx(() {
                        controller.count.value;
                        return Container(
                          padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.024.px),
                          height: screenWidth * 0.061,
                          child: CommonWidget.commonTextField(
                            hintText: "Select",
                            hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.hintColor,
                                fontSize: screenWidth * 0.011.px),
                            style:TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.primaryColor,
                                fontSize: screenWidth * 0.011.px),
                            autofocus: false,
                            filled: true,
                            wntsuffixIcon: true,
                            suffixIcon:  Padding(padding: EdgeInsets.all(10),
                              child: SvgPicture.asset(
                                IconPath.arrowDown,
                                height: screenWidth * 0.023.px,
                                width: screenWidth * 0.023.px,
                              ),
                            ),
                            readOnly: true,
                            fillColor: ApkColors.textEditColor,
                            enableBorder:  OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                    ApkColors.primaryColorLite),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(screenWidth * 0.010.px))),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        );
                      }),
                      SizedBox(
                        height: screenWidth * 0.008.px,
                      ),
                      Container(
                        //color: ApkColors.primaryColor,
                        margin:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.024.px),
                        padding: EdgeInsets.only(bottom: screenWidth * 0.008.px),
                        width: double.infinity,
                        child: Text(
                          "Salary Range",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: ApkColors.primaryColor,
                              fontSize: screenWidth * 0.014.px),
                        ),
                      ),
                      Obx(() {
                        controller.count.value;
                        return Container(
                          padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.024.px),
                          height:screenWidth * 0.061.px,
                          child: CommonWidget.commonTextField(
                            hintText: "Ex. \$25k-35k/months",
                            hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.hintColor,
                                fontSize: screenWidth * 0.011.px),
                            style:TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: ApkColors.primaryColor,
                                fontSize: screenWidth * 0.011.px),
                            autofocus: false,
                            filled: true,
                      
                            readOnly: true,
                            fillColor: ApkColors.textEditColor,
                            enableBorder:  OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                    ApkColors.primaryColorLite),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(screenWidth * 0.010.px))),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        );
                      }),
                      SizedBox(
                        height: screenWidth * 0.040.px,
                      ),
                      
                      
                      
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                      
                            controller.increment();
                            clickOnItems[0] =
                            true;
                            clickOnItems[1] =
                            true;
                          },
                          child: Container(
                            height: 64.px,
                            margin:
                            EdgeInsets.symmetric(horizontal: 47.px),
                      
                            alignment: Alignment.center,
                            // margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 24.px),
                            decoration: BoxDecoration(
                                color: ApkColors.orangeColor,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(32.px))),
                            child: Text(
                              StringConstants.next,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: ApkColors.backgroundColor,
                                  fontSize: 14.px),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenWidth  * 0.021,
                      ),
                                          ],
                                        )
              ),
              SizedBox(height: screenWidth * 0.030),
            ],
          ),
        ),
      );
    });



  }
}

