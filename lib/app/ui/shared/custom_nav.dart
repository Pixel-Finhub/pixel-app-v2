import 'package:flutter/material.dart';
import 'package:pixel_insurance_v2/app/ui/theme/app_colors.dart';

class CustomNav extends StatelessWidget {
  const CustomNav({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      enableFeedback: true,
      unselectedItemColor: Colors.blueGrey,
      selectedItemColor: primary,
      currentIndex: currentIndex,
      onTap: (val) {
        // to be implemented
      },
     items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            color: Colors.black,
            size: 30.0,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search_outlined,
            color: Colors.black,
            size: 30.0,
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings_outlined,
            color: Colors.black,
            size: 30.0,
          ),
          label: 'Settings',
        ),
      ],
    );
  }
}
