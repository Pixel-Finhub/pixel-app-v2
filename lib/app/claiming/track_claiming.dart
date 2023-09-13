import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pixel_insurance_v2/app/claiming/claiming_process1.dart';
import 'package:pixel_insurance_v2/app/ui/shared/custom_nav.dart';

class TrackClaiming extends StatelessWidget {
  const TrackClaiming({Key? key}) : super(key: key); // Corrected super call

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Track your Insurance'),
        leading: const Icon(Icons.notification_add), // Icon at the start (left)
        actions: [
          // Use an Icon for actions instead of an Image
          IconButton(
            onPressed: () {
              // TODO: Handle the action when the icon is pressed
            },
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Your list of ListTile widgets here
            const ListTile(
              title: Text('Premium'),
              subtitle: Text('90,000 Tzs'),
            ),
            const ListTile(
              title: Text('Plan Duration'),
              subtitle: Text('5 hours 23 minutes'),
            ),
            const ListTile(
              title: Text('Origin and Destination'),
              subtitle: Text('From Dar es Salaam to Arusha'),
            ),
            const ListTile(
              title: Text('Insurance ID'),
              subtitle: Text('August 16, 2023'),
            ),
            const ListTile(
              title: Text('Coverage Starting'),
              subtitle: Text('August 15, 2023'),
            ),
            const ListTile(
              title: Text('Coverage Termination'),
              subtitle: Text('August 16, 2023'),
            ),
            const ListTile(
              title: Text('Cargo Information'),
              leading: Icon(Icons.car_crash),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Type of Cargo: Electronic accessories'),
                  Text('Weight: 100kg'),
                  Text('Cost: 500,000 T29'),
                  Text('Transportation date: August 15, 2023'),
                  Text('Estimated arrival date: August 16, 2023'),
                ],
              ),
            ),
            const ListTile(
              title: Text('Vehicle Information'),
              leading: Icon(Icons.directions_car),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Type of Vehicle: Scania R890'),
                  Text('Condition: Good'),
                  Text('Vehicle Number: T 578 EDE'),
                  Text('Vehicle Owner: Mr Owen Logistics Co.'),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    // TODO: Show more details
                  },
                  child: const Text('More details'),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => const ClaimingProcessOne());
                  },
                  child: const Text('Request Claim'),
                ),
              ],
            ),

            Container(
              height: 160,
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(),
              ),
              child: const Center(
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly, // Align text vertically
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align text horizontally
                  children: [
                    Text(
                      'Premium',
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      '90,000 Tzs',
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Plan Duration: 5 hours 23 minutes',
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Origin and Destination: From Dar es Salaam to Arusha',
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Coverage Starting: August 15, 2023',
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Coverage Termination: August 16, 2023',
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Insurance ID: August 16, 2023',
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
       bottomNavigationBar: const CustomNav(
        currentIndex: 2,
      ),
    );
  }
}

// void main() {
//   runApp(const MaterialApp(
//     home: TrackClaiming(),
//   ));
// }
