import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:pixel_insurance_v2/app/controllers/otp_controller.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});


  @override
  Widget build(BuildContext context) {
  var otpController = Get.put(OTPController());
  String otp = '';
  
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(children: [
          const SizedBox(height: 81),
          const Text(
            'OTP Verification',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 70,
          ),
          Image.asset('assets/images/otp_login.png'),
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: Text.rich(
              TextSpan(
                text: 'Enter the code from the SMS we sent to \n',
                children: [
                  TextSpan(
                    text: '+255 768****78',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          OTPTextField(
            length: 6,
            fieldStyle: FieldStyle.box,
            fieldWidth: 50,
            style: const TextStyle(
              fontSize: 17,
            ),
            width: MediaQuery.of(context).size.width,
            textFieldAlignment: MainAxisAlignment.spaceAround,
            onCompleted: (code) {
              otp = code;
              OTPController.instance.verifyOTP(otp);
            },
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            '02:32',
            style: TextStyle(
              color: Colors.lightBlue,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          const Text.rich(
            TextSpan(
              text: 'I did not receive any code? ',
              children: [
                TextSpan(
                  text: 'Resend',
                  style: TextStyle(
                    color: Colors.lightBlue,
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
