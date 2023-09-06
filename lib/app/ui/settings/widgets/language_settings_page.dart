import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class LanguageSettingsBottomSheet extends StatefulWidget {
  @override
  _LanguageSettingsBottomSheetState createState() =>
      _LanguageSettingsBottomSheetState();
}

class _LanguageSettingsBottomSheetState
    extends State<LanguageSettingsBottomSheet> {
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
            "Language Preferences:",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          ListTile(
            title: const Text("English"),
            trailing: Checkbox(
              value: isEnglishSelected,
              onChanged: (value) {
                setState(() {
                  isEnglishSelected = value!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text("Swahili"),
            trailing: Checkbox(
              value: isSwahiliSelected,
              onChanged: (value) {
                setState(() {
                  isSwahiliSelected = value!;
                });
              },
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Implement logic to save language preferences
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
