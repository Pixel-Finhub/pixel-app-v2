import 'package:flutter/material.dart';
import 'package:pixel_insurance_v2/app/ui/shared/custom_nav.dart';

class RequestForm extends StatefulWidget {
  const RequestForm({super.key});

  @override
  State<RequestForm> createState() => _RequestFormState();
}

class _RequestFormState extends State<RequestForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'Insurance Pre-Survey',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        toolbarHeight: 70.0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_active,
                color: Colors.black,
              ))
        ],
      ),
      body: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
              child: Text('Item on transit'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 108,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all()),
                  child: Column(
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Text('Fabrics'),
                      ),
                      Image.asset('assets/images/fabrices.png')
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 108,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all()),
                  child: Column(
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Text('Fabrics'),
                      ),
                      Image.asset('assets/images/crops.png')
                    ],
                  ),
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(3, 10, 0, 10),
                    height: 108,
                    width: 70,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 191, 214, 164),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        border: Border.all()),
                    child: const Icon(Icons.add))
              ],
            ),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Text('Transportation mode')),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              height: 36,
              width: 340,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), border: Border.all()),
              child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      label: Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          const Text('Truck'),
                          const SizedBox(
                            width: 125,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                            ),
                          ),
                          const Text('Truck details')
                        ],
                      ))),
            ),
            Row(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(5, 10, 0, 5),
                      child: Text('Duration'),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      height: 35,
                      width: 72,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all()),
                      child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              label: Row(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text('5 days'),
                                ],
                              ))),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Text('Expected shipment Date'),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      height: 35,
                      width: 230,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all()),
                      child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              label: Row(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text('25-Jan-2024'),
                                ],
                              ))),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(5, 10, 0, 5),
                      child: Text('Origin'),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      height: 35,
                      width: 154,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all()),
                      child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              label: Row(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text('Iringa'),
                                ],
                              ))),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Text('Destination'),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      height: 35,
                      width: 154,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all()),
                      child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              label: Row(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text('Dar es Salaam'),
                                ],
                              ))),
                    ),
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 15, 0, 5),
              child: Text('Value of the Cargo'),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              height: 36,
              width: 340,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), border: Border.all()),
              child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      label: Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Text('Cargo Price:'),
                          SizedBox(
                            width: 125,
                          ),
                          Text('50000 Tzs')
                        ],
                      ))),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: SizedBox(
                height: 40,
                width: 230,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  child: const Text('Continue'),
                ),
              ),
            ),
          ]),
      bottomNavigationBar: CustomNav(currentIndex: 3),
    );
  }
}
