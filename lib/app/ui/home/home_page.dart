// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:pixel_insurance_v2/app/ui/shared/custom_nav.dart';
import '../utils/dimensions.dart';
import 'package:pixel_insurance_v2/app/ui/theme/app_colors.dart';

class HomePage
    extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70.0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none_outlined, color: Colors.black, size: 30),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.person_outline_rounded, color: Colors.black, size: 30),
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Welcome Mr. Msangi",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Row(children: [
            Expanded(
              child: Column(
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
                          image: AssetImage("assets/images/burning-truck-0.jpg"),
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
                              "Get Liability Coverage in Times of Accident.",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: fluidFontSize(context, 25),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "We Provide On demand Insurance Service That Is Tailored According to Your Needs",
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
                                child: Row(children: [
                                  Text(
                                    "Get Insurance in few steps",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: fluidFontSize(context, 20),
                                    ),
                                  ),
                                  const SizedBox(width: 130),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: primary,
                                    size: fluidFontSize(context, 30),
                                  ),
                                ]),
                              ),

                              //Insurance steps section
                              Column(
                                children: [
                                  SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          //1st Step
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                color: Colors.blue,
                                                width: 1.5,
                                              ),
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                            width: fluidWidth(context, 50),
                                            height: fluidHeight(context, 25),
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10.0),
                                                      image: DecorationImage(
                                                        image: AssetImage('assets/images/splash.png'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    width: fluidWidth(context, 50),
                                                    height: fluidHeight(context, 5),
                                                  ),
                                                ),
                                                const SizedBox(height: 10),
                                                Text(
                                                  'Select Package type',
                                                  softWrap: true,
                                                  textAlign: TextAlign.center,
                                                ),
                                                const SizedBox(height: 10),
                                              ],
                                            ),
                                          ),

                                          const SizedBox(width: 15),
                                          //2nd Step
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                color: Colors.blue,
                                                width: 1.5,
                                              ),
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                            width: fluidWidth(context, 50),
                                            height: fluidHeight(context, 25),
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10.0),
                                                      image: DecorationImage(
                                                        image: AssetImage('assets/images/splash.png'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    width: fluidWidth(context, 50),
                                                    height: fluidHeight(context, 5),
                                                  ),
                                                ),
                                                const SizedBox(height: 10),
                                                Text(
                                                  'Conduct cargo pre-survey',
                                                  softWrap: true,
                                                  textAlign: TextAlign.center,
                                                ),
                                                const SizedBox(height: 10),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 15),
                                          //3rd Step
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                color: Colors.blue,
                                                width: 1.5,
                                              ),
                                              borderRadius: BorderRadius.circular(10.0),
                                            ),
                                            width: fluidWidth(context, 50),
                                            height: fluidHeight(context, 25),
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10.0),
                                                      image: DecorationImage(
                                                        image: AssetImage('assets/images/splash.png'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    width: fluidWidth(context, 50),
                                                    height: fluidHeight(context, 5),
                                                  ),
                                                ),
                                                const SizedBox(height: 10),
                                                Text(
                                                  'Conduct cargo pre-survey',
                                                  softWrap: true,
                                                  textAlign: TextAlign.center,
                                                ),
                                                const SizedBox(height: 10),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ))
                                ],
                              ),
                              /* Customer Section*/
                              Row(children: [
                                Expanded(
                                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, children: [
                                    /* unit package card */

                                    Padding(
                                      padding: EdgeInsets.fromLTRB(10, 20, 0, 10),
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
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              // First review
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                  borderRadius: BorderRadius.circular(10.0),
                                                ),
                                                width: fluidWidth(context, 80),
                                                child: Padding(
                                                    padding: const EdgeInsets.all(10.0),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Center(
                                                          child:
                                                              //Costumer Image
                                                              Container(
                                                                  decoration: BoxDecoration(
                                                                    color: const Color.fromARGB(62, 238, 238, 238),
                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                  ),
                                                                  height: fluidHeight(context, 10),
                                                                  child: Row(
                                                                    children: [
                                                                      Icon(
                                                                        Icons.person_outline_rounded,
                                                                        color: primary,
                                                                        size: fluidFontSize(context, 50),
                                                                      ),
                                                                      const SizedBox(width: 15),
                                                                      Text(
                                                                        "Mr Rubea Junior",
                                                                        style: TextStyle(
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
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w200,
                                                            fontSize: fluidFontSize(context, 16),
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
                                                  color: Colors.grey.shade200,
                                                  borderRadius: BorderRadius.circular(10.0),
                                                ),
                                                width: fluidWidth(context, 80),
                                                child: Padding(
                                                    padding: const EdgeInsets.all(10.0),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Center(
                                                          child:
                                                              //Costumer Image
                                                              Container(
                                                                  decoration: BoxDecoration(
                                                                    color: const Color.fromARGB(62, 238, 238, 238),
                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                  ),
                                                                  height: fluidHeight(context, 10),
                                                                  child: Row(
                                                                    children: [
                                                                      Icon(
                                                                        Icons.person_outline_rounded,
                                                                        color: primary,
                                                                        size: fluidFontSize(context, 50),
                                                                      ),
                                                                      const SizedBox(width: 15),
                                                                      Text(
                                                                        "Mr Rajabu Omari",
                                                                        style: TextStyle(
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
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.w200,
                                                            fontSize: fluidFontSize(context, 16),
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
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Package 1",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: fluidFontSize(context, 15),
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae.",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w300,
                                                fontSize: fluidFontSize(context, 12),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    /* unit package card */
                                    Container(
                                      margin: const EdgeInsetsDirectional.only(top: 20),
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      height: fluidHeight(context, 10),
                                      width: fluidWidth(context, 95),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Package 1",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: fluidFontSize(context, 15),
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae.",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w300,
                                                fontSize: fluidFontSize(context, 12),
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
}
