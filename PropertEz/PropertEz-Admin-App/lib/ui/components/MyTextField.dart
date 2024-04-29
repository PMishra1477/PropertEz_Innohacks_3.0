// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:x_admin_app/utils/colors.dart';

class AppTextField extends StatelessWidget {
  TextEditingController controllerText;
  final String headerText;
  final String fieldHintText;
  final double fieldWidth;
  final double fieldHeight;
  AppTextField({
    required this.controllerText,
    required this.fieldHeight,
    required this.fieldWidth,
    required this.headerText,
    required this.fieldHintText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                headerText,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: textColorWhite,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Container(
            constraints:
                BoxConstraints.tightFor(width: fieldWidth, height: fieldHeight),
            height: fieldHeight,
            width: fieldWidth,
            child: TextField(
              controller: controllerText,
              // keyboardType: TextInputType.name,
              cursorColor: cursorColor,
              // enableSuggestions: true,
              // obscureText: ,
              style: const TextStyle(
                color: textColorWhite,
              ),
              decoration: InputDecoration(
                hintText: fieldHintText,
                hintStyle: const TextStyle(
                    fontSize: 12,
                    color: textFieldTextColor,
                    fontWeight: FontWeight.w500),
                contentPadding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  borderSide:
                      BorderSide(color: textFieldBorderColor, width: 1.5),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  borderSide: BorderSide(color: Colors.white, width: 1.5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AppTextField2 extends StatelessWidget {
  TextEditingController controllerText;
  final double fieldWidth;
  final double fieldHeight;
  final String headerText;
  final String fieldHintText;

  AppTextField2({
    super.key,
    required this.controllerText,
    required this.fieldWidth,
    required this.fieldHeight,
    required this.headerText,
    required this.fieldHintText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headerText,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            color: textColorWhite,
            fontSize: 12,
          ),
        ),
        const SizedBox(height: 4), // Adjust alignment as needed
        SizedBox(
          height: fieldHeight,
          width: fieldWidth,
          child: TextField(
            controller: controllerText,
            maxLines: null,
            expands: true,
            // keyboardType: TextInputType.multiline,
            textAlign: TextAlign.start,
            cursorColor: cursorColor,
            style: const TextStyle(
              color: textColorWhite,
            ),
            decoration: InputDecoration(
              hintText: fieldHintText,
              hintStyle: const TextStyle(
                fontSize: 12,
                color: textFieldTextColor,
                fontWeight: FontWeight.w500,
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                borderSide: BorderSide(
                  color: textFieldBorderColor,
                  width: 1.5,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 1.5,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class AppTextField3 extends StatelessWidget {
  TextEditingController controllerText;
  final double fieldWidth;
  final double fieldHeight;
  final String headerText;
  final String fieldHintText;

  AppTextField3({
    super.key,
    required this.controllerText,
    required this.fieldWidth,
    required this.fieldHeight,
    required this.headerText,
    required this.fieldHintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text(
          //   headerText,
          //   style: const TextStyle(
          //     fontWeight: FontWeight.w700,
          //     color: textColorWhite,
          //     fontSize: 12,
          //   ),
          // ),
          // SizedBox(height: 4), // Adjust alignment as needed
          SizedBox(
            height: fieldHeight,
            width: fieldWidth,
            child: TextFormField(
              maxLines: null,
              expands: true,
              // keyboardType: TextInputType.multiline,
              textAlign: TextAlign.start,
              cursorColor: cursorColor,
              style: const TextStyle(
                color: textColorWhite,
              ),
              decoration: InputDecoration(
                hintText: fieldHintText,
                hintStyle: const TextStyle(
                  fontSize: 12,
                  color: textFieldTextColor,
                  fontWeight: FontWeight.w500,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(
                    color: textFieldBorderColor,
                    width: 1.5,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1.5,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
