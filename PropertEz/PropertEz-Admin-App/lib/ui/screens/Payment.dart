// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:x_admin_app/ui/components/MyDivider.dart';
import 'package:x_admin_app/ui/screens/ConfirmScreen.dart';
import 'package:x_admin_app/utils/colors.dart';
import 'package:x_admin_app/ui/components/MyButton.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

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
                  height: 100,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40, bottom: 4),
              child: Text(
                'Payment',
                style: TextStyle(
                  // fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Color(0xFF23AEFF),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                width: 400,
                height: 500,
                decoration: BoxDecoration(
                    border: Border.all(color: secondaryColor),
                    color: signUpCardColor,
                    borderRadius: BorderRadius.circular(24)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      '₹ 7 crore',
                      style: TextStyle(
                        // fontFamily: 'Commissioner',
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 240,
                      height: 240,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: textColor),
                    ),
                    const SizedBox(height: 20),
                    const MyDivider(),
                    const SizedBox(height: 6),
                    const Text(
                      'Pay Using Other Methods',
                      style: TextStyle(
                        // fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFF23AEFF),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(4, 4),
                    blurRadius: 4,
                    color: Color.fromRGBO(35, 174, 255, 0.15),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  nextButton(
                    navigateTo: ConfirmScreen(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
