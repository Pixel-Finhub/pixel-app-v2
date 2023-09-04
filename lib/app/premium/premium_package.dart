import 'package:flutter/material.dart';
import 'package:pixel_insurance_v2/app/ui/shared/custom_nav.dart';
import 'package:pixel_insurance_v2/app/ui/utils/dimensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixel_insurance_v2/app/ui/theme/app_colors.dart';

class PremiumPage extends StatelessWidget {
  const PremiumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        toolbarHeight: 70.0,
        backgroundColor: Colors.white,
        title: Text(
          'Track your Insurance',
          style: TextStyle(
              color: Colors.black,
              fontSize: fluidFontSize(context, 24),
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: Image.asset('assets/images/premium.png'))
        ],
      ),
      body: Column(children: [
        Container(
          margin: const EdgeInsets.all(10),
          height: 175,
          width: 360,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(167, 166, 166, 1).withOpacity(0.2),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white),
          ),
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/premium_pic.png'),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text('Premium Package'),
            )
          ]),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 160),
          child: ElevatedButton(
              onPressed: () {}, child: const Text('Request Claiming')),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          margin: const EdgeInsets.all(10),
          height: 230,
          width: 327,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0x00f2f2f2),
              border: Border.all()),
          child: const Column(children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(010, 10, 0, 10),
                  child: Text('Plan:'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 125),
                  child: Text('9000 Tzs'),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                  child: Text('Plan Duration:'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 70.0),
                  child: Text('Coverage for 5 days'),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                  child: Text('Origin-Destination:'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: Text('Dar es Salaam - Arusha'),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                  child: Text('Coverage starting:'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: Text('August 15, 2023'),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                  child: Text('Coverage termination:'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text('Feruary 15, 2024'),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                  child: Text('Expire date:'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 75.0),
                  child: Text('December 31, 2023'),
                ),
              ],
            ),
          ]),
        ),
      ]),
      bottomNavigationBar: const CustomNav(
        currentIndex: 1,
      ),
    );
  }
}
