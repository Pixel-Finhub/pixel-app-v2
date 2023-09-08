import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pixel_insurance_v2/app/ui/settings/widgets/help_and_privacy_dialogs.dart';
import 'package:pixel_insurance_v2/app/ui/settings/widgets/about_app.dart';
import 'package:pixel_insurance_v2/app/ui/settings/widgets/language_settings_page.dart';
import 'package:pixel_insurance_v2/app/ui/settings/widgets/notification_setings_page.dart';
import 'package:pixel_insurance_v2/app/ui/settings/widgets/profile_editing_page.dart';
import 'package:pixel_insurance_v2/app/ui/shared/custom_nav.dart';
import 'package:pixel_insurance_v2/app/ui/theme/app_colors.dart';
import 'package:pixel_insurance_v2/app/ui/utils/dimensions.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: fluidHeight(context, 8),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: const Text(
          "Settings",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                fluidWidth(context, 5),
                fluidHeight(context, 1),
                0,
                fluidHeight(context, 0),
              ),
              child: const Text(
                "Account Settings",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                fluidWidth(context, 2),
                fluidHeight(context, .5),
                fluidWidth(context, 2),
                fluidHeight(context, .5),
              ),
              child: Card(
                elevation: 1,
                child: Padding(
                  padding: EdgeInsets.all(fluidHeight(context, 2)),
                  child: Column(
                    children: [
                      buildSettingsItem(
                        context,
                        Icons.person_outline,
                        "Edit Profile",
                        onPressed,
                      ),
                      buildSettingsItem(
                        context,
                        Icons.language_outlined,
                        "Language",
                        onPressed,
                      ),
                      buildSettingsItem(
                        context,
                        Icons.notifications_none_outlined,
                        "Notifications",
                        onPressed,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                fluidWidth(context, 5),
                fluidHeight(context, 1),
                0,
                fluidHeight(context, 0),
              ),
              child: const Text(
                "Support and About",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                fluidWidth(context, 2),
                fluidHeight(context, .5),
                fluidWidth(context, 2),
                fluidHeight(context, .5),
              ),
              child: Card(
                elevation: 1,
                child: Padding(
                  padding: EdgeInsets.all(fluidHeight(context, 2)),
                  child: Column(
                    children: [
                      buildSettingsItem(
                        context,
                        Icons.help_outline,
                        "Help",
                        () {
                          showHelpDialog(context);
                        },
                      ),
                      buildSettingsItem(
                        context,
                        Icons.privacy_tip_outlined,
                        "Privacy Policy",
                        () {
                          showPrivacyPolicyDialog(
                              context); // Call the function to show the Privacy Policy dialog
                        },
                      ),
                      buildSettingsItem(
                        context,
                        Icons.info_outline,
                        "About",
                        () {
                          showAboutAppDialog(
                              context); // Call the function to show the Privacy Policy dialog
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                fluidWidth(context, 2),
                fluidHeight(context, .5),
                fluidWidth(context, 2),
                fluidHeight(context, .5),
              ),
              child: TextButton(
                onPressed: onPressed,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.logout,
                      color: Colors.black,
                      size: 30,
                    ),
                    SizedBox(width: fluidWidth(context, 5)),
                    const Text(
                      "Logout",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //  text button for app version
            Padding(
              padding: EdgeInsets.fromLTRB(
                fluidWidth(context, 2),
                fluidHeight(context, .5),
                fluidWidth(context, 2),
                fluidHeight(context, .5),
              ),
              child: TextButton(
                onPressed: () {
                  showAppVersionDialog(context);
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.info_outline,
                      color: Colors.black,
                      size: 30,
                    ),
                    SizedBox(width: fluidWidth(context, 5)),
                    const Text(
                      "App Version",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomNav(currentIndex: 3),
    );
  }
}

void onPressed() {
  // Handle button press
}

Widget buildSettingsItem(
  BuildContext context,
  IconData icon,
  String text,
  VoidCallback onPressed,
) {
  return TextButton(
    onPressed: () {
      if (text == "Edit Profile") {
        _showEditProfileBottomSheet(context);
      } else if (text == "Language") {
        _showLanguageSettingsBottomSheet(context);
      } else if (text == "Notifications") {
        _showNotificationSettingsBottomSheet(context);
      } else {
        // Handle other settings actions
        onPressed();
      }
    },
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.black,
          size: 30,
        ),
        const SizedBox(width: 20),
        Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    ),
  );
}

void _showEditProfileBottomSheet(BuildContext context) {
  Get.bottomSheet(
    const ProfileEditingPage(),
  );
}

// Language Settings Bottom Sheet
void _showLanguageSettingsBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return LanguageSettingsBottomSheet();
    },
  );
}

// Notification Settings Bottom Sheet
void _showNotificationSettingsBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return const NotificationSettingsBottomSheet();
    },
  );
}
