// ignore_for_file: file_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:x_admin_app/ui/components/MyButton.dart';
import 'package:x_admin_app/ui/components/MyTextField.dart';
import 'package:x_admin_app/ui/screens/PropertyDetails.dart';
import 'package:x_admin_app/utils/colors.dart';

class OwnerDetails extends StatefulWidget {
  const OwnerDetails({
    super.key,
  });

  @override
  State<OwnerDetails> createState() => _OwnerDetailsState();
}

class _OwnerDetailsState extends State<OwnerDetails> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameControlle = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController pinController = TextEditingController();
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
                "Step 1/5",
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
                "Owner's Details",
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
                // width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height,
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
                      children: [
                        Expanded(
                          child: AppTextField(
                              controllerText: firstNameController,
                              fieldWidth: 130,
                              fieldHeight: 30,
                              headerText: "First Name",
                              fieldHintText: "Shubh"),
                        ),
                        Expanded(
                          child: AppTextField(
                              controllerText: lastNameControlle,
                              fieldWidth: 130,
                              fieldHeight: 30,
                              headerText: "Last Name",
                              fieldHintText: "Agarwal"),
                        ),
                      ],
                    ),
                    AppTextField(
                        controllerText: phoneController,
                        fieldWidth: 300,
                        fieldHeight: 30,
                        headerText: "Phone Number",
                        fieldHintText: "+91 00000 00000"),
                    AppTextField(
                        controllerText: addressController,
                        fieldWidth: 300,
                        fieldHeight: 30,
                        headerText: "Address",
                        fieldHintText: "123/456, house name, locality"),
                    Row(
                      children: [
                        Expanded(
                          child: AppTextField(
                              controllerText: cityController,
                              fieldWidth: 130,
                              fieldHeight: 30,
                              headerText: "City",
                              fieldHintText: "Ghaziabad"),
                        ),
                        Expanded(
                          child: AppTextField(
                              controllerText: pinController,
                              fieldWidth: 130,
                              fieldHeight: 30,
                              headerText: "Pin",
                              fieldHintText: "201206"),
                        ),
                      ],
                    ),
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
                    navigateTo: Property(),
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
    firstNameController.dispose();
    lastNameControlle.dispose();
    addressController.dispose();
    phoneController.dispose();
    pinController.dispose();
    cityController.dispose();
    super.dispose();
  }
}
