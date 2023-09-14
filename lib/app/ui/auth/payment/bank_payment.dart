import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pixel_insurance_v2/app/ui/auth/payment/payment_success.dart';

class BankPayment extends StatelessWidget {
  BankPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 70,
        title: const Text('Pay by Master card or VISA card'),
      ),
      body: Container(
        margin: EdgeInsets.all(8.0),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: [
          Form(
            child: Column(children: [
              TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(19),
                ],
                decoration: InputDecoration(
                    hintText: "Card Number",
                    suffixIcon: SizedBox(
                      height: 10,
                      width: 20,
                      child: Image.asset('assets/images/visa_logo.png'),
                    ),
                    prefixIcon: SizedBox(
                      height: 20,
                      width: 15,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/card_image.png'),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Full Name', prefixIcon: Icon(Icons.person)),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(4),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                          hintText: "CVV",
                          prefixIcon: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: SizedBox(
                                height: 10,
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child:
                                      Image.asset('assets/images/cvv_icon.png'),
                                )),
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(5),
                        FilteringTextInputFormatter.digitsOnly,
                        CardMonthInputFormatter()
                      ],
                      decoration: InputDecoration(
                          hintText: "MM/YY",
                          prefixIcon: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: SizedBox(
                                height: 10,
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Image.asset(
                                      'assets/images/calende_icon.png'),
                                )),
                          )),
                    ),
                  ),
                ],
              )
            ]),
          ),
          SizedBox(
            height: 70,
          ),
          SizedBox(
            height: 40,
            child: OutlinedButton.icon(
                onPressed: () {},
                icon: Image.asset('assets/images/scan.png'),
                label: const Text('Scan Card')),
          ),
          Container(
              margin: EdgeInsets.only(top: 40),
              height: 40,
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => SucceessPayment());
                  },
                  child: const Text('Buy')))
        ]),
      ),
    );
  }
}

class CardMonthInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var newText = newValue.text;

    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    var buffer = StringBuffer();
    for (var i = 0; i < newText.length; i++) {
      buffer.write(newText[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex % 2 == 0 && nonZeroIndex != newText.length) {
        buffer.write('/');
      }
    }
    var string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection: TextSelection.collapsed(offset: string.length));
  }
}

void main(List<String> args) {
  runApp(MaterialApp(
    home: BankPayment(),
  ));
}
