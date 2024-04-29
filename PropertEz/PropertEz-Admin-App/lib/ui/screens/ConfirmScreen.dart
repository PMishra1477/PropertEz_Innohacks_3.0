// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:x_admin_app/ui/screens/onBordingScreen.dart';
import 'package:x_admin_app/utils/colors.dart';
import 'package:x_admin_app/utils/images.dart';

class ConfirmScreen extends StatefulWidget {
  const ConfirmScreen({super.key});

  @override
  State<ConfirmScreen> createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends State<ConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Registered Successfully!",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: Image.asset(tick),
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: secondaryColor.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset:
                            const Offset(2, 1), // changes position of shadow
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
                        "Back to Home",
                        style: TextStyle(
                            color: textColorWhite,
                            fontWeight: FontWeight.w500,
                            fontSize: 24),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const OnBordingScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
