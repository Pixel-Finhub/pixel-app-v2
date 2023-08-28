import 'package:flutter/material.dart';
import 'package:pixel_insurance_v2/app/ui/theme/app_constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        minimum: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70.0,
              ),
              Center(
                child: Image.asset(
                  'assets/images/login_person.png',
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} // git flow feature finish splash