import 'package:flutter/widgets.dart';

double fluidHeight(BuildContext context, double percentage) {
  double screenHeight = MediaQuery.of(context).size.height;
  return screenHeight * percentage / 100;
}

double fluidWidth(BuildContext context, double percentage) {
  double screenWidth = MediaQuery.of(context).size.width;
  return screenWidth * percentage / 100;
}


double fluidFontSize(BuildContext context, double baseFontSize) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;

  // You can adjust this factor based on your design preferences
  double scaleFactor = (screenWidth + screenHeight) / 1500.0;

  return baseFontSize * scaleFactor;
}