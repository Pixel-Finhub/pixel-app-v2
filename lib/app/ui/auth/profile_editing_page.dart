import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileEditingPage extends StatelessWidget {
  const ProfileEditingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage('assets/profile_image.png'),
            ),
            SizedBox(height: 20.0),
            ProfileInputField(
              iconPath: 'assets/icons/user.svg',
              labelText: 'First Name',
              initialValue: 'John', // Set the initial value here
            ),
            ProfileInputField(
              iconPath: 'assets/icons/user.svg',
              labelText: 'Last Name',
              initialValue: 'Doe', // Set the initial value here
            ),
            ProfileInputField(
              iconPath: 'assets/icons/phone.svg',
              labelText: 'Mobile Number',
              initialValue: '123-456-7890', // Set the initial value here
            ),
            ProfileInputField(
              iconPath: 'assets/icons/email.svg',
              labelText: 'Email',
              initialValue: 'johndoe@example.com', // Set the initial value here
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Implement the update profile logic here
              },
              child: Text("Update Profile"),
            ),
          ],
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
      margin: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              iconPath,
              width: 24.0,
              height: 24.0,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: TextFormField(
              initialValue: initialValue,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: labelText,
                contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                isDense: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProfileEditingPage(),
  ));
}
