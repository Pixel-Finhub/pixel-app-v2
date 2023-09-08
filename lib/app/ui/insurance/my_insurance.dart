// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../shared/custom_nav.dart';

class MyInsurance
    extends StatefulWidget {
  const MyInsurance({Key? key}) : super(key: key);

  @override
  MyInsuranceState createState() => MyInsuranceState();
}

class MyInsuranceState
    extends State<MyInsurance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            "Track Insurance",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Row(
          children: [
            Center(
              child: Column(children: [ Text("Coming Soon"),],)
            ),
          ],
        )
        ),
         bottomNavigationBar: const CustomNav(
        currentIndex: 2,
      ),
        );
  }
}
