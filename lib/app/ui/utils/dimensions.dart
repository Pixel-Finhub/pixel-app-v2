import 'package:flutter/widgets.dart';

double fluidHeight(BuildContext context, double percentage) {
  double screenHeight = MediaQuery.of(context).size.height;
  return screenHeight * percentage / 100;
}

double fluidWidth(BuildContext context, double percentage) {
  double screenWidth = MediaQuery.of(context).size.width;
  return screenWidth * percentage / 100;
}
