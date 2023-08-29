import 'package:flutter/material.dart';
import 'package:pixel_insurance_v2/app/ui/shared/custom_nav.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        /* padding for status bar */
        toolbarHeight: 70,
        elevation: 0,

        /* back button */
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: const Text(
          "Settings",
          style: TextStyle(
              color: Colors.black, fontSize: 28, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /* Account settings container */
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
              child: Text(
                "Account Settings",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),

            /* Account settings card */
            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Card(
                elevation: 1,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Column(
                    children: [
                      /* Account settings card content */
                      TextButton(
                        onPressed: _onPressed,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person_outline,
                              color: Colors.black,
                              size: 30,
                            ),
                            SizedBox(width: 20),
                            Text(
                              "Edit profile",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      TextButton(
                        onPressed: _onPressed,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.language_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            SizedBox(width: 20),
                            Text(
                              "Language",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      TextButton(
                        onPressed: _onPressed,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.notifications_none_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            SizedBox(width: 20),
                            Text(
                              "Notifications",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            /* End Account settings */

            /* Support and about */
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
              child: Text(
                "Support and About",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),

            /* Support and about card */
            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Card(
                elevation: 1,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Column(
                    children: [
                      /* Support and about card content */
                      TextButton(
                        onPressed: _onPressed,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.help_outline,
                              color: Colors.black,
                              size: 30,
                            ),
                            SizedBox(width: 20),
                            Text(
                              "Help",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      TextButton(
                        onPressed: _onPressed,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.privacy_tip_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            SizedBox(width: 20),
                            Text(
                              "Privacy Policy",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      TextButton(
                        onPressed: _onPressed,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.info_outline,
                              color: Colors.black,
                              size: 30,
                            ),
                            SizedBox(width: 20),
                            Text(
                              "About",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            /* End Support and about */

            /* Logout button */
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: TextButton(
                onPressed: _onPressed,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.logout,
                      color: Colors.black,
                      size: 30,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Logout",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ),


            /* Version */
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Text(
                "Version 1.0.0",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
            ),
          
            // CustomNav(currentIndex: 0)
          ],
        ),
      ),

      bottomNavigationBar: const CustomNav(currentIndex: 0),
    );
  }
}

//  this function is used as a place holder for all on pressed functions
void _onPressed() {
  // print("pressed");
}
