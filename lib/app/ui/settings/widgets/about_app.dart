import 'package:flutter/material.dart';
import 'package:pixel_insurance_v2/app/ui/utils/dimensions.dart';

Future<void> showAboutAppDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('About'),
        content: SizedBox(
          width: fluidWidth(context, 90), // 90% width
          height: fluidHeight(context, 90), // 90% height
          child: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text("Welcome to the About section of our app.\n\n"
                    "Our app is designed to provide you with the best insurance services and support. "
                    "We continuously strive to improve your experience and ensure your security.\n\n"
                    "App Features:\n\n"
                    "1. Insurance Coverage: Our app provides comprehensive insurance coverage for various aspects of your life.\n"
                    "2. Support: Our support team is available to assist you with any questions or concerns.\n"
                    "3. Updates: We regularly update our app to enhance its performance and security.\n\n"
                    "We hope you enjoy using our app and find it valuable for your insurance needs. "
                    "Thank you for choosing us!\n\n"
                    "Version: 2.0.1\n"
                    "Last updated: August 31, 2023."),
                // Add your 'About' content here.
              ],
            ),
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Close'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

Future<void> showAppVersionDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('App Version'),
        content: SizedBox(
          width: fluidWidth(context, 90), // 90% width
          height: fluidHeight(context, 90), // 90% height
          child: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text("App Version 2.0.1\n\n"
                    "This is the latest version of our app, which includes several improvements and bug fixes. "
                    "We are committed to providing you with the best experience and security.\n\n"
                    "If you encounter any issues or have suggestions for further improvements, "
                    "please don't hesitate to reach out to our support team.\n\n"
                    "Thank you for using our app!\n\n"
                    "Last updated: August 31, 2023."),
                // Add your 'App Version' content here.
              ],
            ),
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Close'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
