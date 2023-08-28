import 'package:flutter/material.dart';
import './app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final defaultMargin = 20.0.w;
double defaultRadius = 25.0.r;
final boxRadius = Radius.circular(40.0.r);

//utilities
final separator_10 = SizedBox(
  height: 10.0.h,
);
final separator_20 = SizedBox(
  height: 20.0.h,
);
final separator_30 = SizedBox(
  height: 30.0.h,
);
final separator_40 = SizedBox(
  height: 40.0.h,
);

//typography
final titleStyle = TextStyle(
    fontSize: 23.0.sp, fontWeight: FontWeight.w700, color: primaryDark, height: 1.sp);

final titleStyleLight = TextStyle(
    fontSize: 16.0.sp, fontWeight: FontWeight.w600, color: light, height: 1.sp);

final subtitleStyle =
    TextStyle(fontSize: 16.0.sp, fontWeight: FontWeight.w500, color: secondary);