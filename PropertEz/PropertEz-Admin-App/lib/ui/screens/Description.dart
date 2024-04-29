// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:x_admin_app/ui/components/MyTextField.dart';
import 'package:x_admin_app/ui/screens/Payment.dart';
import 'package:x_admin_app/utils/colors.dart';
import 'package:x_admin_app/ui/components/MyButton.dart';

class Description extends StatefulWidget {
  const Description({
    super.key,
  });

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  TextEditingController discriptionController = TextEditingController();
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
                  fontSize: 24,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "Step 5/5",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "Description",
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Center(
              child: Container(
                width: 340, // +40 from design
                height: 340, // +40 from design
                decoration: BoxDecoration(
                    border: Border.all(color: secondaryColor),
                    color: signUpCardColor,
                    borderRadius: BorderRadius.circular(24)),
                child: AppTextField3(
                  controllerText: discriptionController,
                  fieldHeight: 300,
                  fieldWidth: 300,
                  headerText: "",
                  fieldHintText: "Additional Info(Optional)",
                ),
              ),
            ),
            const SizedBox(height: 9),
            const Padding(
              padding: EdgeInsets.all(40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  nextButton(
                    navigateTo: Payment(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    discriptionController.dispose();
    super.dispose();
  }
}
