import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BankPayment extends StatelessWidget {
  BankPayment({super.key});

  TextEditingController cardNumberController = TextEditingController();
  CardType cardType = CardType.Invalid;

  void getCardTypeFromNum() {
    String cardNum = CardUtils.getCleanedNumber(cardNumberController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pay by Master card or VISA card'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: [
          Form(
            child: Column(children: [
              TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(19),
                  CardNumberInputFormatter()
                ],
                decoration: InputDecoration(
                    hintText: "Card Number",
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/visa_logo.png'),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Image.asset('assets/images/card_image.png'),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Full Name',
                      prefixIcon: Icon(Icons.usb_rounded)),
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
                            child: Image.asset('assets/images/cvv_icon.png'),
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
                            child:
                                Image.asset('assets/images/calende_icon.png'),
                          )),
                    ),
                  ),
                ],
              )
            ]),
          ),
          OutlinedButton.icon(
              onPressed: () {},
              icon: Image.asset('assets/images/scan.png'),
              label: const Text('Scan')),
          ElevatedButton(
            onPressed: () {},
           child: const Text('Buy'))
        ]),
      ),
    );
  }
}

class CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // TODO: implement formatEditUpdate
    throw UnimplementedError();
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    String inputData = newValue.text;
    StringBuffer buffer = StringBuffer();

    for (var i = 0; i < inputData.length; i++) {
      buffer.write(inputData[i]);
      int index = i + 1;

      if (index % 4 == 0 && inputData.length != index) {
        buffer.write('  ');
      }
    }
    return TextEditingValue(
        text: buffer.toString(),
        selection: TextSelection.collapsed(offset: buffer.toString().length));
  }
}

class CardMonthInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // TODO: implement formatEditUpdate
    throw UnimplementedError();
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
