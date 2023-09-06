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
    Item(
        name: 'Fabrics',
        imagePath: 'assets/images/fabrics.png',
        borderColor: primary),
    Item(
        name: 'Rice Packs',
        imagePath: 'assets/images/crops.png',
        borderColor: Colors.blue),
    Item(
        name: 'Fabrics',
        imagePath: 'assets/images/fabrics.png',
        borderColor: primary),
    Item(
        name: 'Rice Packs',
        imagePath: 'assets/images/crops.png',
        borderColor: Colors.blue),
    Item(
        name: 'Fabrics',
        imagePath: 'assets/images/fabrics.png',
        borderColor: primary),
    Item(
        name: 'Rice Packs',
        imagePath: 'assets/images/crops.png',
        borderColor: Colors.blue),
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: fluidWidth(context, 5)),
              child: _buildItemGrid(context),
            ),
            const SizedBox(height: 20), // Add some spacing
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Add item to the grid
                  // _addItem();
                },
                child: const Text('Add Item'),
              ),
            ),

            // Add some spacing
            const SizedBox(height: 20),
            // Pre survey form
            _buildSectionTitle(context, 'Details about the cargo'),
            Container(
              padding: EdgeInsets.symmetric(horizontal: fluidWidth(context, 5), vertical: fluidHeight(context, 1)),
              child: Column(
                children: [
                  // transportation mode
                  buildSelectInput(
                    options: ['Truck', 'Ship', 'Airplane'],
                    selectedValue: 'Truck',
                    onChanged: (String? value) {
                      // Update the selected value
                    },
                  ),
                  const SizedBox(height: 10), // Add some spacing

                  // time of departure
                  buildDateInput(context, 'Time of departure', 'Select date'),
                  const SizedBox(height: 10), // Add some spacing
                  
                  // time of arrival
                  buildDateInput(context, 'Time of arrival', 'Select date'),
                  const SizedBox(height: 10), // Add some spacing

                  // Net value of the cargo Tsh. 
                  buildNumberInput(context, 'Net value of the cargo Tsh.', 'Enter value'),
                  const SizedBox(height: 10), // Add some spacing

                  // Gross weight of the cargo (kg)
                  buildNumberInput(context, 'Gross weight of the cargo (kg)', 'Enter weight'),


                ],
              ),
            ),

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
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // Number of cards per row
        childAspectRatio: 1, // Maintain a 1:1 aspect ratio for cards
      ),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return _buildItemCard(context, items[index]);
      },
    );
  }

  Widget _buildItemCard(BuildContext context, Item item) {
    double cardWidth = fluidWidth(context, 30); // Width of each card
    double cardHeight = fluidHeight(context, 20);

    return GestureDetector(
      onLongPress: () {
        // Show a confirmation dialog when the item is long-pressed
        _showDeleteConfirmationDialog(context, item);
      },
      child: Card(
        margin: EdgeInsets.symmetric(
          horizontal: fluidWidth(context, 1),
          vertical: fluidHeight(context, 1),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(
            color: item.borderColor,
          ),
        ),
        child: SizedBox(
          width: cardWidth,
          height: cardHeight,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  item.name,
                  textAlign: TextAlign.center, // Center the text
                ),
              ),
              Image.asset(
                item.imagePath,
                width: fluidWidth(context, 15), // Maintain aspect ratio
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showDeleteConfirmationDialog(BuildContext context, Item item) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Delete Item'),
          content: Text('Are you sure you want to delete ${item.name}?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                _removeItem(item);
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Delete'),
            ),
          ],
        );
      },
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

  Item(
      {required this.name, required this.imagePath, required this.borderColor});
}

// Text Input Builder
Widget buildTextInput(BuildContext context, String label, String hintText) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 0, 5),
        child: Text(label),
      ),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 15),
            hintText: hintText,
          ),
        ),
      ),
    ],
  );
}

// Date Input Builder
Widget buildDateInput(BuildContext context, String label, String hintText) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 0, 5),
        child: Text(label),
      ),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 15),
            hintText: hintText,
            suffixIcon: IconButton(
              icon: const Icon(Icons.calendar_today),
              onPressed: () {
                // Open date picker here
              },
            ),
          ),
        ),
      ),
    ],
  );
}

// Image Input Builder (opens camera)
Widget buildImageInput(BuildContext context, String label, String imagePath) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 0, 5),
        child: Text(label),
      ),
      GestureDetector(
        onTap: () {
          // Open camera to capture an image
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(),
          ),
          child: Icon(
            Icons.camera_alt,
            size: 50,

          ),
        ),
      ),
    ],
  );
}

Widget buildSelectInput({
  required List<String> options,
  String? selectedValue,
  ValueChanged<String?>? onChanged,
}) {
  return DropdownButtonFormField<String>(
    value: selectedValue,
    onChanged: onChanged,
    items: options.map((String option) {
      return DropdownMenuItem<String>(
        value: option,
        child: Text(option),
      );
    }).toList(),
    decoration: const InputDecoration(
      labelText: 'Select an option',
      border: OutlineInputBorder(),
    ),
  );
}


// number input builder
Widget buildNumberInput(BuildContext context, String label, String hintText) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 0, 5),
        child: Text(label),
      ),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 15),
            hintText: hintText,
          ),
        ),
      ),
    ],
  );
}