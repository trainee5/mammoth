import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mammoth/app/Utils/StringConstants.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../Utils/icon_path.dart';
import '../color/ApkColors.dart';

class CommonWidget {



  //
  static appBar(
      {String? title,
      bool wantBackButton = true,
      required BuildContext context,
      TextStyle? styleText,
      List<Widget>? actions}) {
    return AppBar(
      elevation: 0,
      shadowColor: Theme.of(context).scaffoldBackgroundColor,
      surfaceTintColor: Theme.of(context).scaffoldBackgroundColor,
      foregroundColor: Theme.of(context).scaffoldBackgroundColor,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      leading: wantBackButton
          ? GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Column(
                children: [
                  SizedBox(height: 50.px,),
                  CommonWidget.appIcons(
                    height: 34.px,
                    width: 34.px, //assetName: '',
                  ),
                ],

              ),
            )
          : null,
      centerTitle: true,
      actions: actions,
      title: Text(
        title ?? '',
        style: styleText ??
            Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(fontSize: 18.px),
      ),
    );
  }

  static Widget appIcons(
      { //String assetName,
      double? width,
      double? height,
      Color? color}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          "assets/svgs/arrowleft.svg",
          height: height ?? 24.px,
          width: width ?? 24.px,
          color: ApkColors.backgroundColor,
        ),
        // IconButton(
        //   onPressed: () {
        //     Get.back();
        //   },
        //   icon: Icon(
        //     CupertinoIcons.back,
        //     color: ApkColors.orangeColor,
        //   ),
        // ),
      ],
    );
  }

  // static imageView({
  //   double? width,
  //   double? height,
  //   double? radius,
  //   required String image,
  //   String? defaultNetworkImage,
  //   BoxFit? fit,
  //   BorderRadiusGeometry? borderRadius,
  // }) {
  //   return SizedBox(
  //     height: height ?? 64.px,
  //     width: width ?? double.infinity,
  //     child: ClipRRect(
  //       borderRadius: borderRadius ?? BorderRadius.circular(radius ?? 8.px),
  //       child: CachedNetworkImage(
  //         imageUrl: image,
  //         fit: fit ?? BoxFit.cover,
  //         errorWidget: (context, error, stackTrace) {
  //           return Container(
  //             height: height ?? 64.px,
  //             width: width ?? double.infinity,
  //             color:
  //                 Theme.of(context).colorScheme.onSecondary.withOpacity(.2.px),
  //             child: Image.network("https://server-php-8-2.technorizen.com/amuse/public/uploads/users/USER_IMG_75878.png",
  //             fit:BoxFit.cover,),
  //             // ClipRRect(
  //             //   borderRadius: BorderRadius.circular(radius ?? 8.px),
  //             //   child: Icon(Icons.person, color: CupertinoColors.activeBlue),
  //             // ),
  //           );
  //         },
  //         progressIndicatorBuilder: (context, url, downloadProgress) {
  //           return SizedBox(
  //             height: height ?? 64.px,
  //             width: width ?? double.infinity,
  //             child: Shimmer.fromColors(
  //               baseColor: ApkColors.backgroundColor,
  //               highlightColor: ApkColors.primaryColor,
  //               child: Container(
  //                 color: Theme.of(context)
  //                     .colorScheme
  //                     .onSecondary
  //                     .withOpacity(.4.px),
  //               ),
  //             ),
  //           );
  //         },
  //       ),
  //     ),
  //   );
  // }

  static Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xffFB5D54), Color(0xffF44D91)],
  ).createShader(Rect.fromLTRB(90, 0, 180, 0 ),);


  static Widget commonTextField(
      {double? elevation,
      String? hintText,
      String? labelText,
      String? errorText,
      String? initialValue,
      bool conFormPasswordVisible = false,
      bool passwordVisible = false,
      EdgeInsetsGeometry? margin,
      EdgeInsetsGeometry? contentPadding,
      double? containerHeight,
      TextEditingController? controller,
      int? maxLines,
      double? cursorHeight,
      bool wantBorder = false,
      ValueChanged<String>? onChanged,
      FormFieldValidator<String>? validator,
      Color? fillColor,
      Color? initialBorderColor,
      double? initialBorderWidth,
      TextInputType? keyboardType,
      double? borderRadius,
      double? maxHeight,
      TextStyle? hintStyle,
      TextStyle? style,
      TextStyle? labelStyle,
      TextStyle? errorStyle,
      //List<TextInputFormatter>? inputFormatters,
      TextCapitalization textCapitalization = TextCapitalization.none,
      bool autofocus = false,
      bool readOnly = false,
      bool hintTextColor = false,
      Widget? suffixIcon,
      Widget? prefixIcon,
      AutovalidateMode? autoValidateMode,
      int? maxLength,
      int? maxLine,
      int? minLine,
      VoidCallback? onTap,
      VoidCallback? onPressed,
      bool obscureText = false,
      Iterable<String>? autofillHint,
      FocusNode? focusNode,
      bool? filled,
      bool isCard = false,
      TextInputAction? textInputAction,
      bool wntsuffixIcon = false,
      bool wantPrefixIcon = true,
      InputBorder? enableBorder}) {
    return SizedBox(
      height: 64.px,
      child: TextFormField(
        controller: controller,
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        keyboardType: keyboardType ?? TextInputType.text,
        cursorColor: ApkColors.orangeColor,
        cursorErrorColor: ApkColors.orangeColor,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        maxLength: maxLength,
        maxLines: maxLines,
        minLines: minLine,

        autofocus: autofocus,
        onTap: onTap ?? () {},
        readOnly: readOnly,
        textInputAction: textInputAction ?? TextInputAction.next,
        //textCapitalization: textCapitalization ?? TextCapitalization.none,
        textAlignVertical: TextAlignVertical.top,
        style: style ??
            TextStyle(
              fontSize: 16.px,
              fontFamily: 'Poppins',
              color: ApkColors.hintColor,
              fontWeight: FontWeight.w400,
            ),
        validator: validator,
        obscureText: obscureText,
        decoration: InputDecoration(
          // labelText: labelText ?? 'Full Name',

          hintText: hintText ?? 'hint ',
          hintStyle:  TextStyle(
              fontSize: 16.px,
              fontFamily: 'Poppins',
              color: ApkColors.hintColor,
              fontWeight: FontWeight.w400,
            ),

          // label: Text(
          //   labelText ?? 'Full Name',
          //   style: TextStyle(
          //     fontSize: 12.px,
          //     fontFamily: 'Poppins',
          //     color: ApkColors.hintColor,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
          // isCollapsed: true,
          //  errorText: errorText ?? 'erddror',
          errorStyle: errorStyle ??
               TextStyle(
                  fontSize: 16.px,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                   foreground: Paint()..shader = linearGradient,
               ),
          prefixIcon: wantPrefixIcon
              ? prefixIcon ??
                  const Icon(
                    Icons.account_circle,
                    color: ApkColors.orangeColor,
                  )
              : null,
          suffixIcon: wntsuffixIcon
              ? suffixIcon ??
                  IconButton(
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        conFormPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: ApkColors.primaryColorLite,
                      ),
                      onPressed: onPressed
                      //     () {
                      //   // Update the state i.e. toogle the state of passwordVisible variable
                      //   setState(() {
                      //     ConFormPasswordVisible =
                      //     !ConFormPasswordVisible;
                      //   });
                      // },
                      )
              : null,
          contentPadding: contentPadding ?? EdgeInsets.symmetric(vertical: 20.px),
          labelStyle: labelStyle ??
              const TextStyle(
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  color: ApkColors.orangeColor),

          // focusColor: Colors.green,


          fillColor: fillColor ?? ApkColors.backgroundColor,
          filled: filled ?? true,
          isDense: true,
          counterText: ' ',
          //constraints:  BoxConstraints(maxHeight: 64.px, minHeight: 64.px),


          border: UnderlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 3.0),
          ),
          enabledBorder: enableBorder ??
               OutlineInputBorder(
                  borderSide: BorderSide(color: ApkColors.orangeColor),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ApkColors.orangeColor),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ApkColors.orangeColor),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ApkColors.orangeColor),
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ),
    );
  }


 // Get.toNamed(Routes.OTP_PAGE, parameters: data);

  // Map<String, String> data = {
  //   ApiKeyConstants.mobile: MobileNumber.text,
  //   ApiKeyConstants.countryCode: dialcode,
  // };get create page:Registration

  static Widget commonButton({
    Color? fillColor,
    Color? textColor,
    bool wantGradient = false,
    String? text,
    double? height,
    double? horizontalMargin,
    double? borderRadius,
    double? textFontSize,
    TextStyle? style,
    required VoidCallback onPressed,
    bool wantBorder = false,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height ?? 64.px,
        padding: EdgeInsets.all(2.px),
        width: double.infinity,
        alignment: Alignment.center,
        // margin: EdgeInsets.symmetric(horizontal: horizontalMargin ?? 24.px),
        decoration: BoxDecoration(
            color: fillColor ?? ApkColors.orangeColor,
            borderRadius:
                BorderRadius.all(Radius.circular(borderRadius ?? 30.px))),
        child: Text(
          text ?? "Sign Up",
          style: style ??
              TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: textColor ?? ApkColors.backgroundColor,
                  //backgroundColor: Colors.transparent,
                  fontSize: textFontSize ?? 18.px),
        ),
      ),
    );
  }

  static Widget searchBar({
    Color? fillColor,
    Color? textColor,
    Color? iconColor,
    String? hinttext,
    double? height,
    bool? autofocus,
    bool? readOnly,
    double? horizontalmargin,
    double? borderredius,
    double? textfontsize,
    TextStyle? hintstyle,
    TextStyle? textfieldstyle,
    Widget? searchIcon,
    Icon? backhicon,
    FocusNode? focusnode,
    required VoidCallback onPressed,
    VoidCallback? onPressedEditBox,
  }) {
    return Material(
      color: Colors.transparent,
      child: Column(
        children: [
          Container(
            margin:  EdgeInsets.symmetric(horizontal: 24.px),
            decoration: BoxDecoration(
                color: fillColor ?? ApkColors.primaryColor,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                  textAlign: TextAlign.start,
                  cursorColor: ApkColors.orangeColor,
                  autofocus: autofocus ?? false ,
                  readOnly: readOnly ?? false,
                  onTap: onPressedEditBox ?? () {},
                  focusNode: focusnode ?? FocusNode(),
                  style: textfieldstyle ??
                      TextStyle(
                        fontSize: textfontsize ?? 15.px,
                        fontFamily: 'Poppins',
                        color: textColor ?? ApkColors.orangeColor,
                        fontWeight: FontWeight.w400,
                      ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(right: 16.px,left: 8.px),
                        child: searchIcon ??
                            SvgPicture.asset(
                              IconPath.searchIcon,
                              height: 32.px,
                              width: 32.px,
                              color: iconColor ?? ApkColors.primaryColor,
                            ),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                          height: 56.px,
                          width: 56.px,
                          padding: EdgeInsets.all(10.px),
                          margin: EdgeInsets.all(4.px),
                          decoration: BoxDecoration(
                              color: ApkColors.orangeColor,
                            borderRadius: BorderRadius.circular(10.px)
                          ),
                          child: SvgPicture.asset(
                            IconPath.preferenceIcon,
                            height: 30.px,
                            width: 30.px,
                          ),

                        ),
                      ),
                      hintText: hinttext ?? StringConstants.search,
                      hintStyle: hintstyle ??
                          TextStyle(
                            fontSize: textfontsize ?? 15,
                            fontFamily: 'Poppins',
                            color: textColor ?? ApkColors.orangeColor,
                            fontWeight: FontWeight.w400,
                          ),
                       enabledBorder:
                         OutlineInputBorder(
                            borderSide: BorderSide(color: ApkColors.backgroundColor60p,width: 1.px),
                            borderRadius: BorderRadius.all(Radius.circular(12.px),)),
                       focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:ApkColors.backgroundColor60p),
                        borderRadius: BorderRadius.all(Radius.circular(12.px))),
                  ),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget topbargredient(
      {double? height, double? padingtop, Widget? widget}) {
    return Stack(
      children: [
        Container(
          height: height ?? Get.height * 1.04,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    ApkColors.orangeColor,
                    ApkColors.backgroundColor
                  ]),
              borderRadius: BorderRadius.circular(30)),
        ),
        Padding(
          padding: EdgeInsets.only(top: padingtop ?? 60),
          child: Container(child: widget),
        ),
      ],
    );
  }
}
