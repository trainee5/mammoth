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

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    print("screenHeight : $screenHeight" );
    print("screenWidth : $screenWidth" );

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
                        StringConstants.createNewPassword,
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
        body: Form(
          key: controller.formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.043,
                ),
                Container(
                  //color: ApkColors.primaryColor,
                  margin: EdgeInsets.symmetric(horizontal: screenHeight * 0.0258),
                  padding: EdgeInsets.only(bottom:screenHeight * 0.0086),
                  width: double.infinity,
                  child: Text(
                    StringConstants.newPassword,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: ApkColors.primaryColor,
                        fontSize: screenHeight * 0.020),
                  ),
                ),
                Obx(() {
                  controller.count.value;
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: screenHeight * 0.0258),
                    height: screenHeight * 0.095,
                    child: CommonWidget.commonTextField(
                        validator: controller.passwordValidator,
                        // labelText: StringConstants.enterEmail,
                        hintText: StringConstants.createPassword,
                        autofocus: false,
                        minLine: 1,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: screenHeight * 0.0172,
                          fontFamily: 'Poppins',
                          color: ApkColors.primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                        hintStyle: TextStyle(
                          fontSize: screenHeight * 0.0172,
                          fontFamily: 'Poppins',
                          color: ApkColors.hintColor,
                          fontWeight: FontWeight.w400,
                        ),
                        errorStyle: TextStyle(
                          fontSize: screenHeight * 0.014,
                          fontFamily: 'Poppins',
                          color: ApkColors.textErrorColor,
                          fontWeight: FontWeight.w400,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: screenHeight * 0.0215),
                        obscureText: controller.passwordVisible,
                        wntsuffixIcon: true,
                        suffixIcon: IconButton(
                          icon:  controller.passwordVisible
                              ? SvgPicture.asset(
                            IconPath.eyeIcon,
                            height:  screenHeight * 0.0258,
                            width:  screenHeight * 0.0258,
                          )
                          : SvgPicture.asset(
                            IconPath.viewOffIcon,
                            height: screenHeight * 0.0258,
                            width:  screenHeight * 0.0258,
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
                          height: screenHeight * 0.0258,
                          width: screenHeight * 0.0258,),
                        enableBorder:  OutlineInputBorder(
                            borderSide: BorderSide(color: ApkColors.primaryColorLite),
                            borderRadius: BorderRadius.all(Radius.circular(screenHeight * 0.0129))),
                        keyboardType: TextInputType.visiblePassword,
                        controller: controller.passwordController
                    ),
                  );
                }),
                Container(
                  //color: ApkColors.primaryColor,
            
                  margin: EdgeInsets.symmetric(horizontal: screenHeight * 0.0258),
                  padding: EdgeInsets.only(bottom: screenHeight * 0.0086),
                  width: double.infinity,
                  child: Text(
                    StringConstants.confirmNewPassword,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: ApkColors.primaryColor,
                        fontSize: screenHeight * 0.020),
                  ),
                ),

                Obx(() {
                  controller.count.value;
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: screenHeight * 0.0258),
                    height: screenHeight * 0.095,
                    child: CommonWidget.commonTextField(
                        validator:  (String? value) {
                          var passNonNullValue = value ?? "";
                          if (passNonNullValue.isEmpty) {
                            return ("Conform Password is required");
                          }
                          if (controller.confirmPasswordController.text != value) {
                            return "Enter Right Conform Password";
                          } else {
                            return null;
                          }
                        },
                        // labelText: StringConstants.enterEmail,
                        hintText: StringConstants.createPassword,
                        autofocus: false,
                        obscureText: controller.conformPasswordVisible,
                        minLine: 1,
                        maxLines: 1,
                        wntsuffixIcon: true,
                        style: TextStyle(
                          fontSize: screenHeight * 0.0172,
                          fontFamily: 'Poppins',
                          color: ApkColors.primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                        hintStyle: TextStyle(
                          fontSize: screenHeight * 0.0172,
                          fontFamily: 'Poppins',
                          color: ApkColors.hintColor,
                          fontWeight: FontWeight.w400,
                        ),
                        errorStyle: TextStyle(
                          fontSize: screenHeight * 0.014,
                          fontFamily: 'Poppins',
                          color: ApkColors.textErrorColor,
                          fontWeight: FontWeight.w400,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: screenHeight * 0.0215),
                        suffixIcon:  IconButton(
                          icon:  controller.conformPasswordVisible
                              ? SvgPicture.asset(
                            IconPath.eyeIcon,
                            height:  screenHeight * 0.0258,
                            width:  screenHeight * 0.0258,
                          )
                              : SvgPicture.asset(
                            IconPath.viewOffIcon,
                            height:  screenHeight * 0.0258,
                            width:  screenHeight * 0.0258,
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
                          height: screenHeight * 0.0258,
                          width: screenHeight * 0.0258,),
                        enableBorder:  OutlineInputBorder(
                            borderSide: BorderSide(color: ApkColors.primaryColorLite),
                            borderRadius: BorderRadius.all(Radius.circular(screenHeight * 0.0129))),
                        keyboardType: TextInputType.visiblePassword,
                        controller: controller.confirmPasswordController
                    ),
                  );
                }),
                SizedBox(
                  height: screenHeight * 0.3536,
                ),

                Obx(() {
                  controller.count.value;
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: screenHeight * 0.0258),
                    child: CommonWidget.commonButton(
                      height: screenHeight * 0.069,
                        text: StringConstants.changePassword,
            
                        onPressed: () {
                          controller.createNewPassword();
            
                          controller.formKey.currentState!.validate();
            
                          //  controller.formKey.currentState!.validate();
                          //  controller.animatedBtnLoad();
                        }
                    ),
                  );
                }
                ),

              ],
            ),
          ),
        ));
  }
}
