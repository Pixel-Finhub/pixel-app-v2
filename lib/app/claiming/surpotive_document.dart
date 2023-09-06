import 'package:flutter/material.dart';
import 'package:pixel_insurance_v2/app/ui/theme/app_colors.dart';
import 'package:pixel_insurance_v2/app/ui/utils/dimensions.dart';
import 'package:pixel_insurance_v2/app/ui/utils/file_picker.dart';

class SupportiveDocument extends StatefulWidget {
  const SupportiveDocument({super.key});

  @override
  State<SupportiveDocument> createState() => _SupportiveDocumentState();
}

class _SupportiveDocumentState extends State<SupportiveDocument> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildSectionTitle(context, 'Supporting Information'),
                // guiding text paragraph wrapped in padding
                Container(
                  width: fluidWidth(context, 100),
                  padding: EdgeInsets.symmetric(
                      horizontal: fluidWidth(context, 5),
                      vertical: fluidHeight(context, 2)),
                  child: Wrap(
                    children: [
                      Text(
                        'Please provide the details from the carrier receipt, such as the shipment date and carrier information'
                        'This information helps us match your coverage with the specific details of your cargo and its journey.'
                        'It also assists us in verifying your claim in case of any unforeseen incidents.',
                        style: TextStyle(
                          fontSize: fluidFontSize(context, 12),
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),

                // Supporting information form
                _buildSectionTitle(context, "Procurement form"),

                Container(
                  width: fluidWidth(context, 100),
                  padding: EdgeInsets.symmetric(
                      horizontal: fluidWidth(context, 5),
                      vertical: fluidHeight(context, .5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildFileFormField(context),
                      buildDateInput(context, 'Date of Issued', 'Select date'),
                      
                      // image proof of purchase
                      buildImageInput(
                        context,
                        'Image proof of purchase',
                        'assets/images/placeholder.png',
                      ),
                      const SizedBox(height:10),
                      // Truck inspection and cargo manifest inspection
                      

                    ],
                  ),
                )


              ],
            ),
          ],
        ),
      ),
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
        'Supporting Document',
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
            child: const Icon(
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
}
