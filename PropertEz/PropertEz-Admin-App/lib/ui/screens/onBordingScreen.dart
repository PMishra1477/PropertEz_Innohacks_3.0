// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:x_admin_app/ui/screens/OwnerDetails.dart';
import 'package:x_admin_app/utils/colors.dart';
import 'package:x_admin_app/utils/images.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({super.key});

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Image.asset(logoLong),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: secondaryColor.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: const Offset(4, 2), // changes position of shadow
                  ),
                ],
                color: secondaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              height: 56,
              width: 4000,
              child: Center(
                child: TextButton(
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                        color: textColorWhite,
                        fontWeight: FontWeight.w500,
                        fontSize: 24),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const OwnerDetails(),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
