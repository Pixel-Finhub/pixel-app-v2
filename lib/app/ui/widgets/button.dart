import 'package:flutter/material.dart';
import 'package:pixel_insurance_v2/app/ui/theme/app_colors.dart';
class CustomButton extends Container {
  final Function function;
  final String text;
  @override
  final Color color;
  final Color textColor;
  final Color splashColor;
  final double fontSize;

  CustomButton({
    super.key, 
    required this.function,
    required this.text,
    this.splashColor = Colors.blueGrey,
    this.fontSize = 16,
    this.color = Colors.blue,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(

      splashColor: splashColor,
      onPressed: ()=> function(),
      color: primary,
      minWidth: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
        ),
      ),
    );
  }
}