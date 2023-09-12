import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pixel_insurance_v2/app/ui/auth/payment/payment_success.dart';

class MobilePayment extends StatelessWidget {
  const MobilePayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 70,
        title: const Text(
          "Mobile Payment",
        ),
        elevation: 0,
      ),
      body: Form(
        child: Column(children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            height: 64,
            width: 344,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextFormField(
              //controller: ,
              validator: ((value) {
                if (value!.isEmpty) {
                  return 'require missing field';
                }
                return null;
              }),
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  labelText: "Mobile Network",
                  hintText: "Select your mobile Network",
                  border: OutlineInputBorder()),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            height: 64,
            width: 344,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: TextFormField(
              //controller: ,
              validator: ((value) {
                if (value!.isEmpty) {
                  return 'require missing field';
                }
                return null;
              }),
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                  labelText: "Phone number",
                  hintText: "Enter the your number",
                  border: OutlineInputBorder()),
            ),
          ),
          SizedBox(
            height: 46,
            width: 200,
            child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const SucceessPayment());
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentSuccessPage()))
                },
                child: const Text("Pay")),
          )
        ]),
      ),
    );
  }
}


