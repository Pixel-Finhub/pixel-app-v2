import 'package:flutter/material.dart';
import 'package:pixel_insurance_v2/app/ui/shared/custom_nav.dart';
import 'package:pixel_insurance_v2/app/ui/utils/dimensions.dart';

class HomePagePackages extends StatelessWidget {
  const HomePagePackages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
          Column(
            children: [
              /* Banner card */
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  /* insurance packages  banner card */
                  height: fluidHeight(context, 30.0),
                  width: fluidWidth(context, 100) - 20,
                  // background image in the card
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    image: DecorationImage(
                      image: AssetImage("assets/images/burning-truck.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),

                  /* Card description Content */
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Insurance Packages",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: fluidFontSize(context, 25),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Get the best insurance packages for your business.",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: fluidFontSize(context, 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              /* Insurance packages */
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Column(
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
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                /* unit package card */
                                Container(
                                  margin: EdgeInsetsDirectional.only(top: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(10.0),
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
                                            fontSize:
                                                fluidFontSize(context, 15),
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae.",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w300,
                                            fontSize:
                                                fluidFontSize(context, 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                /* unit package card */
                                Container(
                                  margin: EdgeInsetsDirectional.only(top: 20),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(10.0),
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
                                            fontSize:
                                                fluidFontSize(context, 15),
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae.",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w300,
                                            fontSize:
                                                fluidFontSize(context, 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                /* unit package card */
                                Container(
                                  margin: EdgeInsetsDirectional.only(top: 20),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(10.0),
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
                                            fontSize:
                                                fluidFontSize(context, 15),
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae.",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w300,
                                            fontSize:
                                                fluidFontSize(context, 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ]),
                        ])
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
      bottomNavigationBar: const CustomNav(currentIndex: 0),
    );
  }
}
