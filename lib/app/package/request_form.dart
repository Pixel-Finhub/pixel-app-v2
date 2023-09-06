import 'package:flutter/material.dart';
import 'package:pixel_insurance_v2/app/ui/shared/custom_nav.dart';
import 'package:pixel_insurance_v2/app/ui/theme/app_colors.dart';
import 'package:pixel_insurance_v2/app/ui/utils/dimensions.dart';

class RequestForm extends StatefulWidget {
  const RequestForm({Key? key}) : super(key: key);

  @override
  State<RequestForm> createState() => _RequestFormState();
}

class _RequestFormState extends State<RequestForm> {
  List<Item> items = [
    Item(name: 'Fabrics', imagePath: 'assets/images/fabrics.png', borderColor: primary),
    Item(name: 'Rice Packs', imagePath: 'assets/images/crops.png', borderColor: Colors.blue),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle(context, 'Item to transport'),
            _buildItemGrid(context),
            const SizedBox(height: 50),
            _buildSendRequestButton(context),
          ],
        ),
      ),
      bottomNavigationBar: const CustomNav(currentIndex: 3),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_back),
        color: Colors.black,
      ),
      backgroundColor: Colors.white,
      title: Text(
        'Insurance Pre-Survey',
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: primaryDark,
          fontSize: fluidFontSize(context, 18),
        ),
      ),
      centerTitle: true,
      toolbarHeight: 70.0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_active,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: fluidWidth(context, 5)),
      child: Text(
        title,
        style: TextStyle(
          fontSize: fluidFontSize(context, 15),
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Widget _buildItemGrid(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: fluidWidth(context, 5)),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildItemCard(context, items[index]);
        },
      ),
    );
  }

Widget _buildItemCard(BuildContext context, Item item) {
  double cardWidth = (fluidWidth(context, 100) - 4 * fluidWidth(context, 1)) / 3; // Calculate card width for 3 cards per row

  return Card(
    margin: EdgeInsets.symmetric(
      horizontal: fluidWidth(context, 1),
      vertical: fluidHeight(context, 2),
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
      side: BorderSide(
        color: item.borderColor,
      ),
    ),
    child: SizedBox(
      width: cardWidth, // Set the card width
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Text(
              item.name,
              textAlign: TextAlign.center, // Center the text
            ),
          ),
          Image.asset(
            item.imagePath,
            width: cardWidth - 20, // Adjust image width
            height: cardWidth - 20, // Maintain aspect ratio
            fit: BoxFit.cover, // Cover the available space
          ),
          IconButton(
            onPressed: () {
              _removeItem(item);
            },
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
          ),
        ],
      ),
    ),
  );
}

  void _addItem(Item item) {
    setState(() {
      items.add(item);
    });
  }

  void _removeItem(Item item) {
    setState(() {
      items.remove(item);
    });
  }

  Widget _buildSendRequestButton(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 40,
        width: 230,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          child: const Text('Send request'),
        ),
      ),
    );
  }
}

class Item {
  final String name;
  final String imagePath;
  final Color borderColor;

  Item({required this.name, required this.imagePath, required this.borderColor});
}
