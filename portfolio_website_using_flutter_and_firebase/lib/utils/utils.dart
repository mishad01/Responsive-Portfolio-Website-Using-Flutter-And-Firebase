import 'package:flutter/cupertino.dart';

class Utils {
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double responsiveTextSize(BuildContext context, double fontSize) {
    final double referenceScreenWidth = 360.0;
    final double baseFontSize = fontSize;
    final double scaleFactor =
        MediaQuery.of(context).size.width / referenceScreenWidth;
    final double responsiveFontSize = baseFontSize * scaleFactor;
    return responsiveFontSize;
  }

  int getCrossCount(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 600) {
      return 2;
    } else if (screenWidth < 1200) {
      return 3;
    }
    return 3;
  }
}
