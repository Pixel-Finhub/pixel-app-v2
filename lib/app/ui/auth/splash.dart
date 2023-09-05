// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pixel_insurance_v2/app/ui/auth/login_page.dart';
import 'package:pixel_insurance_v2/app/ui/theme/app_colors.dart';
import 'package:pixel_insurance_v2/app/ui/utils/dimensions.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      /* App bar --it is supposed to be empty to give space to the splash content-- */
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      /* Splash content */
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "PIXEL INSURANCE",
              style: TextStyle(
                  color: primary,
                  fontWeight: FontWeight.w200,
                  fontSize: fluidFontSize(context, 35)),
            ),
            Container(
              padding: EdgeInsetsDirectional.only(
                top: fluidHeight(context, 10),
              ),
              height: fluidWidth(context, 85),
              width: fluidWidth(context, 85),
              child: Image.asset("assets/images/splash.png"),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: primary,
                      size: fluidFontSize(context, 20),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "Quick and easy to set up.",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w200,
                        fontSize: fluidFontSize(context, 18),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: primary,
                      size: fluidFontSize(context, 20),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "Fast & Easy claim process",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w200,
                        fontSize: fluidFontSize(context, 18),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: fluidHeight(context, 20),
            ), //spacing from insurance splash image to call to action button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: fluidHeight(context, 1.4),
                    ),
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: fluidFontSize(context, 18),
                        fontWeight: FontWeight.w200,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  //  button styling
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
