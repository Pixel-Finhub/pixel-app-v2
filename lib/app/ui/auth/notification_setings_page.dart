import 'package:flutter/material.dart';

class NotificationSettingsBottomSheet extends StatefulWidget {
  const NotificationSettingsBottomSheet({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NotificationSettingsBottomSheetState createState() =>
      _NotificationSettingsBottomSheetState();
}

class _NotificationSettingsBottomSheetState
    extends State<NotificationSettingsBottomSheet> {
  bool receiveOffers = true;
  bool receivePackageProgress = true;
  bool receiveUpdateReminders = true;
  bool isEnglishSelected = true;
  bool isSwahiliSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Notification Preferences:",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          ListTile(
            title: const Text("Receive Offers"),
            trailing: Switch(
              value: receiveOffers,
              onChanged: (value) {
                setState(() {
                  receiveOffers = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text("Receive Package Progress"),
            trailing: Switch(
              value: receivePackageProgress,
              onChanged: (value) {
                setState(() {
                  receivePackageProgress = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text("Receive Update Reminders"),
            trailing: Switch(
              value: receiveUpdateReminders,
              onChanged: (value) {
                setState(() {
                  receiveUpdateReminders = value;
                });
              },
            ),
          ),

          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Implement logic to save notification and language preferences
              // Close the bottom sheet
              Navigator.pop(context);
            },
            child: const Text("Save Preferences"),
          ),
        ],
      ),
    );
  }
}
