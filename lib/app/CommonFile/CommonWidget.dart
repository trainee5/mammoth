import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType ?? TextInputType.text,
      cursorColor: ApkColors.orangeColor,
      cursorErrorColor: ApkColors.orangeColor,
      maxLength: maxLength,
      maxLines: maxLine,
      minLines: minLine,
      autofocus: autofocus,
      onTap: onTap ?? () {},
      readOnly: readOnly,
      textInputAction: textInputAction ?? TextInputAction.next,
      //textCapitalization: textCapitalization ?? TextCapitalization.none,
      textAlignVertical: TextAlignVertical.top,
      style: style ??
          const TextStyle(
            fontSize: 12,
            fontFamily: 'Poppins',
            color: ApkColors.primaryColor,
            fontWeight: FontWeight.bold,
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
            const TextStyle(
                fontSize: 10,
                fontFamily: 'Poppins',
                color: ApkColors.orangeColor),
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
        contentPadding: contentPadding ?? EdgeInsets.all(12),
        labelStyle: labelStyle ??
            const TextStyle(
                fontSize: 12,
                fontFamily: 'Poppins',
                color: ApkColors.orangeColor),
        // focusColor: Colors.green,

        fillColor: fillColor ?? ApkColors.backgroundColor,
        filled: filled ?? true,
        border: const UnderlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(width: 3.0),
        ),
        enabledBorder: enableBorder ??
            const OutlineInputBorder(
                borderSide: BorderSide(color: ApkColors.orangeColor),
                borderRadius: BorderRadius.all(Radius.circular(10))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ApkColors.orangeColor),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ApkColors.orangeColor),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ApkColors.orangeColor),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ApkColors.orangeColor),
            borderRadius: BorderRadius.all(Radius.circular(10))),
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
   // Gradient? gradientcustom,
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
    String? hintText,
    double? height,
    double? horizontalMargin,
    double? borderRadius,
    double? textFontSize,
    TextStyle? hintStyle,
    TextStyle? textFieldStyle,
    Icon? searchIcon,
    //Icon? ,
    FocusNode? focusNode,
    required VoidCallback onPressed,
    VoidCallback? onPressedEditBox,
  }) {
    return Material(
      color: Colors.transparent,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 24.px),
        decoration: BoxDecoration(
          color: ApkColors.primaryColor,
          borderRadius: BorderRadius.circular(10.px),
          border:
              Border.all(width: 1.0.px, color: ApkColors.backgroundColor80p),
        ),
        child: Row(
          children: [
            Expanded(
                child:  TextField(
                textAlign: TextAlign.start,
                cursorColor: ApkColors.orangeColor,
                onTap: onPressedEditBox ?? () {},
                focusNode: focusNode ?? FocusNode(),
                style: textFieldStyle ??
                  TextStyle(
                    fontSize: textFontSize ?? 15,
                    fontFamily: 'Poppins',
                    color: textColor ?? ApkColors.orangeColor,
                        fontWeight: FontWeight.bold,
                      ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                  prefixIcon: Container(
                    margin: EdgeInsets.only(left: 18.px,right: 8.px),
                    child: Row(
                      children: [
                        searchIcon ??
                            SvgPicture.asset(
                              "assets/svgs/search-01.svg",
                              height:  32.px,
                              width:  32.px,
                              color: ApkColors.backgroundColor80p,
                            ),
                        SizedBox(width: 8.px,),
                        Text("Search",
                          style: TextStyle(
                            fontSize: textFontSize ?? 20.px,
                            fontFamily: 'Poppins',
                            color: textColor ?? ApkColors.backgroundColor80p,
                            fontWeight: FontWeight.w400,
                          ),


                        )
                      ],
                    )



                  ),
                      suffixIcon: Container(
                        height: 56.px,
                        margin: EdgeInsets.all(4.px),
                        padding: EdgeInsets.all(13.px),
                        width: 56.px,
                        decoration: BoxDecoration(
                          color: ApkColors.orangeColor,
                          borderRadius: BorderRadius.circular(10.px),
                        ),
                        child: SvgPicture.asset(
                          "assets/svgs/preference-horizontal.svg",
                          height:  32.px,
                          width:  32.px,
                          color: ApkColors.backgroundColor,
                        ),

                      ),
                  hintText: hintText ?? "",
                  hintStyle: hintStyle ??
                      TextStyle(
                        fontSize: textFontSize ?? 20.px,
                        fontFamily: 'Poppins',
                        color: textColor ?? ApkColors.backgroundColor80p,
                            fontWeight: FontWeight.w400,
                          )),
                )),
          ],
        ),
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
                    ApkColors.textEditColor,
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
