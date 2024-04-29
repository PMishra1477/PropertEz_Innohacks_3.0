import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:propert_ez/utils/colors.dart';
import 'package:propert_ez/utils/images.dart';
import 'package:propert_ez/ui/components/MyButton2.dart';
import 'package:propert_ez/ui/components/MyButton3.dart';


class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 4,
          ),
          Container(
            width: 1000,
            height: 300,
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    home1,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    height: 500,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CRIPS Flat",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //Container(
          //  margin: EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0,bottom: 20.0),


          Container(
            margin: EdgeInsets.only(bottom: 14.5),
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color(0xFF23AEFF),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 7.5, vertical: 4.5),
                  child: Text(
                    'Rs. 11,999/ per month',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/Vector.png',
                  width: 27.0,
                  height: 24.0,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 29.0),
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 0.4),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/star.png',
                        width: 14.0,
                        height: 13.0,
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        '4.7',
                        style: TextStyle(
                          fontFamily: 'Commissioner',
                          fontSize: 12.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10.3),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/Vector.png',
                        width: 4.6,
                        height: 4.3,
                      ),
                      SizedBox(width: 5.3),
                      Text(
                        '2 BHK',
                        style: TextStyle(
                          fontFamily: 'Commissioner',
                          fontSize: 12.0,
                          color: Color(0xFF748C99),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10.9),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/Vector.png',
                        width: 4.6,
                        height: 4.3,
                      ),
                      SizedBox(width: 5.3),
                      Text(
                        '4 Seater',
                        style: TextStyle(
                          fontFamily: 'Commissioner',
                          fontSize: 12.0,
                          color: Color(0xFF748C99),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/Vector.png',
                        width: 4.6,
                        height: 4.3,
                      ),
                      SizedBox(width: 5.3),
                      Text(
                        'Full Furnished',
                        style: TextStyle(
                          fontFamily: 'Commissioner',
                          fontSize: 12.0,
                          color: Color(0xFF748C99),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20.0),
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Color(0xFF23AEFF),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0.0,
                        top: 0.0,
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.0),
                            color: Color(0xFF23AEFF),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 50.0,
                        top: 0.0,
                        child: Image.asset(
                         'assets/images/airConditioner.png',

                          width: 30.0,
                          height: 20.0,
                        ),
                      ),
                      Positioned(
                        left: 0.0,
                        bottom: 0.0,
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.0),
                            color: Color(0xFF23AEFF),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0.0,
                                top: 0.0,
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.0),
                                    color: Color(0xFF23AEFF),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 50.0,
                                top: 0.0,
                                child: Image.asset(
                                  'assets/images/airConditioner.png',
                                  width: 30.0,
                                  height: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Color(0xFF23AEFF),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/fan.png',
                      width: 24.0,
                      height: 26.0,
                    ),
                  ),
                ),
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Color(0xFF23AEFF),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0.0,
                        bottom: 0.0,
                        child: Image.asset(
                          'assets/images/plugin.png',
                          width: 24.0,
                          height: 24.0,
                        ),
                      ),
                      Positioned(
                        left: 50.0,
                        bottom: 0.0,
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.0),
                            color: Color(0xFF23AEFF),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/plugin.png',
                              width: 24.0,
                              height: 24.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 30.0),
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Color(0xFF23AEFF),
                  ),
                  child: Image.asset(
                    'assets/images/wifiSignal.png',
                    width: 30.0,
                    height: 30.0,
                  ),
                ),
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Color(0xFF23AEFF),
                  ),
                  child: Image.asset(
                    'assets/images/layers.png',
                    width: 30.0,
                    height: 30.0,
                  ),
                ),
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Color(0xFF23AEFF),
                  ),
                  child: Image.asset(
                    'assets/images/img.png',
                    width: 28.0,
                    height: 32.0,
                  ),
                ),
              ],
            ),
          ),



      Container(
            height: 100,
            child: SingleChildScrollView(
              child: const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'cbhcwbe\nwdwcjncincjn\ncbhcbuicucei\nwdbchbceicbei\neihbcehbcebc\nebchebcbe\nehcbebc',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          LoginbuttonWidget(),
          SizedBox(height: 20,),
          LoginbuttonWidget2()

        ],
      ),
    );
  }
}

