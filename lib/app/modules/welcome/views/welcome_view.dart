import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mammoth/app/modules/welcome/controllers/welcome_controller.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../Utils/StringConstants.dart';
import '../../../Utils/icon_path.dart';
import '../../../color/ApkColors.dart';
import '../../../routes/app_pages.dart';



class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ApkColors.backgroundColor,
        body: Obx(() {
          controller.count.value;
          return Column(
           // crossAxisAlignment: CrossAxisAlignment.,
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: 500.px,
                //color: ApkColors.backgroundColor,
                width: 500.px,
                child: Image.asset(IconPath.elispCircle),
              ),
              Image.asset(IconPath.stripIcon),
              SizedBox(
                height: 30.px,
              ),

              Image.asset(IconPath.textLogoIcon),
              SizedBox(
                height: 60.px,
              ),
              Obx(() {
                controller.count.value;
                return GestureDetector(
                  onTap: (){
                   Get.offNamed(Routes.LOGIN);
                  },
                  child: Container(
                    height: 64.px,
                    padding: EdgeInsets.all(2.px),
                    width: double.infinity,
                    alignment: Alignment.center,
                     margin: EdgeInsets.symmetric(horizontal: 20.px),
                    decoration: BoxDecoration(
                        color: ApkColors.primaryColor,
                        borderRadius:
                        BorderRadius.all(Radius.circular(30.px))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 60.px,
                        ),
                        Text(
                            StringConstants.getStarted,
                          style:
                          TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: ApkColors.backgroundColor,
                              fontSize: 18.px)
                        ),
                        Container(
                            height:  60.px,
                            width:  60.px,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color:  ApkColors.orangeColor,
                                borderRadius:
                                BorderRadius.all(Radius.circular( 30.px))),
                            child: Icon(CupertinoIcons.forward,color: ApkColors.backgroundColor
                            ))
                      ],
                    ),
                  ),
                );
              }),
            ],
          );
        }));
  }
}