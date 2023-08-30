import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:pixel_insurance_v2/app/ui/auth/login_page.dart';
import 'package:pixel_insurance_v2/app/ui/widgets/button.dart';

import '../theme/app_colors.dart';
import '../theme/app_constants.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    var nidaTextEditController = TextEditingController();
    var phoneNumberTextEditController = TextEditingController();

    PhoneNumber number = PhoneNumber(isoCode: 'TZ');

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        minimum: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 70.0.h,
                    ),
                    Center(
                      child: Image.asset(
                        'assets/images/register.png',
                      ),
                    ),
                    SizedBox(
                      height: 30.0.h,
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
                          ),
                          // onChanged: (value) => controller.nidaNumber(value),
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
                            // controller.phoneNumber(number.phoneNumber);
                          },
                          onInputValidated: (bool value) {
                            print(value);
                            // controller.phoneNumber(number.phoneNumber);
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
                          textFieldController: phoneNumberTextEditController,
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
              SizedBox(
                height: 30.0.h,
              ),
              CustomButton(
                function: () {},
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
