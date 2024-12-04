import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../CommonFile/constants.dart';
import '../../../Utils/StringConstants.dart';
import '../../../Utils/icon_path.dart';
import '../../../color/ApkColors.dart';
import '../controllers/dashboard_web_screen_controller.dart';

class DashboardWebScreenView extends GetView<DashboardWebScreenController> {
  const DashboardWebScreenView({super.key});

  
  
  @override
  Widget build(BuildContext context) {


    int hoveredCardIndex = -1;
    int hoveredHeaderIndex = -1;
    bool isCallbackHover = false;


    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return  Obx((){
      controller.count.value;
      return Scaffold(
        appBar: AppBar(
          toolbarHeight: screenHeight * 0.13,
          backgroundColor: ApkColors.backgroundColor,
          surfaceTintColor: ApkColors.backgroundColor,
          scrolledUnderElevation: 0,
          // forceMaterialTransparency: true,
          elevation: 5,
          shadowColor: ApkColors.grey.withOpacity(0.5),
          leadingWidth: screenWidth * 0.2,
          title: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
             // color: Colors.cyan,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Image.asset(
              IconPath.mammothOneSt,
              width: screenWidth * 0.15,
              fit: BoxFit.fitWidth,
            ),
          ),
          actions: List<Widget>.generate(
            4,
                (index) {
              if (index < 6) {
                return Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: InkWell(
                    onHover: (isHover) {

                        if (isHover) {
                          hoveredHeaderIndex = index;
                        } else {
                          hoveredHeaderIndex = -1;
                        }

                        controller.increment();

                    },
                    onTap: () async {
                      // var url = Uri.parse(AppConstants.headersUrlList[index]);
                      // await launchUrl(url);
                    },
                    child: Container(
                      color: hoveredHeaderIndex == index
                          ? ApkColors.orangeColor
                          : Colors.transparent,
                      padding:
                      const EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                      child: Text(
                        AppConstants.headersList[index],
                        style: TextStyle(
                          fontSize: screenWidth * 0.013,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                );
              } else {
                return InkWell(
                  onHover: (isHover) {

                      isCallbackHover = isHover;

                      controller.increment();

                  },
                  onTap: () {},
                  splashColor: Colors.transparent,
                  splashFactory: NoSplash.splashFactory,
                  overlayColor:
                  const WidgetStatePropertyAll(Colors.transparent),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(
                        screenWidth * 0.015,
                        screenWidth * 0.015,
                        screenWidth * 0.02,
                        screenWidth * 0.015),
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.02, vertical: 13),
                    decoration: BoxDecoration(
                      color: isCallbackHover ? ApkColors.orangeColor : ApkColors.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: isCallbackHover
                            ? ApkColors.black
                            : Colors.transparent,
                        width: 1.5,
                      ),
                    ),
                    child: Text(
                      "GET A CALLBACK",
                      style: TextStyle(
                        color:
                        isCallbackHover ? ApkColors.black : ApkColors.backgroundColor,
                        fontSize: screenWidth * 0.013,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                );
              }
            },
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.06, vertical: screenWidth * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "We Are",
                softWrap: true,
                style: GoogleFonts.getFont(
                  "Ubuntu",
                  color: ApkColors.grey,
                  fontSize: screenWidth * 0.04,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    "The ",
                    softWrap: true,
                    style: GoogleFonts.getFont(
                      "Ubuntu",
                      color: ApkColors.black,
                      fontSize: screenWidth * 0.04,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Lottie.asset(
                      "assets/animations/biceps.json",
                      width: screenWidth * 0.05,
                      height: screenWidth * 0.05,
                      fit: BoxFit.contain,
                    ),
                  ),
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      style: GoogleFonts.getFont(
                        "Ubuntu",
                        color: ApkColors.black,
                        fontSize: screenWidth * 0.04,
                        fontWeight: FontWeight.w700,
                      ),
                      children: [
                        TextSpan(
                          text: "Product Team ",
                          style: GoogleFonts.getFont(
                            "Montserrat",
                            color: Colors.blue,
                            fontSize: screenWidth * 0.05,
                            fontWeight: FontWeight.w900,
                            shadows: const [
                              Shadow(
                                color: ApkColors.black,
                                blurRadius: 0.3,
                                offset: Offset(1, 1),
                              ),
                              Shadow(
                                color: ApkColors.black,
                                blurRadius: 0.3,
                                offset: Offset(-1, -1),
                              ),
                              Shadow(
                                color: ApkColors.black,
                                blurRadius: 0.3,
                                offset: Offset(1, -1),
                              ),
                              Shadow(
                                color: ApkColors.black,
                                blurRadius: 0.3,
                                offset: Offset(-1, 1),
                              ),
                            ],
                          ),
                        ),
                        const TextSpan(
                          text: " you need.",
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "What will you build",
                    softWrap: true,
                    style: GoogleFonts.getFont(
                      "Ubuntu",
                      color: ApkColors.black,
                      fontSize: screenWidth * 0.04,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Lottie.asset(
                      "assets/animations/bulb.json",
                      width: screenWidth * 0.05,
                      height: screenWidth * 0.05,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      " now?",
                      softWrap: true,
                      style: GoogleFonts.getFont(
                        "Ubuntu",
                        color: ApkColors.black,
                        fontSize: screenWidth * 0.04,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List<Widget>.generate(
                  5,
                      (index) {
                    return InkWell(
                      onHover: (isHover) {

                          if (isHover) {
                            hoveredCardIndex = index;
                          } else {
                            hoveredCardIndex = -1;
                          }
                          controller.increment();

                      },
                      onTap: () async {
                        // var url = Uri.parse(AppConstants.cardUrl[index]);
                        // await launchUrl(url);
                      },
                      child: Card(
                        shape: Border.all(
                          width: hoveredCardIndex == index ? 3 : 0.5,
                          color: hoveredCardIndex == index
                              ? Colors.blue
                              : ApkColors.grey,
                        ),
                        elevation: 20,
                        color: ApkColors.backgroundColor,
                        surfaceTintColor: ApkColors.backgroundColor,
                        shadowColor: ApkColors.grey,
                        child: Container(
                          width: screenWidth / 6.8,
                          height: screenWidth / 6.9,
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.02,
                              vertical: screenWidth * 0.01),
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          AppConstants.cardsHeadingFirst[index],
                                          style: TextStyle(
                                            color: ApkColors.grey,
                                            fontSize: screenWidth * 0.014,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          AppConstants.cardsHeadingSecond[index],
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                            color: ApkColors.black,
                                            fontSize: screenWidth * 0.013,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              hoveredCardIndex == index
                                  ? Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 2,
                                  ),
                                ),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.blue,
                                  size: screenWidth * 0.02,
                                ),
                              )
                                  : const SizedBox(),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    });



  }
}
