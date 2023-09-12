import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pixel_insurance_v2/app/data/repositories/auth_repository.dart';
import 'package:pixel_insurance_v2/app/ui/auth/payment/basic_package.dart';
import 'package:pixel_insurance_v2/app/ui/auth/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pixel_insurance_v2/app/ui/insurance/insurance_details.dart';
import 'package:pixel_insurance_v2/firebase_options.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // initialize firebase
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) => Get.put(AuthenticationRepository()));

  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: BasicPackagePaymentPage(),
    );
  }
}
