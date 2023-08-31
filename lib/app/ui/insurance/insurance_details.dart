import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixel_insurance_v2/app/ui/shared/custom_nav.dart';
import 'package:pixel_insurance_v2/app/ui/theme/app_colors.dart';
import 'package:pixel_insurance_v2/app/ui/utils/dimensions.dart';

class InsuranceDetailsPage extends StatelessWidget {
  const InsuranceDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 70.0,
        elevation: 0, // No shadow
        leading: IconButton(
          onPressed: () {
            // Handle back button press
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Insurance Description',
          style: TextStyle(
            fontSize: fluidFontSize(context, 24),
            fontWeight: FontWeight.w300,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // Handle notification icon tap
            },
            icon: const Icon(
              Icons.notification_add,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            height: fluidHeight(context, 25),
            width: fluidWidth(context, 100),
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(10), // Adjust the radius as needed
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1), // Shadow color
                    blurRadius: 2, // Spread radius
                    offset: const Offset(1, 2), // Shadow offset
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(10), // Same radius as the container
                child: Image.asset(
                  'assets/images/burning-truck.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: Text(
                        'Basic plan',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: fluidFontSize(context, 20),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'The name says it all, Protection against common risks during transit.',
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: fluidFontSize(context, 15),
                        ),
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
                    children: [
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
