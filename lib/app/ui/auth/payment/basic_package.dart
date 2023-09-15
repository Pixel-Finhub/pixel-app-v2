import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pixel_insurance_v2/app/ui/auth/payment/bank_payment.dart';
import 'package:pixel_insurance_v2/app/ui/auth/payment/mobile_payment.dart';
import 'package:pixel_insurance_v2/app/ui/theme/app_colors.dart';
import 'package:pixel_insurance_v2/app/ui/utils/dimensions.dart';

class BasicPackagePaymentPage extends StatefulWidget {
  const BasicPackagePaymentPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BasicPackagePaymentPageState createState() =>
      _BasicPackagePaymentPageState();
}

class _BasicPackagePaymentPageState extends State<BasicPackagePaymentPage> {
  int? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          title: Text(
            'Payment Method',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: primaryDark,
              fontSize: fluidFontSize(context, 18),
            ),
          ),
          centerTitle: true,
          toolbarHeight: 70.0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_active,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: fluidWidth(context, 5),
                  vertical: fluidWidth(context, 5)),
              child: Container(
                width: fluidWidth(context, 100), // Adjust the width as needed
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [
                      primaryDark,
                      primaryLight,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [
                      0.0,
                      1.0
                    ], // Define stops for multiple colors if needed
                    tileMode: TileMode.clamp, // Define the tiling mode
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(
                      20.0), // Adjust the padding as needed
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Basic Package',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: fluidFontSize(context,
                              20), // Increase font size for package name
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        '400,000 Tzs',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: fluidFontSize(
                              context, 35), // Increase font size for price
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(height: 30), // Increase spacing
                      const Divider(
                        color: Colors.white,
                        thickness: 1, // Add a divider for separation
                      ),
                      const SizedBox(height: 20), // Increase spacing
                      Text(
                        'Description:',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: fluidFontSize(context,
                              16), // Adjust font size for description label
                        ),
                      ),
                      const SizedBox(height: 5), // Adjust spacing
                      Text(
                        "Pixel Insurance's Basic Package is a package that covers the following: \n\n1. Theft \n2. Fire \n3. Accidental Damage \n4. Water Damage \n5. Screen Damage \n6. Liquid Damage",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: fluidFontSize(
                              context, 14), // Adjust font size for description
                        ),
                      ),
                      SizedBox(
                        height: fluidHeight(context, 4),
                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Start Date: 2023-09-01',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: fluidFontSize(context, 16),
                              fontWeight: FontWeight
                                  .w200, // Adjust font size for date labels
                            ),
                          ),
                          Text(
                            'Expire Date: 2024-09-01',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: fluidFontSize(context, 16),
                              fontWeight: FontWeight
                                  .w200, // Adjust font size for date labels
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Payment Options
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
                                  child: Image.asset(
                                      'assets/images/bank_icon.jpeg'),
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
            
            // Complete Payment Button
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
          ]),
        ));
  }
}
