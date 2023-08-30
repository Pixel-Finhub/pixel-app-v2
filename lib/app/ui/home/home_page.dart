// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications, color: Colors.black, size: 30),
        ),
        actions: [
          CircleAvatar(
            child: Image.asset(
              'assets/images/login_person.png',
            ),
          )
          /* IconButton(
            onPressed: () {},
            icon: Icon(Icons., color: Colors.black, size: 30),
          ),*/
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Welcome Mr. Msangi",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey,
          ),
          height: 300,
        ),
      ),
    ));
  }
}
