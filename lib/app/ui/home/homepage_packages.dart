import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pixel_insurance_v2/app/ui/insurance/custom_plan_details.dart';
import 'package:pixel_insurance_v2/app/ui/insurance/premium_insurance_details.dart';
import 'package:pixel_insurance_v2/app/ui/shared/custom_nav.dart';
import 'package:pixel_insurance_v2/app/ui/utils/dimensions.dart';

import '../insurance/insurance_details.dart';

class CustomCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String text;
  final Function() onSharePressed;
  final Function() onExplorePressed;

  const CustomCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.text,
    required this.onSharePressed,
    required this.onExplorePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            imagePath,
            height: 160,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.grey[800],
                  ),
                ),
                Container(height: 10),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[700],
                  ),
                ),
                Row(
                  children: <Widget>[
                    const Spacer(),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.transparent,
                      ),
                      child: const Text(
                        "SHARE",
                        style: TextStyle(color: Colors.blue), // Adjust color
                      ),
                      onPressed: onSharePressed,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.transparent,
                      ),
                      child: const Text(
                        "EXPLORE",
                        style: TextStyle(color: Colors.blue), // Adjust color
                      ),
                      onPressed: onExplorePressed,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(height: 5),
        ],
      ),
    );
  }
}

class HomePagePackages extends StatefulWidget {
  const HomePagePackages({Key? key}) : super(key: key);
  @override
  HomePackageState createState() => HomePackageState();
}

class HomePackageState extends State<HomePagePackages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        toolbarHeight: 70.0,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: const Center(
                child: Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.black,
                  size: 25.0,
                ),
              ),
            ),
            Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: const Center(
                child: Icon(
                  Icons.person_outline_rounded,
                  color: Colors.black,
                  size: 25.0,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Row(children: [
          Expanded(
            child: Column(
              children: [
                /* Banner card */
                CarouselSlider(
                  items: [
                    _buildBanner(
                      context: context,
                      imagePath: "assets/images/burning-truck.jpg",
                      title: "Get Liability Coverage in transit.",
                      description:
                          "We Provide On-demand Insurance Service That Is Tailored According to Your Needs",
                    )
                  ],
                  options: CarouselOptions(
                    height: fluidHeight(context, 30.0),
                    aspectRatio: 16 / 9,
                    viewportFraction: 1.0,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 20),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 8000),
                    autoPlayCurve: Curves.fastOutSlowIn,
                  ),
                ),

                /* Insurance packages */
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: fluidWidth(context, 100) - 20,
                            ),
                            /* Insurance package card */
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 20, 0, 10),
                              child: Text(
                                "Our Packages",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: fluidFontSize(context, 20),
                                ),
                              ),
                            ),

                            /* Insurance package card */
                            Row(children: [
                              Expanded(
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CustomCard(
                                        imagePath: 'assets/images/basic.jpg',
                                        title: "Basic Coverage",
                                        text:
                                            "Our Basic Insurance Plan provides essential coverage to protect you in case of unexpected events. It's an ideal choice for those looking for budget-friendly insurance.",
                                        onSharePressed: () {
                                          // Handle share button press
                                        },
                                        onExplorePressed: () {
                                          // Handle explore button press
                                        },
                                      ),
                                      CustomCard(
                                        imagePath: 'assets/images/premium.jpg',
                                        title: "Premium Coverage",
                                        text:
                                            "Our Premium Insurance Plan offers comprehensive coverage with additional benefits. Enjoy peace of mind knowing you have extra protection for your valuable assets.",
                                        onSharePressed: () {
                                          // Handle share button press
                                        },
                                        onExplorePressed: () {
                                          // Handle explore button press
                                        },
                                      ),
                                      CustomCard(
                                        imagePath: 'assets/images/custom.jpg',
                                        title: "Custom Coverage",
                                        text:
                                            "Create a tailored insurance plan that suits your unique needs. With our Custom Insurance Plan, you have the flexibility to choose the coverage that matters most to you.",
                                        onSharePressed: () {
                                          // Handle share button press
                                        },
                                        onExplorePressed: () {
                                          // Handle explore button press
                                        },
                                      ),

                                      /* unit package card */
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const InsuranceDetailsPage(),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          margin:
                                              const EdgeInsetsDirectional.only(
                                                  top: 10),
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          height: fluidHeight(context, 10),
                                          width: fluidWidth(context, 95),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Basic Plan",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: fluidFontSize(
                                                        context, 15),
                                                  ),
                                                ),
                                                const SizedBox(height: 5),
                                                Text(
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae.",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: fluidFontSize(
                                                        context, 12),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      /* unit package card */
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const InsuranceDetailsPagePremium(),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          margin:
                                              const EdgeInsetsDirectional.only(
                                                  top: 20),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            border: Border.all(
                                              color: Colors.blue,
                                              width: 1.5,
                                            ),
                                          ),
                                          height: fluidHeight(context, 10),
                                          width: fluidWidth(context, 95),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Premium Plan",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: fluidFontSize(
                                                        context, 15),
                                                  ),
                                                ),
                                                const SizedBox(height: 5),
                                                Text(
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae.",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: fluidFontSize(
                                                        context, 12),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      /* unit package card */
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const InsuranceDetailsPageCustom(),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          margin:
                                              const EdgeInsetsDirectional.only(
                                                  top: 20),
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          height: fluidHeight(context, 10),
                                          width: fluidWidth(context, 95),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Custom Plan",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: fluidFontSize(
                                                        context, 15),
                                                  ),
                                                ),
                                                const SizedBox(height: 5),
                                                Text(
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae.",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: fluidFontSize(
                                                        context, 12),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ]),
                              ),
                            ])
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar: const CustomNav(currentIndex: 1),
    );
  }

/* Banner card builder*/
  Widget _buildBanner({
    required BuildContext context,
    required String imagePath,
    required String title,
    required String description,
  }) {
    return Container(
      /* insurance packages banner card */
      height: fluidHeight(context, 25.0),
      width: fluidWidth(context, 100) - 20,

      // Use a Stack to overlay image and text
      child: Stack(
        children: [
          // Background image in the card
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),

          /* Card description Content */
          Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        115, 0, 0, 0), // Set the background color to black
                    borderRadius:
                        BorderRadius.circular(10.0), // Add border radius
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: fluidFontSize(context, 25),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          description,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            fontSize: fluidFontSize(context, 15),
                          ),
                        ),
                      ],
                    ),
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
