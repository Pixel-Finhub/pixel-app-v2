import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pixel_insurance_v2/app/ui/auth/payment/basic_package.dart';
import 'package:pixel_insurance_v2/app/ui/shared/custom_nav.dart';
import 'package:pixel_insurance_v2/app/ui/theme/app_colors.dart';
import 'package:pixel_insurance_v2/app/ui/utils/dimensions.dart';
import 'package:pixel_insurance_v2/app/ui/utils/file_picker.dart';
import 'package:flutter/services.dart';

class RequestForm extends StatefulWidget {
  const RequestForm({Key? key}) : super(key: key);

  @override
  State<RequestForm> createState() => _RequestFormState();
}

class Item {
  final String name;
  final String imagePath;
  final Color borderColor;
  bool isUsed; // New attribute

  Item({
    required this.name,
    required this.imagePath,
    required this.borderColor,
    this.isUsed = false, // Default value is false
  });
}

class _RequestFormState extends State<RequestForm> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<Item> items = [
    Item(
      name: 'Fabrics',
      imagePath: 'assets/images/fabrics.png',
      borderColor: primary,
      isUsed: false,
    ),
    Item(
      name: 'Rice Packs',
      imagePath: 'assets/images/crops.png',
      borderColor: Colors.blue,
      isUsed: false,
    ),
    Item(
      name: 'Electronics',
      imagePath: 'assets/images/electronics.png',
      borderColor: Colors.green,
      isUsed: false,
    ),
    Item(
      name: 'Furniture',
      imagePath: 'assets/images/furniture.png',
      borderColor: Colors.orange,
      isUsed: false,
    ),
    Item(
      name: 'Machinery',
      imagePath: 'assets/images/machinery.png',
      borderColor: Colors.purple,
      isUsed: false,
    ),
    Item(
      name: 'Cement',
      imagePath: 'assets/images/cement.png',
      borderColor: Colors.red,
      isUsed: false,
    ),
    Item(
      name: 'Tyres',
      imagePath: 'assets/images/tyre.png',
      borderColor: Colors.yellow,
      isUsed: false,
    ),
    Item(
      name: 'Logs',
      imagePath: 'assets/images/logs.png',
      borderColor: Colors.yellow,
      isUsed: false,
    ),
    Item(
      name: 'Books',
      imagePath: 'assets/images/books.png',
      borderColor: Colors.purple,
    ),
    Item(
      name: 'Toys',
      imagePath: 'assets/images/toys.png',
      borderColor: Colors.red,
    ),
    Item(
      name: 'Appliances',
      imagePath: 'assets/images/appliances.png',
      borderColor: Colors.yellow,
    ),
    Item(
      name: 'Jewelry',
      imagePath: 'assets/images/jewelry.png',
      borderColor: Colors.indigo,
    ),
    Item(
      name: 'Cosmetics',
      imagePath: 'assets/images/cosmetics.png',
      borderColor: Colors.pink,
    ),
    Item(
      name: 'Food Items',
      imagePath: 'assets/images/food.png',
      borderColor: Colors.deepOrange,
    ),
    Item(
      name: 'Plants',
      imagePath: 'assets/images/plants.png',
      borderColor: Colors.teal,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
                  _addItem();
                },
                child: const Text('Add Item'),
              ),
            ),

            // Add some spacing
            const SizedBox(height: 20),
            // Pre survey form
            _buildSectionTitle(context, 'Details about the cargo'),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: fluidWidth(context, 5),
                  vertical: fluidHeight(context, 1)),
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
                  buildNumberInput(
                      context, 'Net value of the cargo Tsh.', 'Enter value'),
                  const SizedBox(height: 10), // Add some spacing

                  // Gross weight of the cargo (kg)
                  buildNumberInput(context, 'Gross weight of the cargo (kg)',
                      'Enter weight'),
                  const SizedBox(height: 10), // Add some spacing

                  // Cargo invoice
                  buildFileFormField(context),
                  const SizedBox(height: 10), // Add some spacing

                  // image of the cargo in container
                  buildImageInput(context, 'Image of the cargo in container',
                      'assets/images/crops.png'),
                  const SizedBox(height: 10), // Add some spacing
                ],
              ),
            ),

            _buildSendRequestButton(context, 'Continue to payment'),
            SizedBox(height: fluidHeight(context, 5)),
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
    final usedItems = items.where((item) => item.isUsed).toList();

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // Number of cards per row
        childAspectRatio: 1, // Maintain a 1:1 aspect ratio for cards
      ),
      itemCount: usedItems.length,
      itemBuilder: (BuildContext context, int index) {
        return _buildItemCard(context, usedItems[index]);
      },
    );
  }

  Widget _buildItemCard(BuildContext context, Item item) {
    double cardWidth = fluidWidth(context, 30); // Width of each card
    double cardHeight = fluidHeight(context, 20);

    return GestureDetector(
      onTap: () {
        if (items.contains(item)) {
          // Toggle the isUsed attribute only if the item is in the items list
          setState(() {
            // item.isUsed = !item.isUsed;
          });
        }
      },
      onLongPress: () {
        if (items.contains(item)) {
          // Show a confirmation dialog when the item is long-pressed
          _showDeleteConfirmationDialog(context, item);
        }
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

  void _addItem() {
    List<Item> unusedItems = items.where((item) => !item.isUsed).toList();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: Container(
            width: fluidWidth(
                context, 90), // Set the width to 90% of the screen width
            height: fluidHeight(
                context, 80), // Set the height to 80% of the screen height
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: const Text(
                    'Select an item to add',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: unusedItems.map((item) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 16.0,
                          ),
                          child: ListTile(
                            leading: Image.asset(
                              item.imagePath,
                              width: fluidWidth(context, 20),
                              height: fluidWidth(context,
                                  20), // Adjust the image size as needed
                            ),
                            title: Text(item.name),
                            onTap: () {
                              // Update isUsed to true for the selected item
                              setState(() {
                                item.isUsed = true;
                              });
                              Navigator.of(context).pop(); // Close the dialog
                            },
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    // custom styling
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 35,
                        vertical: 5,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pop(); // Close the dialog without selecting an item
                    },
                    child: const Text('Close'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _removeItem(Item item) {
    setState(() {
      item.isUsed = false;
      items.remove(item);
    });
  }

  Widget _buildSendRequestButton(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: Center(
        child: SizedBox(
          height: 50,
          width: 230,
          child: ElevatedButton(
            onPressed: () {
              Get.to(() => const BasicPackagePaymentPage());
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: Text(
              'Continue to payment',
              style: TextStyle(
                  fontSize: fluidFontSize(context, 14),
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }
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

// Select Input Builder
Widget buildSelectInput({
  required List<String> options,
  required String selectedValue,
  required void Function(String?) onChanged,
}) {
  return Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 0, 5),
            child: Text('Transportation mode'),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: selectedValue,
                onChanged: onChanged,
                items: options.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(value),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    ],
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
          keyboardType: TextInputType.number,
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
