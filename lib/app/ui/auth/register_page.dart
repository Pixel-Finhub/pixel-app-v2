import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:pixel_insurance_v2/app/controllers/firebase_auth_controller.dart';
import 'package:pixel_insurance_v2/app/ui/auth/login_page.dart';
import 'package:pixel_insurance_v2/app/ui/auth/otp.dart';
import 'package:pixel_insurance_v2/app/ui/utils/dimensions.dart';
import 'package:pixel_insurance_v2/app/ui/widgets/button.dart';

import '../theme/app_colors.dart';
import '../theme/app_constants.dart';

class RegisterPage extends StatelessWidget {
  final controller = Get.put(FirebaseAuthController());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nidaTextEditController = TextEditingController();
  PhoneNumber number = PhoneNumber(isoCode: 'TZ');

  RegisterPage({super.key});

  void _handleRegistration(BuildContext context) async {
    // TODO: Implement registration logic here
    final String nidaNumber = nidaTextEditController.text;
    final String phoneNumber = controller.phoneNo.text.trim();

    // TODO: Add registration logic, error handling, and navigation
    if (nidaNumber.isNotEmpty && phoneNumber.isNotEmpty) {
      // Simulate a loading state while registering
      // You should replace this with your actual registration logic
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      );

      // Simulate a delay for registration (replace with actual API call)
      await Future.delayed(const Duration(seconds: 2));

      // Remove loading indicator
      Navigator.of(context).pop();

      // If registration is successful, navigate to the OTP verification page
      Get.to(() => const OtpScreen());
    } else {
      // Show an error message if the fields are not filled
      Get.snackbar(
        'Error',
        'Please fill in all fields',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        minimum: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: fluidWidth(context, 5),
                ),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 70.0,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/images/register.png',
                          height: fluidWidth(context, 80),
                          width: fluidWidth(context, 80),
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(defaultRadius),
                          side: const BorderSide(
                            color: primary,
                            width: 1.0,
                          ),
                        ),
                        elevation: 0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 3.0,
                          ),
                          child: TextFormField(
                            controller: nidaTextEditController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              hintText: "NIDA Number",
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.person),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(defaultRadius),
                          side: const BorderSide(
                            color: primary,
                            width: 1.0,
                          ),
                        ),
                        elevation: 0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 3.0,
                          ),
                          child: InternationalPhoneNumberInput(
                            onInputChanged: (PhoneNumber number) {
                              print(number.phoneNumber);
                              controller.phoneNumber(number.phoneNumber);
                            },
                            onInputValidated: (bool value) {
                              print(number.phoneNumber);
                              controller.phoneNumber(number.phoneNumber);
                            },
                            selectorConfig: const SelectorConfig(
                              selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                            ),
                            ignoreBlank: false,
                            autoFocus: false,
                            autoValidateMode: AutovalidateMode.disabled,
                            selectorTextStyle:
                                const TextStyle(color: Colors.black),
                            initialValue: number,
                            textFieldController: controller.phoneNo,
                            formatInput: false,
                            keyboardType: TextInputType.phone,
                            inputBorder: InputBorder.none,
                            onSaved: (PhoneNumber number) {
                              print('On Saved: $number');
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: fluidHeight(context, 4),
              ),
              CustomButton(
                function: () => _handleRegistration(context),
                text: "Register",
              ),
              TextButton(
                onPressed: () {
                  Get.to(() => const LoginPage());
                },
                child: RichText(
                  text: const TextSpan(
                    text: "Already a user? ",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                    children: [
                      TextSpan(
                        text: "Login",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
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
