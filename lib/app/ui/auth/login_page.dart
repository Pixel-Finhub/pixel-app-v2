import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:pixel_insurance_v2/app/ui/theme/app_colors.dart';
import 'package:pixel_insurance_v2/app/ui/theme/app_constants.dart';
import 'package:pixel_insurance_v2/app/ui/widgets/button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    var phoneNumberTextEditController = TextEditingController();
    var passwordTextEditController = TextEditingController();

    PhoneNumber number = PhoneNumber(isoCode: 'TZ');
    bool _isPasswordVisible = false;

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
                          controller: passwordTextEditController,
                          keyboardType: TextInputType.text,
                          obscureText: !_isPasswordVisible,
                          decoration: InputDecoration(
                            hintText: "Password",
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              icon: Icon(_isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  _isPasswordVisible = !_isPasswordVisible;
                                });
                              }
                            ),
                          ),
                          // onChanged: (value) => controller.password(value),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              CustomButton(
                function: () {},
                text: "Login",
              ),
              SizedBox(
                height: 20.0.h,
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Forgot Password?"),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              TextButton(
                onPressed: () {},
                child: RichText(
                  text: const TextSpan(
                    text: "Not a user? ",
                    style: TextStyle(
                      color: Colors.black, // Color for "Not a user?"
                    ),
                    children: [
                      TextSpan(
                        text: "Create account",
                        style: TextStyle(
                          color: Colors.blue, // Color for "Create account"
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
} // git flow feature finish splash