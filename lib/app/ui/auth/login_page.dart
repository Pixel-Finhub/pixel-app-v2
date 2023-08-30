import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:pixel_insurance_v2/app/ui/auth/register_page.dart';
import 'package:pixel_insurance_v2/app/ui/home/homepage_packages.dart';
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
      body: SingleChildScrollView(
        // minimum: const EdgeInsets.all(20.0),
        //SafeArea removed to enable Scroll up while keyboard pop up
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
                        selectorTextStyle: const TextStyle(color: Colors.black),
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
                              icon: Icon(_isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  _isPasswordVisible = !_isPasswordVisible;
                                });
                              }),
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
              function: () {
                Get.to(() => const HomePagePackages());
              },
              text: "Login",
            ),
            // SizedBox(
            //   height: 20.0.h,
            // ),
            TextButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    height: 200.h,
                    padding: EdgeInsets.only(
                      top: 20.0.r,
                      right: 20.0.r,
                      left: 20.0.r,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0.r),
                        topRight: Radius.circular(25.0.r),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "Enter your email to reset password.",
                          style: TextStyle(
                            color: primaryDark,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        separator_10,
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.0.w,
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "Email",
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(defaultRadius),
                              ),
                            ),
                            // onChanged: (value) => controller.email(value),
                          ),
                        ),
                        SizedBox(
                          height: 10.0.h,
                        ),
                        CustomButton(
                          function: () {},
                          text: "Submit",
                        )
                      ],
                    ),
                  ),
                );
              },
              child: const Text("Forgot Password?"),
            ),
            // SizedBox(
            //   height: 10.0.h,
            // ),
            TextButton(
              onPressed: () {
                Get.to(() => const RegisterPage());
              },
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
    );
  }
}
