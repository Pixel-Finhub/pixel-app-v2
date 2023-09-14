import 'package:get/get.dart';
import 'package:pixel_insurance_v2/app/controllers/util.dart';

class ProfileController extends GetxController {
  final firstName = "".obs;
  final lastName = "".obs;
  final phone = "".obs;
  final email = "".obs;

  @override
  void onInit() async {
    // setting name, phone and email
    firstName.value = (await getFirstName())!;
    lastName.value = (await getLastName())!;
    phone.value = (await getPhone())!;
    email.value = (await getEmail())!;

    print('ON_INIT: $firstName');
    super.onInit();
  }
}
