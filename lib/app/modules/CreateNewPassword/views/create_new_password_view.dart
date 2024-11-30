import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mammoth/app/color/ApkColors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../CommonFile/CommonWidget.dart';
import '../../../Utils/StringConstants.dart';
import '../../../Utils/icon_path.dart';
import '../../../routes/app_pages.dart';
import '../controllers/create_new_password_controller.dart';

class CreateNewPasswordView extends GetView<CreateNewPasswordController> {
  const CreateNewPasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ApkColors.backgroundColor,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(120),
            child: Container(
              color: ApkColors.primaryColor,
              padding: EdgeInsets.only(top: 60.px, bottom: 24.px),
              child: Row(
                children: [
                  SizedBox(
                    width: 24.px,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Column(
                      children: [
                        CommonWidget.appIcons(
                          height: 40.px,
                          width: 40.px, //assetName: '',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.px,
                  ),
                  SizedBox(
                    //color: Colors.cyanAccent,
                    height: 60.px,
                    child: Text(
                      StringConstants.createNewPassword,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: ApkColors.backgroundColor,
                          fontSize: 26.px),
                    ),
                  ),
                ],
              ),
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40.px,
              ),
              Container(
                //color: ApkColors.primaryColor,
                margin: EdgeInsets.symmetric(horizontal: 50.px),
                padding: EdgeInsets.only(bottom: 8.px),
                width: double.infinity,
                child: Text(
                  StringConstants.newPassword,
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
                  padding: EdgeInsets.symmetric(horizontal: 50.px),
                  child: CommonWidget.commonTextField(
                      validator: controller.Passwordvalidator,
                      // labelText: StringConstants.enterEmail,
                      hintText: StringConstants.createPassword,
                      autofocus: false,
                      obscureText: controller.passwordVisible,
                      maxLine: 1,
                      wntsuffixIcon: true,
                      suffixIcon: IconButton(
                        icon:  controller.passwordVisible
                            ? SvgPicture.asset(
                          IconPath.eyeIcon,
                          height:  24.px,
                          width:  24.px,
                          color: ApkColors.passEditColor,
                        )
                        : SvgPicture.asset(
                          IconPath.viewOffIcon,
                          height:  24.px,
                          width:  24.px,
                          color: ApkColors.passEditColor,
                        ),


                        onPressed: () {
                          controller.increment();
                          controller.passwordVisible =
                          !controller.passwordVisible;
                        },
                      ),
                      filled: true,
                      fillColor:controller.passwordTextValueCheck
                          ? ApkColors.backgroundColor
                          : ApkColors.textEditColor,
                      prefixIcon: Image.asset(
                        IconPath.passLockIcon,
                        height: 17.px,
                        width: 20.px,),
                      enableBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: ApkColors.primaryColorLite),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      keyboardType: TextInputType.visiblePassword,
                      controller: controller.PasswordController
                  ),
                );
              }),
              SizedBox(
                height: 24.px,
              ),
              Container(
                //color: ApkColors.primaryColor,
                margin: EdgeInsets.symmetric(horizontal: 50.px),
                padding: EdgeInsets.only(bottom: 8.px),
                width: double.infinity,
                child: Text(
                  StringConstants.confirmNewPassword,
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
                  padding: EdgeInsets.symmetric(horizontal: 50.px),
                  child: CommonWidget.commonTextField(
                      validator:  (String? value) {
                        var passNonNullValue = value ?? "";
                        if (passNonNullValue.isEmpty) {
                          return ("Conform Password is required");
                        }
                        if (controller.confermPasswordController.text != value) {
                          return "Enter Right Conform Password";
                        } else {
                          return null;
                        }
                      },
                      // labelText: StringConstants.enterEmail,
                      hintText: StringConstants.createPassword,
                      autofocus: false,
                      obscureText: controller.conformPasswordVisible,
                      maxLine: 1,
                      wntsuffixIcon: true,
                      suffixIcon:  IconButton(
                        icon:  controller.conformPasswordVisible
                            ? SvgPicture.asset(
                          IconPath.eyeIcon,
                          height:  24.px,
                          width:  24.px,
                          color: ApkColors.passEditColor,
                        )
                            : SvgPicture.asset(
                          IconPath.viewOffIcon,
                          height:  24.px,
                          width:  24.px,
                          color: ApkColors.passEditColor,
                        ),

                        onPressed: () {
                          controller.increment();
                          controller.conformPasswordVisible =
                          !controller.conformPasswordVisible;
                        },
                      ),
                      filled: true,
                      fillColor:controller.passwordTextValueCheck
                          ? ApkColors.backgroundColor
                          : ApkColors.textEditColor,
                      prefixIcon: Image.asset(
                        IconPath.passLockIcon,
                        height: 17.px,
                        width: 20.px,),
                      enableBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: ApkColors.primaryColorLite),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      keyboardType: TextInputType.visiblePassword,
                      controller: controller.confermPasswordController
                  ),
                );
              }),
              SizedBox(
                height: 400.px,
              ),
              Obx(() {
                controller.count.value;
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 24.px),
                  child: CommonWidget.commonButton(
                    height: 64.px,
                      text: StringConstants.changePassword,

                      onPressed: () {
                        Get.toNamed(Routes.CreateAccount);
                        //  controller.formKey.currentState!.validate();
                        //  controller.animatedBtnLoad();
                      }
                  ),
                );
              }),
            ],
          ),
        ));
  }
}
