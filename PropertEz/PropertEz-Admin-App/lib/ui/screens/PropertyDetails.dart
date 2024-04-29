// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:x_admin_app/ui/components/MyButton.dart';
import 'package:x_admin_app/ui/components/MyTextField.dart';
import 'package:x_admin_app/ui/screens/Eminities.dart';
import 'package:x_admin_app/utils/colors.dart';
import 'package:x_admin_app/utils/constants.dart';

class Property extends StatefulWidget {
  const Property({super.key});

  @override
  State<Property> createState() => _PropertyState();
}

class _PropertyState extends State<Property> {
  TextEditingController hostelTypeController = TextEditingController();
  TextEditingController hostelNameController = TextEditingController();
  TextEditingController hostelAddressController = TextEditingController();
  TextEditingController hostelDistanceController = TextEditingController();
  late String dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = propertyOptions.first;
    hostelTypeController.text = dropdownValue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 200,
                  height: 60,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Register yourself with us now!",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 24),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "Step 2/5",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "Property's Details",
                style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 22),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Center(
              child: Container(
                width: 340, // +40 from design
                height: 360, // +40 from design
                decoration: BoxDecoration(
                    border: Border.all(color: secondaryColor),
                    color: signUpCardColor,
                    borderRadius: BorderRadius.circular(24)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Select Property Type: ",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: textColorWhite,
                            fontSize: 12,
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(color: dividerColor),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(6)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: DropdownButton<String>(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                              iconSize: 30,
                              dropdownColor: dropDownColor,
                              value: dropdownValue,
                              style: const TextStyle(color: textColorWhite),
                              underline: Container(
                                height: 2,
                                color: dividerColor,
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                });
                              },
                              items: propertyOptions
                                  .map<DropdownMenuItem<String>>(
                                      (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    AppTextField(
                        controllerText: hostelNameController,
                        fieldWidth: 300,
                        fieldHeight: 30,
                        headerText: "Name",
                        fieldHintText: "Muskan Hostel"),
                    AppTextField(
                        controllerText: hostelAddressController,
                        fieldWidth: 300,
                        fieldHeight: 30,
                        headerText: "Address",
                        fieldHintText: "123/456, house name, locality"),
                    AppTextField(
                        controllerText: hostelDistanceController,
                        fieldWidth: 300,
                        fieldHeight: 30,
                        headerText: "Distance",
                        fieldHintText: "300 m"),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  nextButton(
                    navigateTo: Eminities(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    hostelNameController.dispose();
    hostelAddressController.dispose();
    hostelDistanceController.dispose();
    hostelTypeController.dispose();
    super.dispose();
  }
}
