import 'package:flutter/material.dart';
import 'package:pixel_insurance_v2/app/ui/home/homepage_packages.dart';
import 'package:pixel_insurance_v2/app/ui/shared/custom_nav.dart';
import '../utils/dimensions.dart';
import 'package:pixel_insurance_v2/app/ui/theme/app_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: fluidHeight(context, 7),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person_outline_rounded,
                  color: Colors.black, size: 30),
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Welcome Mr. Msangi",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w300,
              fontSize: fluidFontSize(context, 20),
            ),
          ),
          centerTitle: true,
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
                        imagePath: "assets/images/banner1.jpg",
                        title: "Get Liability Coverage in transit.",
                        description:
                            "We Provide On-demand Insurance Service That Is Tailored According to Your Needs",
                      ),
                      _buildBanner(
                        context: context,
                        imagePath: "assets/images/banner2.jpg",
                        title: "One of a kind on demand service",
                        description:
                            "We Provide On-demand Insurance Service That Is Tailored According to Your Needs",
                      ),
                      _buildBanner(
                        context: context,
                        imagePath: "assets/images/banner3.jpg",
                        title: "Insurance for destructive scenarios",
                        description:
                            "We Provide On-demand Insurance Service That Is Tailored According to Your Needs",
                      ),
                    ],
                    options: CarouselOptions(
                      height: fluidHeight(context, 30.0),
                      aspectRatio: 16 / 9,
                      viewportFraction: 1.0,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 10),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 8000),
                      autoPlayCurve: Curves.fastOutSlowIn,
                    ),
                  ),

                  /* Acquiring steps */
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: fluidWidth(context, .5),
                      vertical: fluidHeight(context, .5),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /* section title */
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 20, 0, 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Get Insurance in few steps",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: fluidFontSize(context, 20),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(39, 16, 87, 194),
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      child: IconButton(
                                        onPressed: () {
                                          Get.to(
                                              () => const HomePagePackages());
                                        },
                                        icon: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.black,
                                          size: fluidFontSize(context, 15),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Insurance steps section
                              Column(
                                children: [
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        for (int step = 1; step <= 3; step++)
                                          _buildStepContainer(context, step),
                                        const SizedBox(width: 15),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              /* Customer Section*/
                              Row(children: [
                                Expanded(
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        /* unit package card */

                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 20, 0, 10),
                                          child: Row(
                                            children: [
                                              const SizedBox(height: 5),
                                              Text(
                                                "What our Happy Costumers say...",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w200,
                                                  fontSize: fluidFontSize(
                                                    context,
                                                    20,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  // First review
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey.shade200,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    width:
                                                        fluidWidth(context, 80),
                                                    child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10.0),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Center(
                                                              child:
                                                                  //Costumer Image
                                                                  Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: const Color
                                                                            .fromARGB(
                                                                            62,
                                                                            238,
                                                                            238,
                                                                            238),
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                      ),
                                                                      height: fluidHeight(
                                                                          context,
                                                                          10),
                                                                      child:
                                                                          Row(
                                                                        children: [
                                                                          Icon(
                                                                            Icons.person_outline_rounded,
                                                                            color:
                                                                                primary,
                                                                            size:
                                                                                fluidFontSize(context, 50),
                                                                          ),
                                                                          const SizedBox(
                                                                              width: 15),
                                                                          Text(
                                                                            "Mr Rubea Junior",
                                                                            style:
                                                                                TextStyle(
                                                                              color: Colors.black,
                                                                              fontWeight: FontWeight.w200,
                                                                              fontSize: fluidFontSize(context, 16),
                                                                            ),
                                                                          )
                                                                        ],
                                                                      )),
                                                            ),
                                                            Text(
                                                              "I've been using Pixel Insurance for my business for the past few years and I've been very happy with their service. They offer a wide range of coverage options and their rates are very competitive. I would definitely recommend Pixel Insurance to anyone looking for cargo insurance.",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w200,
                                                                fontSize:
                                                                    fluidFontSize(
                                                                        context,
                                                                        16),
                                                              ),
                                                              softWrap: true,
                                                            )
                                                          ],
                                                        )),
                                                  ),
                                                  const SizedBox(width: 15),
                                                  //Second review
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey.shade200,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    width:
                                                        fluidWidth(context, 80),
                                                    child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10.0),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Center(
                                                              child:
                                                                  //Costumer Image
                                                                  Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: const Color
                                                                            .fromARGB(
                                                                            62,
                                                                            238,
                                                                            238,
                                                                            238),
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                      ),
                                                                      height: fluidHeight(
                                                                          context,
                                                                          10),
                                                                      child:
                                                                          Row(
                                                                        children: [
                                                                          Icon(
                                                                            Icons.person_outline_rounded,
                                                                            color:
                                                                                primary,
                                                                            size:
                                                                                fluidFontSize(context, 50),
                                                                          ),
                                                                          const SizedBox(
                                                                              width: 15),
                                                                          Text(
                                                                            "Mr Rajabu Omari",
                                                                            style:
                                                                                TextStyle(
                                                                              color: Colors.black,
                                                                              fontWeight: FontWeight.w200,
                                                                              fontSize: fluidFontSize(context, 16),
                                                                            ),
                                                                          )
                                                                        ],
                                                                      )),
                                                            ),
                                                            Text(
                                                              "I recently had a claim with Pixel Insurance for a shipment of goods that was damaged in transit. The claim process was very smooth and easy, and I was reimbursed quickly and without any hassle. I would definitely recommend Pixel Insurance to anyone who is looking for cargo insurance.",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w200,
                                                                fontSize:
                                                                    fluidFontSize(
                                                                        context,
                                                                        16),
                                                              ),
                                                              softWrap: true,
                                                            )
                                                          ],
                                                        )),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        /* unit package card */
                                        Container(
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
                                                  "Package 1",
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

                                        /* unit package card */
                                        Container(
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
                                                  "Package 1",
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
        bottomNavigationBar: const CustomNav(currentIndex: 0),
      ),
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

  /* Insurance packages steps builder */
  Widget _buildStepContainer(BuildContext context, int step) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: EdgeInsets.all(fluidWidth(context, 2)),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.blue,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      width: fluidWidth(context, 40),
      height: fluidWidth(context, 40),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                  image: AssetImage('assets/images/splash.png'),
                  fit: BoxFit.cover,
                ),
              ),
              width: fluidWidth(context, 50),
              height: fluidHeight(context, 5),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Select Package type',
            softWrap: true,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
