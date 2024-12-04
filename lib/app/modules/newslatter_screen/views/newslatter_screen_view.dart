import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../CommonFile/CommonWidget.dart';
import '../../../Utils/StringConstants.dart';
import '../../../Utils/icon_path.dart';
import '../../../color/ApkColors.dart';
import '../controllers/newslatter_screen_controller.dart';

class NewslatterScreenView extends GetView<NewslatterScreenController> {
  const NewslatterScreenView({super.key});

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
                      ),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    SizedBox(
                      width: 12.px,
                    ),
                    Text(
                      StringConstants.newsletter,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 64.px,
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(IconPath.emailNewsLatter,
            height: 220.px,
            width: 291.px,
            ),
          ),
          SizedBox(
            height: 136.px,
          ),
          Container(
            //color: ApkColors.primaryColor,
            margin: EdgeInsets.symmetric(horizontal: 24.px),
            padding: EdgeInsets.only(bottom: 8.px),
            width: double.infinity,
            child: Text(
              StringConstants.enterEmail,
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: ApkColors.primaryColor,
                  fontSize: 18.px),
            ),
          ),
          Obx(() {
            controller.count.value;
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 24.px),
              child: CommonWidget.commonTextField(
                //validator: controller.Emailvalidator,
                // labelText: StringConstants.enterHint,
                hintText: StringConstants.enterHint,
                autofocus: false,
                filled: true,
                fillColor: ApkColors.textEditColor,
                prefixIcon: Image.asset(
                  IconPath.mailIcon,
                  height: 17.px,
                  width: 20.px,),
                enableBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: ApkColors.primaryColorLite),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                keyboardType: TextInputType.emailAddress,
                //controller: controller.EmailAddressController
              ),
            );
          }),
          SizedBox(
            height: 36.px,
          ),
          GestureDetector(
            onTap: () {

             // Get.toNamed(Routes.APPLICATION_SENT_SCREEN);
            },
            child: Container(
              height: 64.px,
              margin: EdgeInsets.symmetric(horizontal: 47.px),

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
               StringConstants.submit,
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

        ],
      ),
    );
  }
}
