import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pixel_insurance_v2/app/ui/auth/payment/bank_payment.dart';
import 'package:pixel_insurance_v2/app/ui/auth/payment/mobile_payment.dart';
import 'package:pixel_insurance_v2/app/ui/utils/dimensions.dart';

class CustomPackagePaymentPage extends StatefulWidget {
  const CustomPackagePaymentPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CustomPackagePaymentPageState createState() =>
      _CustomPackagePaymentPageState();
}

class _CustomPackagePaymentPageState extends State<CustomPackagePaymentPage> {
  int? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 70,
          centerTitle: true,
          title: const Text(
            'Select the Payment method',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              height: 336,
              width: 327,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue, // You can change the color as needed
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Custom Package',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '1000,000 Tzs',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  width: 344,
                  height: 64,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedOption =
                                1; // Update to the desired value when Text is clicked
                          });
                        },
                        child: Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: selectedOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value as int?;
                                });
                              },
                            ),
                            const Text('Mobile Payment'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 140,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedOption =
                                1; // Update to the desired value when Icon is clicked
                          });
                        },
                        child: const Icon(Icons.phone),
                      ),
                    ],
                  ),
                ),
                //assets/images/bank_icon.jpeg
                Container(
                  height: 64,
                  width: 344,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedOption =
                                2; // Update to the desired value when Text is clicked
                          });
                        },
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedOption =
                                      2; // Update to the desired value when Text is clicked
                                });
                              },
                              child: Row(
                                children: [
                                  Radio(
                                    value: 2,
                                    groupValue: selectedOption,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedOption = value as int?;
                                      });
                                    },
                                  ),
                                  const Text('Bank'),
                                  const SizedBox(
                                    width: 70,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 140,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedOption =
                                      2; // Update to the desired value when Icon is clicked
                                });
                              },
                              child: SizedBox(
                                width: fluidWidth(context, 6),
                                child:
                                    Image.asset('assets/images/bank_icon.jpeg'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 40,
            width: 271,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ElevatedButton(
              onPressed: () {
                if (selectedOption == 1) {
                  Get.to(() => const MobilePayment());
                } else if (selectedOption == 2) {
                  // Navigate to the Bank payment page.
                  // Replace 'YourBankPaymentPage' with the actual page.
                  Get.to(() => BankPayment());
                } else {
                  Get.snackbar(
                    'Error',
                    'Please select a payment method (Mobile or Bank).',
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.red,
                    colorText: Colors.white,
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(0), // Set padding to zero
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text('Complete Payment'),
            ),
          )
        ]));
  }
}

