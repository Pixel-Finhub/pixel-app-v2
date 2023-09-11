import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixel_insurance_v2/app/ui/shared/custom_nav.dart';
import 'package:pixel_insurance_v2/app/ui/theme/app_colors.dart';
import 'package:pixel_insurance_v2/app/ui/utils/dimensions.dart';

class InsuranceCoverage {
  final String title;
  final String description;
  final String imagePath;

  InsuranceCoverage({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

List<InsuranceCoverage> coverages = [
  InsuranceCoverage(
    title: 'Fire',
    description: 'Coverage against fire-related damages.',
    imagePath: 'assets/images/fire.png',
  ),
  InsuranceCoverage(
    title: 'Road Accidents',
    description: 'Coverage for your vehicle and accidents.',
    imagePath: 'assets/images/fender-bender.png',
  ),
  InsuranceCoverage(
    title: 'Theft',
    description: 'Theft coverage for your vehicle and goods.',
    imagePath: 'assets/images/thief.png',
  ),
  InsuranceCoverage(
    title: 'Natural Disasters',
    description: 'Coverage for unexpected travel events.',
    imagePath: 'assets/images/disaster.png',
  ),
  // Add more coverages as needed
];

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
            Get.back();
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
            fontWeight: FontWeight.normal,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: fluidHeight(context, 25),
              width: fluidWidth(context, 100),
              padding: const EdgeInsets.all(20),
              child: Stack(
                children: [
                  Container(
                    width: fluidWidth(context, 100),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 2,
                          offset: const Offset(1, 2),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/burning-truck.jpg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.black
                            .withOpacity(0.7), // Background color for the title
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Basic Plan', // Replace with your package title
                        style: TextStyle(
                          color: Colors.white, // Text color
                          fontSize: fluidFontSize(
                              context, 25), // Adjust the font size as needed
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: fluidWidth(context, 5),
                      ),
                      child: Text(
                        'Basic plan',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: fluidFontSize(context, 20),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: fluidWidth(context, 5)),
                      child: Card(
                        elevation: .50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Basic package gives you the most essential coverage for your goods during transit. It covers the most common risks that you may encounter during transit. The package is already pre-configured so you just have to activate it. You can also customize the package to suit your needs.',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: fluidFontSize(context, 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: fluidWidth(context, 5),
                      ),
                      child: Text(
                        'Coverage limit',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: fluidFontSize(context, 20),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: fluidWidth(context, 5)),
                      child: Card(
                        elevation: .50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'This package will cover up to 50% of the actual price of the transported items. The coverage limit can be increased by purchasing additional coverage packages.',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: fluidFontSize(context, 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: fluidWidth(context, 5),
                      ),
                      child: Text(
                        'Initial deductible',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: fluidFontSize(context, 20),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: fluidWidth(context, 5)),
                      child: Card(
                        elevation: .50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'In order to activate this package you will have to pay an initial deductible of 10% of the actual price of the transported items. The deductible can be reduced by purchasing additional coverage packages.',
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: fluidFontSize(context, 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: fluidWidth(context, 5)),
                  child: Text(
                    'What does it cover',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: fluidFontSize(context, 20),
                        fontWeight: FontWeight.w500),
                  ),
                ),
                // 2x2 Grid of Insurance Coverage Cards
                GridView.builder(
                  padding: EdgeInsets.symmetric(
                    horizontal: fluidWidth(context, 5),
                    vertical: 20,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 columns
                    mainAxisSpacing: 10.0, // spacing between rows
                    crossAxisSpacing: 10.0, // spacing between columns
                  ),
                  shrinkWrap: true,
                  /*TODO: #3 #2 remove this or set it to false to prevent in grid scrolling effect */
                  itemCount:
                      coverages.length, // Use the length of your coverage list
                  itemBuilder: (BuildContext context, int index) {
                    final coverage =
                        coverages[index]; // Get the current coverage

                    return Card(
                      elevation: 1.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            coverage
                                .imagePath, // Use the image path from the coverage object
                            height: fluidHeight(context, 5),
                            width: fluidWidth(context, 45),
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            coverage
                                .title, // Use the title from the coverage object
                            style: TextStyle(
                              fontSize: fluidFontSize(context, 18),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 3.0),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              coverage
                                  .description, // Use the description from the coverage object
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),

                const SizedBox(
                  height: 20,
                ),

                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: fluidWidth(context, 5)),
                  child: Text(
                    'Claim Process',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: fluidFontSize(context, 20),
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: fluidWidth(context, 5),
                    vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildClaimProcessStep(
                        context,
                        'Take photos of the damaged goods',
                        Icons
                            .camera_alt_rounded, // Replace with the icon you want
                      ),
                      _buildClaimProcessStep(
                        context,
                        'Fill in the claim form',
                        Icons
                            .assignment_rounded, // Replace with the icon you want
                      ),
                      _buildClaimProcessStep(
                        context,
                        'Submit the claim form',
                        Icons.send_rounded, // Replace with the icon you want
                      ),
                      _buildClaimProcessStep(
                        context,
                        'Wait for approval',
                        Icons
                            .access_time_rounded, // Replace with the icon you want
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // You can add more content here as needed
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
     bottomNavigationBar: const CustomNav(
        currentIndex: 1,
      )
    );
  }
}

Widget _buildClaimProcessStep(
    BuildContext context, String text, IconData iconData) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 2,
          offset: const Offset(1, 2),
        ),
      ],
    ),
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.symmetric(vertical: 10),
    child: Row(
      children: [
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue, // Adjust the color as needed
          ),
          padding: const EdgeInsets.all(10),
          child: Icon(
            iconData,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: fluidFontSize(context, 15),
            ),
          ),
        ),
      ],
    ),
  );
}
