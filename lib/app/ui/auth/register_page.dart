import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:pixel_insurance_v2/app/controllers/firebase_auth_controller.dart';
import 'package:pixel_insurance_v2/app/ui/auth/login_page.dart';
import 'package:pixel_insurance_v2/app/ui/auth/otp.dart';
import 'package:pixel_insurance_v2/app/ui/utils/dimensions.dart';
import 'package:pixel_insurance_v2/app/ui/widgets/button.dart';

import '../theme/app_colors.dart';
import '../theme/app_constants.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FirebaseAuthController());
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    var nidaTextEditController = TextEditingController();

    PhoneNumber number = PhoneNumber(isoCode: 'TZ');

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
                      const SizedBox(
                        height: 70.0,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/images/register.png',
                          // height: fluidWidth(context, 80),
                          // width: fluidWidth(context, 80),
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
                // height: fluidHeight(context, 4),
                height: 10.0.h,
              ),
              CustomButton(
                function: () {
                  Get.to(() => OtpScreen());
                },
                text: "Register",
              ),
              TextButton(
                onPressed: () {
                  Get.to(() => const LoginPage());
                },
                child: RichText(
                  text: TextSpan(
                    text: "Already a user? ",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      // fontSize: fluidFontSize(context, 16),
                    ),
                    children: [
                      TextSpan(
                        text: "Login",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          // fontSize: fluidFontSize(context, 16),
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
