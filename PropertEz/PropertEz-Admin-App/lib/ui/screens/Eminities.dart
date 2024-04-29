// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:x_admin_app/ui/components/MyButton.dart';
import 'package:x_admin_app/ui/components/MyTextField.dart';
import 'package:x_admin_app/ui/screens/addImages.dart';
import 'package:x_admin_app/utils/colors.dart';
import 'package:x_admin_app/utils/constants.dart';

class Eminities extends StatefulWidget {
  const Eminities({super.key});

  @override
  State<Eminities> createState() => _OwnerDetailsState();
}

class _OwnerDetailsState extends State<Eminities> {
  String? seaterSelect;
  String? powerBakup;
  String? airCondition;
  String? cooler;
  String? mattress;
  String? wifi;
  String? washingMachine;

  TextEditingController seaterController = TextEditingController();
  TextEditingController priceControlle = TextEditingController();
  TextEditingController powerController = TextEditingController();
  TextEditingController airController = TextEditingController();
  TextEditingController coolerController = TextEditingController();
  TextEditingController mattressController = TextEditingController();
  TextEditingController wifiController = TextEditingController();
  TextEditingController washingController = TextEditingController();

  late String seaterDropDownValue;
  late String powerDropDownValue;
  late String airDropDownValue;
  late String coolerDropDownValue;
  late String mattressDropDownValue;
  late String wifiDropDownValue;
  late String washingDropDownValue;

  @override
  void initState() {
    super.initState();
    seaterDropDownValue = propertyOptions.first;
    seaterController.text = seaterDropDownValue;

    powerDropDownValue = yesNoOptions.last;
    powerController.text = powerDropDownValue;

    airDropDownValue = yesNoOptions.last;
    airController.text = airDropDownValue;

    coolerDropDownValue = yesNoOptions.last;
    coolerController.text = coolerDropDownValue;

    mattressDropDownValue = yesNoOptions.last;
    mattressController.text = mattressDropDownValue;

    wifiDropDownValue = yesNoOptions.last;
    wifiController.text = wifiDropDownValue;

    washingDropDownValue = yesNoOptions.last;
    washingController.text = washingDropDownValue;
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
                "Step 3/5",
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
                "Eminities",
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
                width: 360, // +40 from design
                height: 400, // +40 from design

                decoration: BoxDecoration(
                    border: Border.all(color: secondaryColor),
                    color: signUpCardColor,
                    borderRadius: BorderRadius.circular(24)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AppTextField2(
                          controllerText: priceControlle,
                          fieldWidth: 240,
                          fieldHeight: 30,
                          headerText: "Pricing",
                          fieldHintText: "₹ 3890 "),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Select Seater: ",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: textColorWhite,
                              fontSize: 12,
                            ),
                          ),
                          Container(
                            width: 116,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: dividerColor),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: DropdownButton<String>(
                                iconSize: 30,
                                dropdownColor: dropDownColor,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                value: seaterSelect,
                                style: const TextStyle(color: textColorWhite),
                                underline: Container(
                                  height: 2,
                                  color: dividerColor,
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    seaterSelect = newValue!;
                                  });
                                },
                                items: seaterOptions
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Power Bakup: ",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: textColorWhite,
                              fontSize: 12,
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: dividerColor),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: DropdownButton<String>(
                                iconSize: 30,
                                dropdownColor: dropDownColor,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                value: powerBakup,
                                style: const TextStyle(color: textColorWhite),
                                underline: Container(
                                  height: 2,
                                  color: dividerColor,
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    powerBakup = newValue!;
                                  });
                                },
                                items: yesNoOptions
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Air Conditioner: ",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: textColorWhite,
                              fontSize: 12,
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: dividerColor),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: DropdownButton<String>(
                                iconSize: 30,
                                dropdownColor: dropDownColor,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                value: airCondition,
                                style: const TextStyle(color: textColorWhite),
                                underline: Container(
                                  height: 2,
                                  color: dividerColor,
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    airCondition = newValue!;
                                  });
                                },
                                items: yesNoOptions
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Cooler: ",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: textColorWhite,
                              fontSize: 12,
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: dividerColor),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: DropdownButton<String>(
                                iconSize: 30,
                                dropdownColor: dropDownColor,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                value: cooler,
                                style: const TextStyle(color: textColorWhite),
                                underline: Container(
                                  height: 2,
                                  color: dividerColor,
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    cooler = newValue!;
                                  });
                                },
                                items: yesNoOptions
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Mattress: ",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: textColorWhite,
                              fontSize: 12,
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: dividerColor),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: DropdownButton<String>(
                                iconSize: 30,
                                dropdownColor: dropDownColor,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                value: mattress,
                                style: const TextStyle(color: textColorWhite),
                                underline: Container(
                                  height: 2,
                                  color: dividerColor,
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    mattress = newValue!;
                                  });
                                },
                                items: yesNoOptions
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Wi-Fi: ",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: textColorWhite,
                              fontSize: 12,
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: dividerColor),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: DropdownButton<String>(
                                iconSize: 30,
                                dropdownColor: dropDownColor,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                value: wifi,
                                style: const TextStyle(color: textColorWhite),
                                underline: Container(
                                  height: 2,
                                  color: dividerColor,
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    wifi = newValue!;
                                  });
                                },
                                items: yesNoOptions
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Washing Machine: ",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: textColorWhite,
                              fontSize: 12,
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(color: dividerColor),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: DropdownButton<String>(
                                iconSize: 30,
                                dropdownColor: dropDownColor,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                value: washingMachine,
                                style: const TextStyle(color: textColorWhite),
                                underline: Container(
                                  height: 2,
                                  color: dividerColor,
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    washingMachine = newValue!;
                                  });
                                },
                                items: yesNoOptions
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
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Padding(
              padding: EdgeInsets.all(40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  nextButton(
                    navigateTo: Images(),
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
    seaterController.dispose();
    priceControlle.dispose();
    powerController.dispose();
    airController.dispose();
    coolerController.dispose();
    mattressController.dispose();
    wifiController.dispose();
    washingController.dispose();
    super.dispose();
  }
}
