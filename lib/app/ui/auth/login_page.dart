import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:pixel_insurance_v2/app/ui/auth/otp.dart';
import 'package:pixel_insurance_v2/app/ui/auth/register_page.dart';
import 'package:pixel_insurance_v2/app/ui/theme/app_colors.dart';
import 'package:pixel_insurance_v2/app/ui/theme/app_constants.dart';
import 'package:pixel_insurance_v2/app/ui/utils/dimensions.dart';
import 'package:pixel_insurance_v2/app/ui/widgets/button.dart';

class LoginPage extends StatelessWidget {
  late final PhoneNumber number = PhoneNumber(isoCode: 'TZ');

  late bool isPasswordVisible = false;

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: GetBuilder<AuthController>(
        init: AuthController(),
        builder: (controller) => _loginUI(context, controller),
      ),
    );
  }

  Widget _loginUI(BuildContext context, AuthController controller) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: fluidWidth(context, 5),
            ),
            child: Form(
              key: controller.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.0.h,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/login_person.png',
                      height: fluidWidth(context, 80),
                      width: fluidWidth(context, 80),
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Phone Input
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
                          // print(number.phoneNumber);
                          controller.phoneNo(number.phoneNumber);
                        },
                        onInputValidated: (bool value) {
                          // print(value);
                          controller.phoneNo(number.phoneNumber);
                        },
                        selectorConfig: const SelectorConfig(
                          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                        ),
                        ignoreBlank: false,
                        autoFocus: false,
                        autoValidateMode: AutovalidateMode.disabled,
                        selectorTextStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w200),
                        initialValue: number,
                        textFieldController:
                            controller.phoneTextEditingController,
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
                      padding: EdgeInsets.symmetric(
                        horizontal: fluidWidth(context, 5),
                        vertical: 3.0,
                      ),
                      child: TextFormField(
                        controller: controller.passwordTextEditingController,
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
                              isPasswordVisible = !isPasswordVisible;
                              // Force the widget to rebuild with the new visibility state
                              Get.forceAppUpdate();
                            },
                          ),
                        ),
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
              horizontal: fluidWidth(context, 5),
            ),
            child: CustomButton(
              function: () {
                controller.userLogin(context);
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
                          fontWeight: FontWeight.w400,
                          fontSize: fluidFontSize(context, 18),
                        ),
                      ),
                      SizedBox(
                        height: 10.0.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.0.w,
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
                        ),
                      ),
                      SizedBox(
                        height: 10.0.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.0.w,
                        ),
                        child: CustomButton(
                          function: () {
                            // TODO: Implement password reset submission
                            controller.resetPassword(
                                controller.emailTextEditingController.text);
                          },
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
          TextButton(
            onPressed: () {
              Get.to(() => RegisterPage());
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
    );
  }
}
