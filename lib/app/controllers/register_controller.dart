import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pixel_insurance_v2/app/ui/theme/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/providers/api_provider.dart';
import '../ui/auth/widgets/progress_indicator.dart';
import '../ui/home/home_page.dart';

class RegisterController extends GetxController {
  final formKey = GlobalKey<FormState>();
  var isLoading = false.obs;

  final TextEditingController phoneTextEditingController =
      TextEditingController();
  final TextEditingController nidaNumber = TextEditingController();

  var phoneNumber = ''.obs;

  // REGISTER
  Future<void> registerUser(BuildContext context) async {
    // Get.to(() => const HomePage());

    if (formKey.currentState!.validate()) {
      // show progress dialog
      showProgressDialog(context);

      try {
        isLoading.value = true;

        final response = await http.post(Uri.parse("$baseUrl/register"), body: {
          "phone": phoneNumber.value,
          "nidaNumber": nidaNumber.text,
        });

        // ignore: unnecessary_null_comparison
        if (response.statusCode == 201 && (response.body != null)) {
          isLoading.value = false;

          final responseData = json.decode(response.body);
          SharedPreferences prefs = await SharedPreferences.getInstance();

          prefs.setString('token', responseData['token']);
          prefs.setInt("userId", responseData["user"]["id"]);
          // prefs.setString("name", responseData["user"]["name"]);
          // prefs.setString("phone", responseData["user"]["phone"]);
          // prefs.setString("email", responseData["user"]["email"]);

          // ignore: use_build_context_synchronously
          hideProgressDialog(context);
          Get.to(() => const HomePage());
        } else if (response.statusCode == 400) {
          isLoading.value = false;
          // print(response.body);
          Get.snackbar(
            'Error',
            'User already exists, check your phone number or contact support',
            leftBarIndicatorColor: fail,
          );
        } else {
          isLoading.value = false;
          print(response.body);
        }
      } catch (e) {
        isLoading.value = false;
        // ignore: use_build_context_synchronously
        hideProgressDialog(context);

        print(e);
        Get.snackbar(
          'Error',
          'Something went wrong, please try again',
          leftBarIndicatorColor: fail,
        );
      }
    } else {
      Get.snackbar(
        'Error',
        'Please fill in all fields',
        leftBarIndicatorColor: fail,
      );
    }
  }

  void showProgressDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // Prevent users from dismissing the dialog
      builder: (BuildContext context) {
        return const ProgressDialog();
      },
    );
  }

  void hideProgressDialog(BuildContext context) {
    Navigator.of(context).pop();
  }
}
