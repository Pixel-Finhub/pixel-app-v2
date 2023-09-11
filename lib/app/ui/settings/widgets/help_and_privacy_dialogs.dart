import 'package:flutter/material.dart';
import 'package:pixel_insurance_v2/app/ui/utils/dimensions.dart';

Future<void> showHelpDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Help'),
        content: SizedBox(
          width: fluidWidth(context, 90), // 90% width
          height: fluidHeight(context, 90), // 90% height
          child: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text("Welcome to our Help Center.\n\n"
                    "If you have any questions or need assistance with our app, "
                    "please don't hesitate to reach out. Our support team is here to help you.\n\n"
                    "You can contact us via email at support@pixel.com or call our helpline at +255672204508. "
                    "We are available Monday to Friday, from 9:00 AM to 6:00 PM (EAT).\n\n"
                    "Frequently Asked Questions:\n\n"
                    "1. How do I create an account?\n"
                    "   To create an account, click on the 'Sign Up' button on the login screen. "
                    "You'll be asked to provide your name, email address, and create a password.\n\n"
                    "2. I forgot my password. How do I reset it?\n"
                    "   If you forget your password, click on the 'Forgot Password' link on the login screen. "
                    "We'll send you an email with instructions on how to reset your password.\n\n"
                    "3. How can I update my profile information?\n"
                    "   To update your profile, go to the 'Profile' section in the app. "
                    "You can edit your name, email, and other details there.\n\n"
                    "4. What should I do if I encounter an issue with the app?\n"
                    "   If you experience any issues or errors, please contact our support team. "
                    "You can describe the problem, and we'll work to resolve it as quickly as possible.\n\n"
                    "5. Is my personal information safe with you?\n"
                    "   Yes, we take your privacy seriously. Your personal information is protected following our Privacy Policy. "
                    "We do not share your data with third parties without your consent.\n\n"
                    "We hope this Help Center provides answers to your questions. If you need further assistance, "
                    "feel free to get in touch with us. Thank you for choosing our app!"),
                // Add your help content here.
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

Future<void> showPrivacyPolicyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Privacy Policy'),
        content: SizedBox(
          width: fluidWidth(context, 90), // 90% width
          height: fluidHeight(context, 90), // 90% height
          child: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text("Privacy Policy\n\n"
                    "Your privacy is important to us. This Privacy Policy outlines how we collect, use, disclose, and safeguard "
                    "your personal information when you use our services. By using our app, you consent to this Privacy Policy.\n\n"
                    "1. Information We Collect:\n"
                    "   - Personal Information: We may collect your name, email address, and contact details to provide our services.\n"
                    "   - Usage Information: We collect data about how you interact with our app, such as your device information, "
                    "app usage patterns, and IP address.\n"
                    "   - Cookies: We use cookies to enhance your browsing experience and improve our services.\n\n"
                    "2. How We Use Your Information:\n"
                    "   - We use your information to provide and maintain our services, respond to your requests, and send important "
                    "notifications.\n"
                    "   - Your data helps us understand how our app is used and allows us to improve and personalize your experience.\n\n"
                    "3. Disclosure of Your Information:\n"
                    "   - We may share your information with third-party service providers to help us deliver our services effectively.\n"
                    "   - We do not sell, trade, or rent your personal information to third parties.\n\n"
                    "4. Data Security:\n"
                    "   - We take reasonable measures to protect your data, but no method of transmission over the internet is 100% secure.\n"
                    "   - You are responsible for maintaining the confidentiality of your account credentials.\n\n"
                    "Please review our full Privacy Policy on our website for more details.\n\n"
                    "Last updated: August 31, 2023."),
                // Add your privacy policy content here.
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
