import 'package:flutter/material.dart';
import 'package:pixel_insurance_v2/app/ui/shared/custom_nav.dart';
import 'package:pixel_insurance_v2/app/ui/utils/dimensions.dart';

class HomePagePackages extends StatelessWidget {
  const HomePagePackages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 70.0,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: const Center(
                child: Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.black,
                  size: 25.0,
                ),
              ),
            ),
            Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: const Center(
                child: Icon(
                  Icons.person_outline_rounded,
                  color: Colors.black,
                  size: 25.0,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Row(children: [
        Column(
          children: [
            Container(
              // insurance packages slider banner card
              height: fluidHeight(context, 30.0),
              width: fluidWidth(context, 100),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10.0),
              ),

              // insurance packages slider banner card
            ),


          ],
        ),
      ]),

      bottomNavigationBar: CustomNav(currentIndex: 0),
      // BottomNavigationBar();
    );
  }
}
