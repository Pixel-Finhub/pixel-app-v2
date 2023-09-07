import 'package:flutter/widgets.dart';

double? _screenHeight;
double? _screenWidth; 

void _initScreen(BuildContext context) {
  if (_screenHeight == null || _screenWidth == null) {
    _screenHeight = MediaQuery.of(context).size.height;
    _screenWidth = MediaQuery.of(context).size.width;
  }
}

double fluidHeight(BuildContext context, double percentage) {
  _initScreen(context);
  return _screenHeight! * percentage / 100;
}

double fluidWidth(BuildContext context, double percentage) {
  _initScreen(context);
  return _screenWidth! * percentage / 100;
}

double fluidFontSize(BuildContext context, double baseFontSize) {
  _initScreen(context);
  double scaleFactor = (_screenWidth! + _screenHeight!) / 1500.0;
  return baseFontSize * scaleFactor;
}
