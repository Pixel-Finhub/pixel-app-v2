import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixel_insurance_v2/app/ui/shared/custom_nav.dart';
import 'package:pixel_insurance_v2/app/ui/theme/app_colors.dart';

class InsuranceDetailsPage extends StatelessWidget {
  const InsuranceDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const SizedBox(
            height: 60,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10), // Added padding
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back,
                ),
                Text(
                  'Insurance Details',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.notification_add)
              ],
            ),
          ),
          const SizedBox(height: 45),
          Image.asset('assets/images/insurance_details.png'),
          const SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(92, 201, 252,
                      0.05), // Set your desired background color here
                  borderRadius: BorderRadius.circular(
                      10), // Set your desired border radius here
                ),
                padding: const EdgeInsets.all(
                    10), // Added padding for the entire container
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: Text(
                        'Basic plan',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'The name says it all, Protection against common risks during transit.',
                        style: TextStyle(
                            fontWeight: FontWeight.w200, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                child: Text(
                  'Insurance coverage risk',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
              ),
              Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Icon(
                        Icons.check_circle,
                        color: primary,
                        size: 17,
                      ),
                      // Replace with your desired icon
                      SizedBox(width: 10), // Adjust the spacing as needed
                      Text(
                        'Protection against common risks during transit.',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w200),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.check_circle,
                        color: primary,
                        size: 17,
                      ),
                      // Replace with your desired icon
                      SizedBox(
                        width: 10.h,
                      ), // Adjust the spacing as needed
                      const Text(
                        'Protection against common risks during transit.',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.check_circle,
                        color: primary,
                        size: 17,
                      ),
                      // Replace with your desired icon
                      SizedBox(
                        width: 10.h,
                      ), // Adjust the spacing as needed
                      const Text(
                        'Protection against common risks during transit.',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Insurance coverage limit',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '50% of TRANSPORTED items',
                    style: TextStyle(fontWeight: FontWeight.w100),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Initial deductive amount',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '80% of package PRICE',
                    style: TextStyle(fontWeight: FontWeight.w100),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                  child: Text(
                    'Insurance claim process',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  'The name say it all, The right size sliglty  snugs the body leha',
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
                Text(
                  'The name says it all, the right size slightly snugs',
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 35,
            width: 230,
            child: FloatingActionButton(
              onPressed: () {},
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const Text('Buy'),
            ),
          )
        ]),
      ),
      bottomNavigationBar: const CustomNav(
        currentIndex: 2,
      ),
    );
  }
}
