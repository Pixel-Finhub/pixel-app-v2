import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            child: Column(children: [
              const SizedBox(height: 81),
              const Text(
                'OTP Verification',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 70,
              ),
              Image.asset('assets/images/OTP_Login.png'),
              const SizedBox(
                height: 30,
              ),
              const Text.rich(
                TextSpan(
                  text: 'Enter the code from the SMS we \n     send to',
                  children: [
                    TextSpan(
                      text: '\t\t+255 768****78',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromARGB(255, 0, 116, 217),
                          )),
                      child: SizedBox(
                          height: 48,
                          width: 48,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: const InputDecoration(
                                hintText: "5",
                                hintStyle: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.normal)),
                            onSaved: (pin1) {},
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headlineMedium,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromARGB(255, 0, 116, 217),
                          )),
                      child: SizedBox(
                          height: 48,
                          width: 48,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: const InputDecoration(
                                hintText: "5",
                                hintStyle: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.normal)),
                            onSaved: (pin1) {},
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headlineMedium,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromARGB(255, 0, 116, 217),
                          )),
                      child: SizedBox(
                          height: 48,
                          width: 48,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: const InputDecoration(
                                hintText: "5",
                                hintStyle: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.normal)),
                            onSaved: (pin1) {},
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headlineMedium,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromARGB(255, 0, 116, 217),
                          )),
                      child: SizedBox(
                          height: 48,
                          width: 48,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: const InputDecoration(
                                hintText: "5",
                                hintStyle: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.normal)),
                            onSaved: (pin1) {},
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headlineMedium,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromARGB(255, 0, 116, 217),
                          )),
                      child: SizedBox(
                          height: 48,
                          width: 48,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: const InputDecoration(
                                hintText: "5",
                                hintStyle: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.normal)),
                            onSaved: (pin1) {},
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headlineMedium,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          )),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                '02:32',
                style: TextStyle(color: Colors.lightBlue),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text.rich(
                  TextSpan(text: 'I did not receive any code? ', children: [
                TextSpan(
                  text: 'Resend',
                  style: TextStyle(color: Colors.lightBlue),
                )
              ]))
            ])));
  }
}
