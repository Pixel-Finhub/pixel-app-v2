import 'package:get/get.dart';
import 'package:pixel_insurance_v2/app/data/repositories/auth_repository.dart';
import 'package:pixel_insurance_v2/app/ui/home/home_page.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.find();

  void verifyOTP(String otp) async {
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(() => const HomePage()) : Get.back();
  }
}
