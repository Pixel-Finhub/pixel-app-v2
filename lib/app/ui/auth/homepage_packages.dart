import 'package:flutter/material.dart';
import 'package:pixel_insurance_v2/app/ui/shared/custom_nav.dart';

class HomePagePackages extends StatelessWidget {
  const HomePagePackages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.notifications_none_outlined,
              color: Colors.black,
              size: 30.0,
            ),
            Icon(
              Icons.person_outline_outlined,
              color: Colors.black,
              size: 30.0,
            ),
          ],
        ),
        toolbarHeight: 70.0,
        elevation: 0,
      ),
      body: Container(),

      bottomNavigationBar: CustomNav(currentIndex: 0),
      // BottomNavigationBar();
    );
  }
}
