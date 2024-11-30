import 'package:flutter/material.dart';

class AppConfig {
  // Font Sizes
  static const double headingFontSize = 26.0; // Top Centered Heading
  static const double subHeadingFontSize = 24.0; // Sub Heading
  static const double contentFontSize = 18.0; // Content

  // Text Styles
  static const TextStyle headingTextStyle = TextStyle(
    fontSize: headingFontSize,
    fontWeight: FontWeight.bold,
    color: Colors.black, // Customize this as per your design
    fontFamily: 'Poppins',
  );
  static const TextStyle textFieldHeadingTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );

  static const TextStyle subHeadingTextStyle = TextStyle(
    fontSize: subHeadingFontSize,
    fontWeight: FontWeight.w600,
    color: Colors.black, // Customize this as per your design
    fontFamily: 'Montserrat',
  );

  static const TextStyle secondarySubHeading = TextStyle(
    color: Colors.black,
    fontSize: 22,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );

  static const TextStyle contentTextStyle = TextStyle(
    fontSize: contentFontSize,
    fontWeight: FontWeight.normal,
    color: Colors.black, // Customize this as per your design
    fontFamily: 'Montserrat',
  );

  static const BoxShadow defaultShadow = BoxShadow(
    color: Color(0x3F000000),
    blurRadius: 15,
    offset: Offset(0, 2),
    spreadRadius: 0,
  );
        DateTime getCurrentUKTime() {
        final nowUTC = DateTime.now().toUtc();
        // Assuming UK is UTC+1 for daylight saving
        final ukTime = nowUTC.add(Duration(hours: 1));

        // Check if current date is outside of Daylight Saving Time
        final isDST = (nowUTC.month > 3 && nowUTC.month < 10) ||
            (nowUTC.month == 3 && nowUTC.day >= 25) ||
            (nowUTC.month == 10 && nowUTC.day < 25);

        if (!isDST) {
          return nowUTC; // No adjustment needed
        }
        return ukTime; // Adjust for daylight saving
      }
}
