import 'package:flutter/material.dart';

class SupportiveDocument extends StatelessWidget {
  const SupportiveDocument({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
      ),
      body: Column(children: [
        Container(
          margin: const EdgeInsets.all(15),
          child: const Text('Supportive Information',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), border: Border.all()),
          child: const Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Procurement document',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 110,
                width: 300,
                child: Text(
                  'Please provide the details from the carrier receipt,such as the shipment date and carrier information.This information helps us match your coverage with thespecific details of your cargo and its journey.It also assists us in verifying your claim in case of any unforeseen incidents.',
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 20,
          child: Text(
            'Upload recept of the cargo',
            style:
                TextStyle(fontSize: 16, color: Colors.black.withOpacity(0.7)),
          ),
        ),
        Center(
          child: Container(
            height: 50,
            width: 340,
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black.withOpacity(0.5))),
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: 'Carrier Recept',
                  hintStyle: TextStyle(fontSize: 17),
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.upload_file)),
            ),
          ),
        ),
        SizedBox(
          height: 20,
          child: Text('Upload the Imge of the Truck',
              style: TextStyle(
                  fontSize: 16, color: Colors.black.withOpacity(0.7))),
        ),
        Container(
          height: 50,
          width: 340,
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black.withOpacity(0.5))),
          child: TextFormField(
            decoration: const InputDecoration(
                hintText: 'Carrier Recept',
                hintStyle: TextStyle(fontSize: 17),
                border: InputBorder.none,
                suffixIcon: Icon(Icons.upload)),
          ),
        ),
        SizedBox(
          height: 20,
          child: Text('Upload Image of the cargo',
              style: TextStyle(
                  fontSize: 16, color: Colors.black.withOpacity(0.7))),
        ),
        Container(
          height: 50,
          width: 340,
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.black.withOpacity(0.5)),
          ),
          child: TextFormField(
            decoration: const InputDecoration(
                hintText: 'Carrier Recept',
                hintStyle: TextStyle(fontSize: 17),
                border: InputBorder.none,
                suffixIcon: Icon(Icons.upload)),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          height: 50,
          width: 230,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)))),
            child: const Text('Continue'),
          ),
        )
      ]),
    );
  }
}
