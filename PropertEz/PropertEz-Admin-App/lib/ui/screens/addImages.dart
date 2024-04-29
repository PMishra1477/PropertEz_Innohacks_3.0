// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:x_admin_app/ui/components/MyButton.dart';
import 'package:x_admin_app/ui/screens/Description.dart';
import 'package:x_admin_app/utils/colors.dart';

class Images extends StatefulWidget {
  const Images({
    super.key,
  });

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
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
                "Step 4/5",
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
                "Add Images",
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
                width: 360,
                padding: const EdgeInsets.fromLTRB(27, 25, 26, 29),
                decoration: BoxDecoration(
                    border: Border.all(color: secondaryColor),
                    color: signUpCardColor,
                    borderRadius: BorderRadius.circular(24)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(width: 2, color: textFieldBorderColor),
                      ),
                      child: const Center(
                        child: Text(
                          '+',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 80,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 52,
                          height: 52,
                          color: textFieldBorderColor,
                        ),
                        const SizedBox(width: 12),
                        Container(
                          width: 52,
                          height: 52,
                          // color: const Color(0xFFD9D9D9),
                          color: textFieldBorderColor,
                        ),
                        const SizedBox(width: 12),
                        Container(
                          width: 52,
                          height: 52,
                          // color: const Color(0xFFD9D9D9),
                          color: textFieldBorderColor,
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
                    navigateTo: Description(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
