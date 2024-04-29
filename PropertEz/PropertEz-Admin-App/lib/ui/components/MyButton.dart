// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:x_admin_app/ui/screens/OwnerDetails.dart';
import 'package:x_admin_app/ui/screens/onBordingScreen.dart';
import 'package:x_admin_app/utils/colors.dart';

class nextButton extends StatelessWidget {
  final Widget navigateTo;
  const nextButton({
    required this.navigateTo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => navigateTo),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: secondaryColor.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 6,
              offset: const Offset(1, 1), // changes position of shadow
            ),
          ],
          color: secondaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        height: 40,
        width: 140,
        child: const Center(
          child: Text(
            "Next >",
            style: TextStyle(
                color: textColorWhite,
                fontWeight: FontWeight.w700,
                fontSize: 20),
          ),
        ),
      ),
    );
  }
}
