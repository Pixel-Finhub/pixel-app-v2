import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pixel_insurance_v2/app/ui/theme/app_colors.dart';
import 'package:pixel_insurance_v2/app/ui/utils/dimensions.dart';

class ProfileEditingPage extends StatelessWidget {
  const ProfileEditingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.close, color: Colors.black, size: 30),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Update Profile",
          style: TextStyle(
              color: primaryDark,
              fontSize: fluidFontSize(context, 30),
              fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: fluidWidth(context, 5)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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

void main() {
  runApp(const MaterialApp(
    home: ProfileEditingPage(),
  ));
}
