import 'package:get/get.dart';
import 'package:pixel_insurance_v2/app/controllers/util.dart';

class HomeController extends GetxController {
  final name = "".obs;

  @override
  void onInit() async {
    var name = await getFirstName();
    this.name.value = name!;

    super.onInit();
  }
}