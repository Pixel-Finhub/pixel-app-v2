import 'package:flutter/material.dart';
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
        toolbarHeight: 70,
        centerTitle: true,
        title: const Text(
          'Select the Payment method',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Center(
            child: Container(
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
                    'Basic Package',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '400,000 Tzs',
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
                  margin: EdgeInsets.symmetric(vertical: 5),
                  width: 344,
                  height: 64,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8)),
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
                      const SizedBox(
                        width: 140,
                      ),
                      const Icon(Icons.phone)
                    ],
                  ),
                ),
                Container(
                  height: 64,
                  width: 344,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Radio(
                        value: 2,
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value;
                          });
                        },
                      ),
                      const Text('Bank'),
                      const SizedBox(
                        width: 210,
                      ),
                      SizedBox(
                        width: fluidWidth(context, 6),
                        child: Image.asset('assets/images/bank_icon.jpeg'),
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
                      // Add your button's onPressed logic here
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: BasicPackagePaymentPage(),
  ));
}
