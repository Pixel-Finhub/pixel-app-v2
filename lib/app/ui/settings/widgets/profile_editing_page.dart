import 'package:flutter/material.dart';
import 'package:pixel_insurance_v2/app/ui/theme/app_colors.dart';
import 'package:pixel_insurance_v2/app/ui/utils/dimensions.dart';

class ProfileEditingPage extends StatelessWidget {
  const ProfileEditingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: fluidWidth(context, 5)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //  edit profile title text
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: fluidHeight(context, 2)),
                child: Text(
                  "Edit Profile",
                  style: TextStyle(
                    fontSize: fluidFontSize(context, 24),
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              const ProfileInputField(
                iconPath: 'assets/icons/user.svg',
                labelText: 'First Name',
                initialValue: 'John', // Set the initial value here
              ),
              const ProfileInputField(
                iconPath: 'assets/icons/user.svg',
                labelText: 'Last Name',
                initialValue: 'Doe', // Set the initial value here
              ),
              const ProfileInputField(
                iconPath: 'assets/icons/phone.svg',
                labelText: 'Mobile Number',
                initialValue: '123-456-7890', // Set the initial value here
              ),
              const ProfileInputField(
                iconPath: 'assets/icons/email.svg',
                labelText: 'Email',
                initialValue:
                    'johndoe@example.com', // Set the initial value here
              ),
              const SizedBox(height: 5.0),
              ElevatedButton(
                onPressed: () {
                  // process profile updates here
                },
                //  button styling
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: fluidWidth(context, 5),
                    vertical: fluidHeight(context, 1.4),
                  ),
                  child: Text(
                    "Update Profile",
                    style: TextStyle(
                      fontSize: fluidFontSize(context, 18),
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileInputField extends StatelessWidget {
  final String iconPath;
  final String labelText;
  final String initialValue;

  const ProfileInputField({
    Key? key,
    required this.iconPath,
    required this.labelText,
    required this.initialValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              initialValue: initialValue,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: labelText,
                contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                isDense: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


