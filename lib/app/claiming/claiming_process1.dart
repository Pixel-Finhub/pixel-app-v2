import 'package:flutter/material.dart';

class ClaimingProcessOne extends StatelessWidget {
  const ClaimingProcessOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_back,
                ),
                Text(
                  'Insurance Claiming Form',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.notification_add,
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 110,
              width: 120,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 235, 237, 238),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.lightBlue,
                    ),
                    Text(
                      'Add Image',
                      style: TextStyle(color: Colors.lightBlue),
                    )
                  ]),
            ),
            const SizedBox(height: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('When did the accident occured? *'),
                      Container(
                        width: 327,
                        height: 35, // Adjust the width as needed
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextField(
                          keyboardType: TextInputType.datetime,
                          controller: TextEditingController(),
                          decoration: const InputDecoration.collapsed(
                              hintText: 'Type something...',
                              hintStyle: TextStyle(fontSize: 14)),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('What vehical was involved? *'),
                      Container(
                        width: 327,
                        height: 35, // Adjust the width as needed
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextField(
                          keyboardType: TextInputType.datetime,
                          controller: TextEditingController(),
                          decoration: const InputDecoration.collapsed(
                              hintText: 'eg Lories, motorcycle...',
                              hintStyle: TextStyle(fontSize: 14)),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Type of accident? *'),
                      Container(
                        width: 327,
                        height: 35, // Adjust the width as needed
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextField(
                          keyboardType: TextInputType.datetime,
                          controller: TextEditingController(),
                          decoration: const InputDecoration.collapsed(
                              hintText: 'eg Collision with fixed object...',
                              hintStyle: TextStyle(fontSize: 14)),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Description'),
                      Container(
                        width: 327,
                        height: 80, // Adjust the width as needed
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          controller: TextEditingController(),
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              labelText: 'provide a briefy explanation',
                              hintText:
                                  'eg. please  including where? what happened?',
                              hintStyle: TextStyle(fontSize: 14)),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Upload the following Document'),
                          Padding(padding: EdgeInsets.only(bottom: 10)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.add_circle,
                                color: Colors.lightBlue,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text('Cargo purchase receipt'),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.add_circle,
                                color: Colors.lightBlue,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text('Police report'),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.add_circle,
                                color: Colors.lightBlue,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text('Cargo purchase receipt'),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 230,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your submit button logic here
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Submit',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
