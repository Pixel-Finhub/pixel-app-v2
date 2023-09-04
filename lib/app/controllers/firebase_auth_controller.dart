import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pixel_insurance_v2/app/data/repositories/auth_repository.dart';

class FirebaseAuthController extends GetxController {
  static FirebaseAuthController get instance => Get.find();

  // text field controllers to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  var phoneNumber = ''.obs;

  // call this function to register user
  void registerUser(String email, String password) {
    AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password);
  }

  void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneAuthentication(phoneNumber.value);
  }
}
