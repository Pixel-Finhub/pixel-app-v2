import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pixel_insurance_v2/app/ui/shared/custom_nav.dart';
import 'package:pixel_insurance_v2/app/ui/utils/dimensions.dart';
import 'package:pixel_insurance_v2/app/ui/theme/app_colors.dart';
import 'package:timeline_tile/timeline_tile.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class _VerticalTimelineCard extends StatelessWidget {
  _VerticalTimelineCard({
    Key? key,
    required this.stepTitle,
    required this.stepDescription,
  }) : super(key: key);

  final String stepTitle;
  final String stepDescription;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(
          color: primary,
          width: 1,
        ),
      ),
      elevation: 0,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(
              fluidWidth(context, 4), // Adjust the left padding
              fluidHeight(context, 1), // Adjust the top padding
              fluidWidth(context, 4), // Adjust the right padding
              fluidHeight(context, 1), // No bottom padding
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  stepTitle,
                  style: TextStyle(
                    fontSize:
                        fluidFontSize(context, 18), // Adjust the font size
                    color: Colors.grey[800],
                  ),
                ),
                Container(
                    height: fluidHeight(context,
                        2)), // Adjust the space between title and description
                Text(
                  stepDescription,
                  style: TextStyle(
                    fontSize:
                        fluidFontSize(context, 15), // Adjust the font size
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

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

class InsuranceDetailsPagePremium extends StatelessWidget {
  const InsuranceDetailsPagePremium({Key? key}) : super(key: key);

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
                          'assets/images/basic.jpg',
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
                          color: Colors.black.withOpacity(
                              0.7), // Background color for the title
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
                            fontWeight: FontWeight.w300,
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
                    padding: EdgeInsets.symmetric(
                        horizontal: fluidWidth(context, 5)),
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
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // 2 columns
                      mainAxisSpacing: 10.0, // spacing between rows
                      crossAxisSpacing: 10.0, // spacing between columns
                    ),
                    shrinkWrap: true,
                    /*TODO: #3 #2 remove this or set it to false to prevent in grid scrolling effect */
                    itemCount: coverages
                        .length, // Use the length of your coverage list
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
                    padding: EdgeInsets.all(
                        fluidWidth(context, 5)),
                    child: Text(
                      'Claim Process',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: fluidFontSize(context, 20),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  //  timelines tiles
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: fluidWidth(context, 5)),
                    child: Column(children: [
                      _buildVerticalTimelineTile(
                        context,
                        'Step 1: Take photos',
                        'Take detailed photos of the damaged goods from different angles, ensuring clarity and visibility of the damage. Make sure to capture any serial numbers or labels if applicable.',
                        Icons.camera_alt,
                      ),
                      SizedBox(
                        height: fluidHeight(
                            context, 2), // Adjust the space between cards
                      ),
                      _buildVerticalTimelineTile(
                        context,
                        'Step 2: Fill in form',
                        'Fill in the claim form with accurate information. Include all relevant details about the shipment, damage, and any supporting documents such as invoices or receipts.',
                        Icons.assignment,
                      ),
                      SizedBox(
                        height: fluidHeight(
                            context, 2), // Adjust the space between cards
                      ),
                      _buildVerticalTimelineTile(
                        context,
                        'Step 3: Submit the form',
                        'Submit the completed claim form to the insurance provider through their designated channel. Double-check that all required documents are attached for a smooth review process.',
                        Icons.send,
                      ),
                      SizedBox(
                        height: fluidHeight(
                            context, 2), // Adjust the space between cards
                      ),
                      _buildVerticalTimelineTile(
                        context,
                        'Step 4: Wait for approval',
                        'After submitting the claim, be patient and await approval. The insurance provider will assess the submitted information and documents before issuing a decision.',
                        Icons.access_time,
                      ),
                    ]),
                  ),

                  // end timeline contnet
                ],
              ),
              buildBuyButton(context, 'Continue to Payment', Icons.payment),
            ],
          ),
        ),
        bottomNavigationBar: const CustomNav(
          currentIndex: 1,
        ));
  }
}

Widget buildBuyButton(BuildContext context, String text, IconData iconData) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 40.0),
    child: Center(
      child: SizedBox(
        height: 50,
        width: 230,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          child: Text(
            'Continue to Payment',
            style: TextStyle(
                fontSize: fluidFontSize(context, 14),
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    ),
  );
}

Widget _buildVerticalTimelineTile(
  BuildContext context,
  String stepTitle,
  String stepDescription,
  IconData iconData,
) {
  return TimelineTile(
    alignment: TimelineAlign.manual,
    lineXY: 0.1, // Adjust this value to move the line position
    isFirst: true,
    isLast: true,
    indicatorStyle: const IndicatorStyle(
      width: 20,
      color: Colors.blue,
    ),
    startChild: SizedBox.fromSize(
      size: const Size(50, 50), // Adjust the size of the timeline line
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: primary,
        ),
        child: Center(
          child: Icon(
            iconData,
            color: Colors.white,
          ),
        ),
      ),
    ),
    endChild: _VerticalTimelineCard(
      stepTitle: stepTitle,
      stepDescription: stepDescription,
    ),
  );
}
