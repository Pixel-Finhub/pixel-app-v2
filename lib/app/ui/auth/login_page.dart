import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:pixel_insurance_v2/app/ui/auth/register_page.dart';
import 'package:pixel_insurance_v2/app/ui/home/homepage_packages.dart';
import 'package:pixel_insurance_v2/app/ui/theme/app_colors.dart';
import 'package:pixel_insurance_v2/app/ui/theme/app_constants.dart';
import 'package:pixel_insurance_v2/app/ui/utils/dimensions.dart';
import 'package:pixel_insurance_v2/app/ui/widgets/button.dart';

import '../home/home_page.dart';

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
    bool isPasswordVisible = false;

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
                  // horizontal: fluidWidth(context, 5),
                  horizontal: 5.0.w,
                ),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        // height: fluidHeight(context, 5),
                        height: 5.0.h,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/images/login_person.png',
                          // height: fluidWidth(context, 80),
                          // width: fluidWidth(context, 80),
                          fit: BoxFit.cover,
                        ),
                      ),

                      /* Phone Input */
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
                              //controller.phoneNumber(number.phoneNumber);
                            },
                            onInputValidated: (bool value) {
                              // print(value);
                              // controller.phoneNumber(number.phoneNumber);
                            },
                            selectorConfig: const SelectorConfig(
                              selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                            ),
                            ignoreBlank: false,
                            autoFocus: false,
                            autoValidateMode: AutovalidateMode.disabled,
                            selectorTextStyle: const TextStyle(
                                color: Colors.black,
                                // fontSize: fluidFontSize(context, 15),
                                fontSize: 15,
                                fontWeight: FontWeight.w200),
                            initialValue: number,
                            textFieldController: phoneNumberTextEditController,
                            formatInput: false,
                            keyboardType: TextInputType.phone,
                            inputBorder: InputBorder.none,
                            onSaved: (PhoneNumber number) {
                              // print('On Saved: $number');
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
                            horizontal: 30.0,
                            vertical: 3.0,
                          ),
                          child: TextFormField(
                            controller: passwordTextEditController,
                            keyboardType: TextInputType.text,
                            obscureText: !isPasswordVisible,
                            decoration: InputDecoration(
                              hintText: "Password",
                              border: InputBorder.none,
                              suffixIcon: IconButton(
                                  icon: Icon(isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      isPasswordVisible = !isPasswordVisible;
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
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    // horizontal: fluidWidth(context, 5),
                    horizontal: 5.0.w),
                child: CustomButton(
                  function: () {
                    Get.to(() => const HomePagePackages());
                  },
                  text: "Login",
                ),
              ),

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
                          Text(
                            "Enter your email to reset password.",
                            style: TextStyle(
                                color: primaryDark,
                                fontWeight: FontWeight.w500,
                                // fontSize: fluidFontSize(context, 18),
                                fontSize: 18.0.h),
                          ),
                          separator_10,
                          Padding(
                            padding: EdgeInsets.symmetric(
                              // horizontal: fluidWidth(context, 5),
                              horizontal: 5.0.h,
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
                          Padding(
                            padding: EdgeInsets.symmetric(
                              // horizontal: fluidWidth(context, 5),
                              horizontal: 5.0.w,
                            ),
                            child: CustomButton(
                              function: () {},
                              text: "Submit",
                            ),
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
      ),
    );
  }
}
