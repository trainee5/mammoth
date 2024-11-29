import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../color/ApkColors.dart';

class CommonWidget {
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
              child: CommonWidget.appIcons(
                height: 34.px,
                width: 34.px, //assetName: '',
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
        // SvgPicture.asset(
        //   assetName,
        //   height: height ?? 24.px,
        //   width: width ?? 24.px,
        //   color: color,
        // ),
        IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            CupertinoIcons.back,
            color: ApkColors.orangeColor,
          ),
        ),
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

  static Widget commonTextfield(
      {double? elevation,
      String? hintText,
      String? labelText,
      String? errorText,
      String? initialValue,
      bool ConFormPasswordVisible = false,
      bool PasswordVisible = false,
      EdgeInsetsGeometry? margin,
      EdgeInsetsGeometry? contantPadiing,
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
            fontFamily: 'Nunito-Bold',
            color: ApkColors.primaryColor,
            fontWeight: FontWeight.bold,
          ),
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        // labelText: labelText ?? 'Full Name',

        label: Text(
          labelText ?? 'Full Name',
          style: TextStyle(
            fontSize: 12.px,
            fontFamily: 'NUnit-Bold',
            color: ApkColors.hintColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        // isCollapsed: true,
        //  errorText: errorText ?? 'erddror',
        errorStyle: errorStyle ??
            const TextStyle(
                fontSize: 10,
                fontFamily: 'Nunito-Bold',
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
                      ConFormPasswordVisible
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
        contentPadding: contantPadiing ?? EdgeInsets.all(12),
        labelStyle: labelStyle ??
            const TextStyle(
                fontSize: 12,
                fontFamily: 'Nunito-Bold',
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

  static Widget commonbutten({
    Color? fillColor,
    Color? textColor,
    bool wantGradient = false,
    String? text,
    double? height,
    double? horizontalmargin,
    double? borderredius,
    double? textfontsize,
    TextStyle? style,
    Gradient? gradientcustom,
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
        // margin: EdgeInsets.symmetric(horizontal: horizontalmargin ?? 50),
        decoration: BoxDecoration(
            color: fillColor ?? ApkColors.orangeColor,
            // : fillColor ?? ApkColors.greenColor,
            // //gradient: const LinearGradient(
            //     begin: Alignment.topCenter,
            //     end: Alignment.bottomCenter,
            //     colors: [
            //       ApkColors.opacity80greenColor,
            //       ApkColors.orangeColor,
            //       ApkColors.opacity80greenColor
            //     ]),
            borderRadius:
                BorderRadius.all(Radius.circular(borderredius ?? 30.px))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 60.px,
            ),
            Text(
              text ?? "Sign Up",
              style: style ??
                  TextStyle(
                      fontFamily: 'Nunito-Bold',
                      fontWeight: FontWeight.bold,
                      color: textColor ?? ApkColors.backgroundColor,
                      //backgroundColor: Colors.transparent,
                      fontSize: textfontsize ?? 17),
            ),
            Container(
              height:  60.px,
              width:  60.px,
              alignment: Alignment.center,
            //  color: ApkColors.orangeColor,
              // margin: EdgeInsets.symmetric(horizontal: horizontalmargin ?? 50),
              decoration: BoxDecoration(
                  color:  ApkColors.orangeColor,
                  // : fillColor ?? ApkColors.greenColor,
                  // //gradient: const LinearGradient(
                  //     begin: Alignment.topCenter,
                  //     end: Alignment.bottomCenter,
                  //     colors: [
                  //       ApkColors.opacity80greenColor,
                  //       ApkColors.orangeColor,
                  //       ApkColors.opacity80greenColor
                  //     ]),
                  borderRadius:
                      BorderRadius.all(Radius.circular( 30.px))),
              child: Icon(CupertinoIcons.forward,color: ApkColors.backgroundColor
            ))
          ],
        ),
      ),
    );
  }

  static Widget searchBar({
    Color? fillColor,
    Color? textColor,
    String? hinttext,
    double? height,
    double? horizontalmargin,
    double? borderredius,
    double? textfontsize,
    TextStyle? hintstyle,
    TextStyle? textfieldstyle,
    Icon? searchicon,
    Icon? backhicon,
    FocusNode? focusnode,
    required VoidCallback onPressed,
    VoidCallback? onPressededitbox,
  }) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          Container(
            height: height ?? 40,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 5, top: 5),
            decoration: BoxDecoration(
                color: fillColor ?? ApkColors.backgroundColor,
                borderRadius: BorderRadius.circular(borderredius ?? 20)),
            width: 40,
            child: IconButton(
              onPressed: onPressed,
              icon: backhicon ??
                  const Icon(
                    CupertinoIcons.back,
                    color: ApkColors.orangeColor,
                  ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 50, right: 15),
            decoration: BoxDecoration(
                color: ApkColors.backgroundColor,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                  textAlign: TextAlign.start,
                  cursorColor: ApkColors.orangeColor,
                  onTap: onPressededitbox ?? () {},
                  focusNode: focusnode ?? FocusNode(),
                  style: textfieldstyle ??
                      TextStyle(
                        fontSize: textfontsize ?? 15,
                        fontFamily: 'Nunito-Bold',
                        color: textColor ?? ApkColors.orangeColor,
                        fontWeight: FontWeight.bold,
                      ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: searchicon ??
                          const Icon(
                            Icons.search,
                            color: ApkColors.orangeColor,
                          ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          Get.snackbar("title", "hhj");
                        },
                        icon: Icon(
                          Icons.settings,
                          color: ApkColors.orangeColor,
                        ),
                      ),
                      hintText: hinttext ?? "Search here your collage...",
                      hintStyle: hintstyle ??
                          TextStyle(
                            fontSize: textfontsize ?? 15,
                            fontFamily: 'Nunito-Bold',
                            color: textColor ?? ApkColors.orangeColor,
                            fontWeight: FontWeight.bold,
                          )),
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
                    ApkColors.darkgreenColor,
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
