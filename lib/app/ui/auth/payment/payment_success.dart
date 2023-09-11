import 'package:flutter/material.dart';
 
class SucceessPayment extends StatelessWidget {
  const SucceessPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage('assets/images/success_image.png')
              )
            ),
          ),
          Text(
            'Success !',
            style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black12),
          ),
          Text(
            'Your payment succefully!',
            style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.w600,),
          )
        ],
      ),
    );
  }
}