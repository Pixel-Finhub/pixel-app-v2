import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pixel_insurance_v2/app/ui/insurance/my_insurance.dart';

class SucceessPayment extends StatelessWidget {
  const SucceessPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              height: 100,
              width: 100,
              child: Image.asset('assets/images/success_image.png')),
          const Text(
            'Success !',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
            child: const Text(
              'Payment Accepted !!',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.black26),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 90),
            height: 40,
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => const MyInsurance());
              },
              child: const Text('My Insurance'),
            ),
          )
        ],
      ),
    );
  }
}
